# An Emerald installation for IN5570v20

[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](LICENSE.md)

The slightly long-winded way to use this Docker image is to go to the
directory where you have your Emerald code (and not much else!), and
run the following (Linux/macOS) command:

```
docker run \
  --interactive --tty --rm \
  --volume "$(pwd):/home/docker/src/" \
  --workdir "/home/docker/src/" \
  portoleks/in5570v20:latest
```

Windows users can use PowerShell, and must backticks (`````) instead
of backslash (``\``) above.

Debunking the given options:

  * `--interactive --tty` make your session interactive, instead of
    spawning the container in the background (background instantiation
    might be useful later to start many concurrent Emerald nodes)
  * `--rm` will make your session ephemeral; that is, anything that
    happens inside the container, outside otherwise mounted volumes
    (see below), will disappear as soon as you exit
  * `--volume` mounts the current working directory under
    `/home/docker/src`
  * `--workdir` makes sure that you spawn with `/home/docker/src` as
    the working directory

So what happens when you execute this command?

You land in a `bash` from where you can run `emc`, `ec`, and `ex`.

To gracefully exit from the Docker image, type `exit` or press
`Ctrl`+`D`.

Please remember that when you exit, everything done outside the
virtual `/home/docker/src/` directory will be lost. At the same time,
whatever happens in `/home/docker/src/` will be reflected in the
directory from where you ran the above command.

## Tools for working with the Docker image

That command was quite a mouthful!

This is why we provide some tools for working with the Docker image.

You will find them here: https://github.com/emerald/in5570v20
