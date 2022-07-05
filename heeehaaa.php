<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="post" action="upload.php" enctype="multipart/form-data">
        <input type="file" name="myFile" />
        <input type="submit" value="Upload">
    </form>
</body>
</html>


upload.php:
<?php

if (!isset($_FILES["myFile"])) {
    die("There is no file to upload.");
}

$filepath = $_FILES['myFile']['tmp_name'];
$fileSize = filesize($filepath);
$fileinfo = finfo_open(FILEINFO_MIME_TYPE);
$filetype = finfo_file($fileinfo, $filepath);

if ($fileSize === 0) {
    die("The file is empty.");
}

if ($fileSize > 3145728) {
    die("The file is too large");
}

$allowedTypes = [
   'image/png' => 'png',
   'image/jpeg' => 'jpg'
];

if (!in_array($filetype, array_keys($allowedTypes))) {
    die("File not allowed.");
}

$filename = basename($filepath);
$extension = $allowedTypes[$filetype];
$targetDirectory = __DIR__ . "/uploads";

$newFilepath = $targetDirectory . "/" . $filename . "." . $extension;

if (!copy($filepath, $newFilepath)) {
    die("Can't move file.");
}
unlink($filepath);

echo "File uploaded successfully :)";
