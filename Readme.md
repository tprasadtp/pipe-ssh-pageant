# pipe-ssh-pageant

A Pageant -> TCP bridge for use with Windows 10 OpenSSH Client, allowing for Pageant to be used as an ssh-ageant.

## How to use

1. Run Pageant (or compatible agent such as [gpg4win](https://www.gpg4win.org)).

2. Run `pipe-ssh-pageant.exe`. It will create named pipe `\\.\pipe\ssh-pageant`.

3. Set `SSH_AUTH_SOCK` environment variable:

```
set SSH_AUTH_SOCK=\\.\pipe\ssh-pageant
```

4. The SSH keys from Pageant should now be usable by `ssh` from Windows 10 OpenSSH Client!

## Credit

Thanks to [John Starks](https://github.com/jstarks/) for [npiperelay](https://github.com/jstarks/npiperelay/), showing a more secure way to create a stream between WSL and Linux.

Thanks to [Ben Pye](https://github.com/benpye) for original [wsl-ssh-pageant](https://github.com/benpye/wsl-ssh-pageant), showing how to convert ssh-agent messages to pageant format.