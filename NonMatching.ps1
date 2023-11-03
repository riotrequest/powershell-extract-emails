# The path to your CSV file
$csvPath = 'C:\path\to\your\file.csv'

# The output file where the non-matching email addresses will be saved
$outputFile = 'C:\path\to\non_matching_emails.txt'

# An array of the domains you want to exclude
$excludedDomains = @('gmail.com', 'outlook.com', 'hotmail.com', 'live.com', 'msn.com', 'yahoo.com', 'aol.com', 'icloud.com')

# Read the CSV file into an array, assuming the header of the email column is 'email'
$emails = Import-Csv -Path $csvPath | Select-Object -ExpandProperty email

# Filter the email addresses by excluding the specified domains
$filteredEmails = $emails | Where-Object {
    $emailDomain = $_.Split('@')[-1]
    $excludedDomains -notcontains $emailDomain
}

# Output the non-matching email addresses to the output file
$filteredEmails | Out-File -FilePath $outputFile

# Write to console the operation has completed
Write-Host "Non-matching emails extracted to $outputFile"
