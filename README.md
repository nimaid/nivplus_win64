## Step 1: Download Noctis IV Plus
First, visit the [Noctis IV Plus latest release page](https://github.com/jorisvddonk/Noctis-IV-Plus/releases/latest) and download the file `nivplus-[VERSION].zip`. Extract all folders to the directory where you cloned this repository. The following folders should now be present:
- `data`
- `gallery`
- `manual`
- `modules`
- `movies`
- `source`

## Step 2: Prepare DOSBox-X
Next you will need to get [DOSBox-X](https://github.com/joncampbell123/dosbox-x). You have two options: installing it (preferred) or running the portable version (advanced).

### Installed Version
Visit the [DOSBox-X latest release page](https://github.com/joncampbell123/dosbox-x/releases/latest) and download the file `dosbox-x-windows-[VERSION]-setup.exe `. Run the installer, keeping the default install location of `C:\DOSBox-X\`.

No further setup is needed. Proceed to [Step 3](#step-3-launch).

### Portable Version
Visit the [DOSBox-X latest release page](https://github.com/joncampbell123/dosbox-x/releases/latest) and download the file `dosbox-x-vsbuild-win64-[VERSION]-portable.zip`. Extract the folder named `bin` to the directory where you cloned this repository.

The `Launch.bat` script is configured by default to use the installed version of DOSBox-X. You will need to modify it to use the portable version instead.

Open `Launch.bat` with a text editor. First, delete the line that says `set PORTABLE=0`. Change it to `set PORTABLE=1`. Now you are ready to proceed to to [Step 3](#step-3-launch)!

## Step 3: Launch!
Run `Launch.bat`.
