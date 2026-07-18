# Noctis IV / Noctis IV Plus - Windows x64 Launcher

This repo aims to make running [Noctis IV](https://80.style/#/hsp/noctis_iv) / [Noctis IV Plus](https://github.com/jorisvddonk/Noctis-IV-Plus) easier and more performant on modern Windows operating systems. While it is aimed at Noctis IV Plus, these instructions will also work for the Original Noctis IV.

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

The launcher first tries to use the installed version. If it can't find it, it will look for the portable version. If that fails, it will give you an error message and fail to launch.

### Installed Version
Visit the [DOSBox-X latest release page](https://github.com/joncampbell123/dosbox-x/releases/latest) and download the file `dosbox-x-windows-[VERSION]-setup.exe`. Run the installer, keeping the default install location of `C:\DOSBox-X\`.

No further setup is needed. Proceed to [Step 3](#step-3-launch).

### Portable Version
Visit the [DOSBox-X latest release page](https://github.com/joncampbell123/dosbox-x/releases/latest) and download the file `dosbox-x-vsbuild-win64-[VERSION]-portable.zip`. Extract the folder named `bin` to the directory where you cloned this repository. The following folders should now be present:
- `bin`
- `data`
- `gallery`
- `manual`
- `modules`
- `movies`
- `source`

No further setup is needed. Proceed to [Step 3](#step-3-launch).

## Step 3: Launch!
Run `Launch.bat`.
