<?php

/**
 * Test đầu vào ngày 03/11/2023
 * Author: HieuTH
 */
/**
 * NukeViet Content Management System
 * @version 4.x
 * @author HieuTH - Localhost - testing
 * @copyright (C) 2009-2021 VINADES.,JSC. All rights reserved
 * @license GNU/GPL version 2 or any later version
 * @see https://github.com/nukeviet The NukeViet CMS GitHub project
 */
if (!defined('NV_IS_FILE_ADMIN')) {
    exit('Stop!!!');
}

$xtpl = new XTemplate('statistics.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
$numberOfPost = $lang_module['number_of_post'];
echo "<script>";
echo "var numberOfPost = '" . $numberOfPost . "';";
echo "</script>";
$page_title = $lang_module['statistics'];

$xtpl->parse('main');
$contents = $xtpl->text('main');
include NV_ROOTDIR . '/includes/header.php';
echo nv_admin_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
