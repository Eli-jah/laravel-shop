<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/30
 * Time: 15:35
 */

use \Illuminate\Support\Facades\Route;

function test_helper()
{
    return 'OK';
}

function route_class()
{
    return str_replace('.', '-', Route::currentRouteName());
}
