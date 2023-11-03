# Email Domain Filter Scripts

This repository contains two PowerShell scripts that allow you to filter email addresses from a CSV file based on the domain. These scripts are perfect for managing large lists of email addresses by segregating them according to specific domain criteria.

## 📜 Scripts

- `ExtractSpecificDomains.ps1`: Extracts email addresses that match a given list of domains.
- `ExtractExcludingDomains.ps1`: Extracts email addresses that do not match a given list of domains.

## 🚀 Usage

### Prerequisites
Ensure your execution policy permits the execution of scripts. You might need to run the following command in an elevated PowerShell prompt:

Set-ExecutionPolicy RemoteSigned

### Steps to Run Scripts

1. Clone or download this repository to your local machine.
2. Modify the script variables `$csvPath` and `$outputFile` within each script to match the path to your CSV file and the desired path for the output file.
3. Open PowerShell, navigate to the script's directory, and run the script using:

```powershell
.\ScriptName.ps1
Replace `ScriptName.ps1` with the actual script name you wish to run.

## 📋 Requirements

- PowerShell 5.1 or later
- Input CSV file with an 'email' column

## 🤝 Contributing

Contributions are what make the open-source community such a fantastic place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.
