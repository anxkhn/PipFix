# Python Package Uninstaller Script

This batch script is designed to uninstall externally installed Python packages using pip. It iterates through the list of installed packages, obtained from `pip freeze`, and uninstalls each package that is not essential for package management (excluding "pip," "setuptools," and "wheel").

## Usage

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/anxkhn/PipFix.git
   cd PipFix
   ```

2. **Copy the Script:**
   - Open the `uninstall_packages.bat` file as administrator.
   - Copy the content of the provided batch script.

3. **Create a Batch File:**
   - Open a text editor like Notepad.
   - Paste the script into the text editor.
   - Save the file with a `.bat` extension (e.g., `uninstall_packages.bat`).

4. **Run the Script:**
   - Double-click the batch file to execute the script.
   - The script will uninstall all externally installed Python packages, excluding "pip," "setuptools," and "wheel."

## Explanation of the Script

Here's an explanation of each line of the batch script:

```batch
@echo off
```
- This command turns off the echoing of each command to the console. It makes the script cleaner by not displaying each command before it is executed.

```batch
for /F "delims=" %%i in ('pip freeze ^| findstr /V /C:"pip" /C:"setuptools" /C:"wheel"') do pip uninstall -y "%%i"
```
- This line iterates over the output of the command within the parentheses.
  - `pip freeze`: Lists all installed Python packages.
  - `findstr /V /C:"pip" /C:"setuptools" /C:"wheel"`: Filters out lines containing "pip," "setuptools," and "wheel."
  - `do pip uninstall -y "%%i"`: For each line that passes the filtering, it executes the `pip uninstall -y "%%i"` command, uninstalling the specified Python package ("-y" flag is used to confirm the uninstallation without prompting the user).

## Important Note

- Make sure to review the script before running it to ensure it meets your requirements.
- Running this script will uninstall all externally installed packages, except for essential packages needed for package management.

## Disclaimer

This script is provided as-is, and the user is responsible for its usage. Use it at your own risk.

## License

This script is released under the [GNU General Public License v3.0](LICENSE).

## Resources for Learning Batch Scripting

- [Windows Batch Scripting Introduction](https://www.tutorialspoint.com/batch_script/index.htm)
- [SS64 Batch Scripting Reference](https://ss64.com/nt/)
- [Batch Scripting on Microsoft Docs](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands)
