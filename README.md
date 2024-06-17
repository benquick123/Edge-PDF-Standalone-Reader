# Use Edge PDF Reader as a Standalone App

A simple executable file that you can set as a default PDF document opener. It opens your PDF documents in Microsoft Edge PDF viewer, but without the browser controls you would find if you just set the browser as your default app. This probably also works with Google Chrome just by changing the executable location and recompiling to `.exe`.

![Screenshot](https://raw.githubusercontent.com/benquick123/Edge-PDF-Standalone-Reader/main/screenshot.png "Screenshot")

The script might seem overly complicated for the purpose, but the utilized way of creating a shortcut to the PDF file, and naming it in a specific way offers a benefit of having your open PDFs grouped in the taskbar. Additionally, the compilation of `.bat` to `.exe` allows using the `shortcut.exe` tool for shortcut creation, and embedding the icon displayed in the taskbar when the user opens a PDF file.

## To use

1. Download the .exe file and place it next to the Microsoft Edge executable (usually found in `C:/Program Files/Microsoft/Edge/Application/`). 
2. Change the default app by going to Settings >> Apps >> Default Apps, and search for `.pdf` extension.

## To reproduce

The `.exe` file is produced using _BAT to EXE Converter_ from [here](https://bat-to-exe-converter-x64.en.softonic.com/). In order to hide the command prompt when opening PDF files, make sure you select "Invisible" under Exe-Format. Additionally, you can select an icon; `.ico` file from this repository is used for a precompiled executable.

The enclosed `shortcut.exe` is from some suite of programs I can't find right now and is used to create a shortcut in the %AppData% folder. To reproduce, make sure you append it in the "Embed" tab in the aforementioned converter.

## Known issues

If you happen to open files with filenames containing non-ASCII characters, the application won't open them (see [this issue](https://github.com/benquick123/Edge-PDF-Standalone-Reader/issues/1#issue-1501492665)). Current workaround is to enable UTF-8 in Region settings like described in the first part of [this answer](https://stackoverflow.com/a/57134096/8094700).

Apparently, the compiled `.exe` gets flagged by some antivirus software, which is why there is an option to reproduce the executable file yourself.

## Contribute

If you think you could add more functionality to this project, I'll be happy to review pull requests. You can also submit your ideas by opening a new issue.
