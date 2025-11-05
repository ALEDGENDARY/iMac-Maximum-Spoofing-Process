# Apple Hardware Spoofer 🍎

A comprehensive batch script toolkit for spoofing hardware identifiers to appear as genuine Apple products. This tool modifies SMBIOS data to make Windows systems identify as various Apple hardware configurations.

## ⚠️ Disclaimer

**This software is for educational and testing purposes only. Use at your own risk.**
- May violate software licenses or terms of service
- Could cause system instability
- Might void warranties
- Use only on systems you own
- Always backup important data before use

## 🚀 Features

- **Complete Apple Identity Spoofing**: Transform system identifiers to Apple hardware
- **Multiple Apple Products Supported**: Mac Pro, iMac Pro configurations
- **Comprehensive Coverage**: Spoofs all major hardware components
- **Verification Tools**: Built-in detection scripts to verify spoofing success
- **Batch Automation**: Easy-to-use batch scripts for quick deployment

## 📋 Supported Components

| Component | SMBIOS Type | Examples |
|-----------|-------------|----------|
| System Information | Type 1 | MacPro7,1, iMacPro1,1 |
| Baseboard/Motherboard | Type 2 | Apple Logic Board |
| Chassis | Type 3 | Mac Pro/iMac Pro Enclosure |
| Processor | Type 4 | Xeon W-series processors |
| Memory | Type 6/17 | Apple DDR4 ECC Memory |
| Storage | Type 10 | Apple SSD |
| Additional Components | Various | T2 Chip, GPU, Network |

## 🛠️ Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/apple-hardware-spoofer.git
   cd apple-hardware-spoofer
   ```

2. **Requirements**:
   - Windows 10/11 (64-bit)
   - Administrator privileges
   - AMIDEEFIx64.efi tool in the same directory
   - UEFI/BIOS with write access

## 📁 File Structure

```
apple-hardware-spoofer/
│
├── 📄 Spoof-Apple-MacPro.bat      # Main spoofing script (Mac Pro)
├── 📄 Spoof-Apple-iMacPro.bat     # Alternative (iMac Pro)
├── 📄 Detect-Serials.bat          # Hardware detection tool
├── 📄 Verify-Spoof.bat            # Spoof verification script
├── 📄 Quick-Detect.bat            # Fast serial number detection
├── 📄 README.md                   # This file
└── 📄 AMIDEEFIx64.efi             # Required tool (not included)
```

## 🎯 Usage

### Basic Spoofing
1. Run Command Prompt as **Administrator**
2. Execute the spoofing script:
   ```cmd
   Spoof-Apple-MacPro.bat
   ```
3. Wait for completion message
4. **Restart your computer** for changes to take effect

### Verification
After spoofing and reboot, verify the changes:
```cmd
Detect-Serials.bat
```
or for detailed verification:
```cmd
Verify-Spoof.bat
```

## 🔧 Scripts Overview

### 🖥️ Spoof-Apple-MacPro.bat
Main spoofing script that applies Mac Pro (2019) configuration:
- System: MacPro7,1 with Apple Inc. manufacturer
- Baseboard: Apple Logic Board
- Chassis: Mac Pro 2019 enclosure
- Processor: Xeon W-3275M
- Memory: Apple DDR4 ECC
- Storage: Apple SSD

### 🖥️ Spoof-Apple-iMacPro.bat
Alternative script for iMac Pro configuration:
- System: iMacPro1,1
- Processor: Xeon W-2191B
- Optimized for all-in-one system appearance

### 🔍 Detect-Serials.bat
Comprehensive hardware detection showing:
- All serial numbers and identifiers
- Manufacturer information
- Component details
- Current system configuration

### ✅ Verify-Spoof.bat
Advanced verification with comparison:
- Compares detected values against expected spoofed data
- Shows checkmarks for successful spoofing
- Identifies components that failed to spoof

## 🎨 Customization

### Modifying Apple Configurations
Edit the batch files to change:
- **Product models** (MacPro7,1, iMacPro1,1, etc.)
- **Serial numbers** (use realistic Apple formats)
- **Manufacturer information**
- **Component specifications**

### Example Customization
```batch
:: Change to MacBook Pro configuration
AMIDEEFIx64.efi /SM "Apple Inc."
AMIDEEFIx64.efi /SP "MacBookPro16,1"
AMIDEEFIx64.efi /SS C02XYZ123ABC
```

## 🔒 Security Notes

- **AMIDEEFIx64.efi** is required but not included for legal reasons
- Some antivirus software may flag these tools as potentially unwanted
- Use in controlled environments only
- Consider virtual machines for testing

## 🐛 Troubleshooting

### Common Issues

1. **"Access Denied" errors**
   - Run as Administrator
   - Check UEFI/BIOS write permissions

2. **Changes not applying**
   - Ensure complete system restart
   - Verify AMIDEEFIx64.efi is in correct directory
   - Check system compatibility

3. **System instability**
   - Restore original BIOS settings
   - Use system restore points
   - Contact hardware manufacturer

### Verification Failed?
If verification shows components aren't spoofed:
1. Ensure script ran completely
2. Check Administrator privileges
3. Verify AMIDEEFIx64.efi compatibility
4. Some systems may restrict SMBIOS writing

## 📊 Detection Evasion

This tool helps with:
- Software license compliance testing
- Hardware identification testing
- Development and QA environments
- Privacy protection in certain scenarios

## 🤝 Contributing

Contributions welcome! Please:
1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Open a Pull Request

## 📄 License

This project is for educational purposes. Users are responsible for complying with local laws and software licenses.

## ⚡ Quick Start

```cmd
# 1. Run spoofing (as Admin)
Spoof-Apple-MacPro.bat

# 2. Restart computer
shutdown /r /t 0

# 3. Verify spoofing
Detect-Serials.bat
```

---

**Note**: Always test in non-production environments first. Maintain system backups and understand the risks before proceeding.
