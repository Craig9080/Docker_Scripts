<?php
chdir('/');
$input = system('bash ./gitclone.sh');
chdir('var/www/html');
$files = glob('/admin/*.{sh}', GLOB_BRACE);
foreach($files as $file) {
 $output = shell_exec("bash $file");
echo "<pre>$output</pre>";
}
?>

