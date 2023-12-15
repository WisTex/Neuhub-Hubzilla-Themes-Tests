<?php

/*
 *
 * This file replaces core theme_init.php hence we require it and
 * add our own theme related stuff. In this case fork-awesome and bootstrap
 * so that the theme will be usable somehow. Most core templates use bootstrap classes.
 *
 */

require_once('view/php/theme_init.php');

head_add_css('/library/fork-awesome/css/fork-awesome.min.css');
head_add_css('/vendor/twbs/bootstrap/dist/css/bootstrap.min.css');

head_add_js('/vendor/twbs/bootstrap/dist/js/bootstrap.bundle.min.js');
