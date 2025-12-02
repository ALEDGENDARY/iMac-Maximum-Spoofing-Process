# Input/Output files
$in  = "Startup.nsh"
$out = "Startup_randomized.nsh"

if (-not (Test-Path $in)) {
    Write-Host "File not found: $in"
    exit
}

# List of commands to randomize values for
$commands = @(
    "/BS", "/SM", "/SP", "/SV", "/SS", "/SF",
    "/BT", "/BLC", "/CM", "/CV", "/CS", "/CA"
)

# Function to generate a random uppercase alphanumeric string
function New-RandomString($Length) {
    $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    -join (1..$Length | ForEach-Object { $chars[(Get-Random -Max $chars.Length)] })
}

# Process file
$lines = Get-Content $in

$newLines = foreach ($line in $lines) {

    $modified = $line

    foreach ($cmd in $commands) {
        # Regex: find "/XX <VALUE>"
        if ($modified -match "$cmd\s+([A-Z0-9]+)") {

            $original = $matches[1]

            # Don't modify AUTO
            if ($original -eq "AUTO") { continue }

            $len = $original.Length
            $rand = New-RandomString $len

            # Replace ONLY the value, keep the command
            $modified = $modified -replace "$cmd\s+$original", "$cmd $rand"
        }
    }

    $modified
}

$newLines | Set-Content $out -Encoding ASCII

Write-Host "Done. Output saved to $out"
