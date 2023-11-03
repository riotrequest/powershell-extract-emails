# The path to your CSV file
$csvPath = 'C:\path\to\your\file.csv'

# The output file where the filtered email addresses will be saved
$outputFile = 'C:\path\to\filtered_emails.txt'

# An array of the domains you want to filter by
$domains = @('gmail.com', 'outlook.com', 'hotmail.com', 'live.com', 'msn.com', 'yahoo.com', 'aol.com', 'icloud.com')

# Read the CSV file into an array, assuming the header of the email column is 'email'
$emails = Import-Csv -Path $csvPath | Select-Object -ExpandProperty email

# Filter the email addresses by the specified domains
$filteredEmails = $emails | Where-Object {
    $emailDomain = $_.Split('@')[-1]
    $domains -contains $emailDomain
}

# Output the filtered email addresses to the output file
$filteredEmails | Out-File -FilePath $outputFile

# Write to console the operation has completed
Write-Host "Emails extracted to $outputFile"
