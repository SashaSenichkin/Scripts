$stream = [IO.File]::OpenWrite('.\.login_info')
echo $stream.Length
$stream.SetLength($stream.Length - 7)
$stream.Close()
$stream.Dispose()