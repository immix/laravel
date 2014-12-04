<?php

/*
 * Laravel takes a fairly long amount of time to boot. This is very sad.
 * To help speed up the serving of media files or any sort of data which
 * is given etag headers, we can skip booting up laravel and simply immediately
 * return the 304 response to the browser.
 * 
 * This is a sloppy way to cache, since it assumes that it is ALWAYS ok to 
 * reserve the cached asset (i.e. a cache validation is not run).
 */

if (isset($_SERVER['HTTP_IF_NONE_MATCH'])) {
    http_response_code(304);
    header('Expires: ' . gmdate('D, d M Y H:i:s ', time() + 60 * 60 * 24 * 30) . 'GMT');
    header('Cache-Control: public, max-age=999999, must-revalidate, post-check=0, pre-check=0');
    exit;
}
