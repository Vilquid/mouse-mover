$scriptPath = $MyInvocation.MyCommand.Path
powershell.exe -WindowStyle Hidden -File $scriptPath

Add-Type -AssemblyName System.Windows.Forms

while ($true)
{
    $currentPosition = [System.Windows.Forms.Cursor]::Position

    $newX = $currentPosition.X + 1
    $newY = $currentPosition.Y + 1
    $newPosition = New-Object System.Drawing.Point($newX, $newY)

    [System.Windows.Forms.Cursor]::Position = $newPosition

    Start-Sleep -Seconds 60

    $currentPosition = [System.Windows.Forms.Cursor]::Position

    $newX = $currentPosition.X - 1
    $newY = $currentPosition.Y - 1
    $newPosition = New-Object System.Drawing.Point($newX, $newY)

    [System.Windows.Forms.Cursor]::Position = $newPosition

    Start-Sleep -Seconds 60
}
