# Get the current directory
$CurrentDir = Get-Location

# Get all zip files in the current directory
$ZipFiles = Get-ChildItem -Path $CurrentDir -Filter *.zip

# Iterate through each zip file and unzip it
foreach ($ZipFile in $ZipFiles) {
    # Define the destination folder
    $DestinationFolder = [System.IO.Path]::Combine($CurrentDir, [System.IO.Path]::GetFileNameWithoutExtension($ZipFile.Name))
    
    # Create the destination folder if it doesn't exist
    if (-not (Test-Path -Path $DestinationFolder)) {
        New-Item -ItemType Directory -Path $DestinationFolder
    }

    # Unzip the file
    Write-Host "Unzipping $($ZipFile.FullName) to $DestinationFolder"
    Expand-Archive -Path $ZipFile.FullName -DestinationPath $DestinationFolder
}

Write-Host "All zip files have been unzipped."
