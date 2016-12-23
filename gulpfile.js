var gulp        = require('gulp');
var browserSync = require('browser-sync').create();
var cssmin      = require('gulp-cssmin');
var sass        = require('gulp-sass');
var sourcemaps  = require('gulp-sourcemaps');
var concat      = require('gulp-concat');
var notify      = require("gulp-notify");
var changed     = require('gulp-changed');
var imagemin    = require('gulp-imagemin');
var jshint      = require('gulp-jshint');
var reload      = browserSync.reload;

function catchSassError(err) {
    return notify().write(err);
}


gulp.task('lint', function() {
  return gulp.src('./assets/js/**/*.js')
    .pipe(jshint())
    .pipe(jshint.reporter('default'))
    .pipe(gulp.dest('./build/js'))
    .pipe(reload({stream:true}));
});

// minify new images
gulp.task('imagemin', function() {
  var imgSrc = './assets/images/**/*',
      imgDst = './build/images';

  gulp.src(imgSrc)
    .pipe(changed(imgDst))
    .pipe(imagemin())
    .pipe(gulp.dest(imgDst))
    .pipe(reload({stream:true}));
});


// Html task
gulp.task('html', function(){
	gulp.src('application/views/**/*.php')
	.pipe(reload({stream:true}));
});

gulp.task('sass', function () {
  return gulp.src('./assets/sass/**/*.scss')
    .pipe(concat('style.bundle.css'))
    .pipe(sourcemaps.init())
        .pipe(sass().on('error', catchSassError))
        .pipe(cssmin())
        .pipe(sourcemaps.write())
    .pipe(gulp.dest('./build/css'))
    .pipe(reload({stream:true}));
});

// Static Server + watching scss/html files
gulp.task('serve', ['sass'], function() {
    browserSync.init({
        proxy : 'http://peliculas.lev',
    });
});
gulp.task('watch', function () {
  gulp.watch('./assets/sass/**/*.scss', ['sass']).on('change', browserSync.reload);
  gulp.watch('./application/views/**/*.php', ['html']).on('change', browserSync.reload);
  gulp.watch('./assets/images/**/*', ['imagemin']).on('change', browserSync.reload);
  gulp.watch('./assets/js/**/*.js', ['lint']).on('change', browserSync.reload);
});

gulp.task('default', ['serve','sass', 'html', 'watch','imagemin','lint']);