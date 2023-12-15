
<?php

// * Loads theme configuration so it can be used in Smarty templates.

// To include these variables in a .tpl file, add the following line to the template file:
// {include file="neuhub-conf-tpl.php"}
// Use double braces {{ }} instead of { } (If I use them here in the comment, it crashes the site.)

// Set your variables in:
// view/theme/neuhub-tab/config/neuhub-config-default.php

// ! Do not define your variables in this file. They will be overwritten when you update the theme.

?>

<?php
// Include default configuration file, if it exists.
// ! Do not put your configuration settings in this file. It will be overwritten when you update Neuhub.
$filename = 'view/theme/neuhub-tab/config/neuhub-config-default.php';
if (file_exists($filename)) {
    include_once('view/theme/neuhub-tab/config/neuhub-config-default.php');
} else {
    //// echo "The file $filename does not exist";
}
?>

<?php
// Include your configuration file, if it exists.
// ! Overrides values in default configuration file.
$filename = 'view/theme/neuhub-tab/config/neuhub-config.php';
if (file_exists($filename)) {
    include_once('view/theme/neuhub-tab/config/neuhub-config.php');
} else {
    //// echo "The file $filename does not exist";
}
?>


<p>
    <br>
{{assign var="HomeURLName" value="<?php echo $HomeURLName; ?>"}}
{{assign var="HomeURL" value="/example"}}
<?php
echo $HomeURL;
?>
fdshfsdlhfsdl
