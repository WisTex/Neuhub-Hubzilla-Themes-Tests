<?php

use Zotlabs\Extend\Hook;

function skeleton_theme_admin_enable() {
    Hook::register('app_render_manipulate_photo', 'view/theme/neuhub-tab/php/config.php', 'skeleton_app_render_manipulate_photo');
}

function skeleton_theme_admin_disable() {
    Hook::unregister('app_render_manipulate_photo', 'view/theme/neuhub-tab/php/config.php', 'skeleton_app_render_manipulate_photo');
}

function skeleton_app_render_manipulate_photo(&$arr) {
    if (strtolower(App::$theme_info['name']) !== 'Neuhub Tab') {
        return;
    }

    switch ($arr['name']) {
        case 'Files':
            $arr['photo'] = 'icon:folder-open';
            break;
    }
    
    switch ($arr['name']) {
        case 'Stream':
            $arr['photo'] = 'icon:folder-open';
            break;
    }
    
}

?>