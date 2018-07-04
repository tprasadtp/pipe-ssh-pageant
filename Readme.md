# pipe-ssh-pageant

A Pageant -> TCP bridge for use with Windows 10 OpenSSH Client, allowing for Pageant to be used as an ssh-ageant.

[![Build status](https://ci.appveyor.com/api/projects/status/ivesnx4t2ak5rx3n?svg=true)](https://ci.appveyor.com/project/tprasadtp/pipe-ssh-pageant)

## How to use

1. Run Pageant (or compatible agent such as [gpg4win](https://www.gpg4win.org)).

2. Build the Project or get the zip from Releases, Unpack it

3. You can unpack it anywhere and add it to your `PATH`

4. Run `pipe-ssh-pageant.exe`. It will create named pipe `\\.\pipe\ssh-pageant`.

5. Set `SSH_AUTH_SOCK` environment variable to use that pipe.
    ```
    set SSH_AUTH_SOCK=\\.\pipe\ssh-pageant
    ```

6. The SSH keys from Pageant should now be usable by `ssh` from Windows 10 OpenSSH Client!

7. For any reason if you need to re-initialize the named pipe, kill the executable and launch again. currently there is not command line client available.

## Known issues
- SSH Agent forwarding gets stuck and you have to kill the entire console.
- If gpg-agent or pageant is killed the exe may fail silently sometimes.

## Credit

Original Author [btolfa](https://github.com/btolfa/) of [This](https://github.com/btolfa/pipe-ssh-pageant)
Only changes I have made are to release self contained zip via github relases and edited exe to work without leaving an icon open in taskbar.

Thanks to [John Starks](https://github.com/jstarks/) for [npiperelay](https://github.com/jstarks/npiperelay/), showing a more secure way to create a stream between WSL and Linux.

Thanks to [Ben Pye](https://github.com/benpye) for original [wsl-ssh-pageant](https://github.com/benpye/wsl-ssh-pageant), showing how to convert ssh-agent messages to pageant format.
