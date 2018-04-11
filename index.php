<?php
shell_exec('bash /gitclone.sh');
$files = glob('/admin/*.{sh}', GLOB_BRACE);
foreach($files as $file) {
 $output = shell_exec("bash $file");
echo "<pre>$output</pre>";
}
?>

