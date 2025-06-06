# AJOM's SB->SBL Syntax Converter
 Convert Source Codes from Legacy SB .cs Syntax into SBL .cs Syntax

![usagedemo](https://github.com/user-attachments/assets/1806fccf-76d2-4eb0-883e-c2c740f44a32)

![switchviewmodedemo](https://github.com/user-attachments/assets/23d04e40-20da-4d7f-867e-1cbe59bb0b1c)

<br>

## Features:

### General User Interface
* _Drag and Drop File_ Support
* Configurable Settings
* Detailed Operation Warnings

How to Use?

1. Open ***Launcher.exe*** then configure the **Settings** Panel:
    * Specify the Sanny Builder directory
    * Specify all constants that your target source code uses that aren't built-in constants of Sanny Builder. Append them at the end of the ***Constants/Enums Files*** field
    * Specify all keywords that your target source code uses that aren't built-in keywords of Sanny Builder. Append them at the end of the ***Keywords Files*** field
2. Convert a cleo script from Legacy SB to SBL at the **General** Panel:
    1. Set **Use Class** to your preference:
        * Check if you prefer class names for each command.
        * Uncheck if you prefer keywords for each command.
    2. Specify the source code you wish to convert by either:
        * Click **Browse Source Code**
        * Drag and Drop the Source code to the bottom text box
    3. Check for warnings (right side text box)
    4. Check the converted source code (bottom text box)
    5. Click **Save Converted Source Code** 



<br>

### Command Line Usage Support

Syntax:
```cmd
"<RootDir>/launcher.exe" "<InputSourceCodePath>" "<SannyBuilderDirectory>" <GameAbbreviation> <UseClass?> "<OutputSourceCodePath>"
```

Example:
```cmd
# Convert gta 3 cleo source code named myscript.txt into SBL, preferring class names over keywords. Save it as convertedscript.txt
"C:\SB-SBL Syntax Converter\launcher.exe" "C:\somefolder\myscript.txt" "C:\Sanny Builder 4" gta3 1 "C:\otherfolder\convertedscript.txt"
```

<br>

Alternative 1:
```cmd
"<RootDir>/launcher.exe" "<InputSourceCodePath>" "<SannyBuilderDirectory>" <gta3/sa/vc> <UseClass?>
```

Example:
```cmd
# Convert gta vice city cleo source code named myscript.txt into SBL, preferring keywords over class names. Save it as myscript_SBL.txt
"C:\SB-SBL Syntax Converter\launcher.exe" "C:\somefolder\myscript.txt" "C:\Sanny Builder 4" vc 0
```

the OutputSourceCodePath is the same as InputSourceCodePath, but with an additional non-overwriting suffix "***_SBL\<UniqueNumber\>***"

<br>

Alternative 2:
```cmd
"<RootDir>/launcher.exe" "<InputSourceCodePath>" "<SannyBuilderDirectory>" <gta3/sa/vc>
```

Example:
```cmd
# Convert gta san andreas cleo source code named myscript.txt into SBL, using current UseClass settings configured in GUI. Save it as myscript_SBL.txt
"C:\SB-SBL Syntax Converter\launcher.exe" "C:\somefolder\myscript.txt" "C:\Sanny Builder 4" sa
```

UseClass field will use the settings.ini value, while the OutputSourceCodePath is the same as InputSourceCodePath, but with an additional non-overwriting suffix "***_SBL\<UniqueNumber\>***"

<br>

## Game Abbreviations:
* `gta3` - GTA 3
* `sa` - GTA San Andreas
* `vc` - GTA Vice City
* Add new fields by Configuring `Settings.ini -> General -> Games`

<br>

## GUI vs Command Line
The GUI will warn you if problems have been encountered during the conversion process.

The command line on the other hand doesn't support stdout. Meaning, you will not be able to tell whether the conversion is successful, or whether it encountered problems along the way.

<br>

## Technical Support:
Visit the [Issues page](https://github.com/Aldrin-John-Olaer-Manalansan/SB-SBL_Syntax_Converter/issues) to check for solutions or ask for help to solve your problem with this tool. 
