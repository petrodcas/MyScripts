param (
    [Parameter(Mandatory, ValueFromPipeline)][string]$image,
    [ValidateNotNullOrEmpty()][string]$outBaseName = $null,
    [ValidateSet(8, 16, 32, 48, 64, 96, 128, 256)][int]$iconSize = 48
)

process {
    $imagePath = [System.IO.FileInfo](Convert-Path $image)
    $outBaseName = $null -eq $outBaseName ? $imagePath.BaseName : $outBaseName
    $outImage = Join-Path $(Split-Path $imagePath.FullName -Parent) "$outBaseName.ico"
    ffmpeg.exe -i $image -vf scale=$iconSize`:$iconSize $outImage -loglevel 'error'
}

