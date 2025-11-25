$content = Get-Content "c:\Event_Booking\App.html" -Raw

$oldPattern = 'color: var\(--black\);\s+cursor: pointer;\s+}\s+\.header\.scrolled'

$newReplacement = 'color: var(--white);
            cursor: pointer;
            transition: color 0.4s ease;
        }

        .header.scrolled .logo {
            color: var(--black);
        }

        .header.scrolled'

$content = $content -replace $oldPattern, $newReplacement

Set-Content "c:\Event_Booking\App.html" -Value $content
Write-Host "Logo styling updated successfully!"
