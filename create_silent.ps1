$base64 = "UklGRigAAABXQVZFZm10IBAAAAABAAEARKwAAIhYAQACABAAZGF0YQQAAAAAAA=="
$bytes = [System.Convert]::FromBase64String($base64)
[System.IO.File]::WriteAllBytes("c:\Users\2008q\Desktop\Purelyd\silent_keepalive.mp3", $bytes)
