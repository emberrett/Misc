A short Powershell script that removes any desktop shortcuts for the currently logged-in and the public user.

To have this run at logon and/or unlock:
1. Clone repo.
2. Add a task in Task Scheduler:
    1. Triggers:
        * At logon
        * On workstation unlock
    2. Actions
        * Start a program
            * Program/script: `C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe`
            * Add arguments: `-File "C:\<directory_of_the_repo>\remove_shortcuts.ps1"`
    3. General
        * Make sure `Run with highest privileges` is checked
3. Save.
        