# TMUX Detached Session Detection

In order to deal with the powerline fonts you must have bash version 4.2 or
greater.

On Mac:

```
# brew install bash
```

Once bash is installed you must add `/usr/local/bin/bash` to `/etc/shells` then
execute the following command:

```
# chsh -s /usr/local/bin/bash
```

Once this is done you can link the `tdsd.sh` command into `/usr/local/bin`:

```
# ln -s tdsd.sh /usr/local/bin/tdsd.sh
```

And add the following to your `.bash_profile`, `.bashrc`, or `.profile`:

```
if [ -f /usr/local/bin/tdsd.sh ]; then
  . /usr/local/bin/tdsd.sh
fi
```

Whenever you start a shell it will now allert you if there are detached
sessions.
