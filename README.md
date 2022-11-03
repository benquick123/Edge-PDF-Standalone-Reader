# Use Edge PDF Reader as a Standalone App

A simple executable file that you can set as a default PDF document opener. It opens your PDF documents in Microsoft Edge PDF viewer, but without the browser controls you would find if you just set the browser as your default app. This probably also works with Google Chrome just by changing the executable location and recompiling to `.exe`.

## To use

1. Download the .exe file and place it next to the Microsoft Edge executable (usually found in `C:/Program Files/Microsoft/Edge/Application/`). 
2. Change the default app by going to Settings >> Apps >> Default Apps, and search for `.pdf` extension.

## To reproduce

The `.exe` file is produced using _BAT to EXE Converter_ from [here](https://bat-to-exe-converter-x64.en.softonic.com/). In order to hide the command prompt when opening PDF files, make sure you select "Invisible" under Exe-Format. Additionally, you can select an icon; `.ico` file from this repository is used for a precompiled executable.

## Contribute

If you think you could add more functionality to this project, I'll be happy to review pull requests. You can also submit your ideas by opening a new issue.

## Additional reference

Maybe [this](https://stackoverflow.com/questions/65867046/when-running-a-bat-file-with-start-process) should be checked out to resolve open pdf documents not being grouped together in the taskbar.
