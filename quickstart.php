<?php
$post = array(
    "grant_type" => "authorization_code", 
    "code" => "4/NyYd8YV-jfDbty5hLCbqFbtedxe46jA8zrrJ2J5CkVE", 
    "client_id" => "317282687644-a589aa84g5s6995ar705tv5iq9o7hmdc.apps.googleusercontent.com", 
    "client_secret" => "O0nYsq1AgLAaxMTLb8qZ9Urp", 
    "redirect_uri" => "http://allanimes.net/quickstart.php"
);

$postText = http_build_query($post);

$url = "https://accounts.google.com/o/oauth2/token";

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, $postText); 
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);

$result = curl_exec($ch);
var_dump($result);
