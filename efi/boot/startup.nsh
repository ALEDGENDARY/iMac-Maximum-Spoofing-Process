@echo off
echo -on
goto SPOOFSERIAL

:SPOOFSERIAL
:: System Information (Type 1) - Apple iMac Pro
AMIDEEFIx64.efi /SM "Apple Inc."
AMIDEEFIx64.efi /SP "iMacPro1,1"
AMIDEEFIx64.efi /SV "IMP11.88Z.0000.A00.1803051322"
AMIDEEFIx64.efi /SS H3J6K9M2N5P8R1T4V7
AMIDEEFIx64.efi /SKU "MQ2Y2LL/A"
AMIDEEFIx64.efi /SF "iMac Pro"
AMIDEEFIx64.efi /SU AUTO
goto SPOOFBASEBOARD

:SPOOFBASEBOARD
:: Baseboard (Motherboard) Information
AMIDEEFIx64.efi /BM "Apple Inc."
AMIDEEFIx64.efi /BP "iMac Pro Logic Board"
AMIDEEFIx64.efi /BV "Rev B"
AMIDEEFIx64.efi /BS K8L1N4P7R0T3V6Y9X2
AMIDEEFIx64.efi /BT "APPL-BOARD-IMACPRO"
AMIDEEFIx64.efi /BLC "Main Board"
goto SPOOFCHASSIS

:SPOOFCHASSIS
:: Chassis Information
AMIDEEFIx64.efi /CM "Apple Inc."
AMIDEEFIx64.efi /CV "iMac Pro 2017"
AMIDEEFIx64.efi /CS C5V8B2N9M6K1J4H7G0
AMIDEEFIx64.efi /CA "APPL-CHS-IMP11"
goto SPOOFCPU

:SPOOFCPU
:: Processor Information
AMIDEEFIx64.efi /PM "Intel Corporation"
AMIDEEFIx64.efi /PN "Xeon W-2191B"
AMIDEEFIx64.efi /PV "Genuine Intel"
AMIDEEFIx64.efi /PS P7L2S5D8F1G3J6K9M4
AMIDEEFIx64.efi /PA "APPL-CPU-W2191B"
goto SPOOFMEMORY

:SPOOFMEMORY
:: Memory Device Information
AMIDEEFIx64.efi /MM "Apple Inc."
AMIDEEFIx64.efi /MP "DDR4 ECC 2666MHz"
AMIDEEFIx64.efi /MS M4Q7T1Y5U8I2O6P9R3
AMIDEEFIx64.efi /MA "APPL-MEM-64GB-2666"
goto SPOOFDISK

:SPOOFDISK
:: Storage Device Information
AMIDEEFIx64.efi /SDM "Apple Inc."
AMIDEEFIx64.efi /SDP "APPLE SSD SM1024L"
AMIDEEFIx64.efi /SDS S3D6G9J2N5M8P1Q4T7
goto EXIT

:EXIT
echo iMac Pro spoofing complete!
echo Apple iMac Pro configuration applied!
pause
exit

:END