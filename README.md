# An Emerald installation for IN5570v20

[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](LICENSE.md)

The recommended way to use this Docker image is to go to the directory
where you have your Emerald code (and not much else!), and run the
following command:

```
docker run \
  --interactive --tty --rm \
  --volume "$(pwd):/home/docker/src/" \
  --workdir "/home/docker/src/" \
  portoleks/in5570v19:latest
```

You land in a `bash` from where you can run `emc`, `ec`, and `ex`. To
gracefully exit from the Docker image, type `exit` or press
`Ctrl`+`D`.

Please remember that when you exit, everything done outside the
virtual `/home/docker/src/` directory will be lost. At the same time,
whatever happens in `/home/docker/src/` will be reflected in the
directory from where you ran the above command.
