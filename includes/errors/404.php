<?php
require_once __DIR__ . 'core/init.php';

if(Session::exists('home')) {
    echo Session::flash('home');
} else {
    echo 'something wrong';
}