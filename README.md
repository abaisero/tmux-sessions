# tmux-sessions
Easily define, create, and attach to named tmux sessions.

Tmux-sessions is a light wrapper around the tmux ``new``, ``source-file``, and ``attach-session`` commands to easily create and hook into sessions for common and frequent tasks.

## Installation

1. Create a ``$HOME/bin/`` folder and soft-link the **absolute** path of executable ``s``

```bash
mkdir -p $HOME/bin
ln -s </absolute/path/to/s> "$HOME/bin/"
```

2. To make the ``s`` command available in your terminal, add ``$HOME/bin`` to your ``PATH`` environment variable in your bashrc (or equivalent)

```bash
export PATH="$HOME/bin:$PATH"
```

3. To enable autocompletion, source the **absolute** path of script ``s-completion`` in your bashrc (or equivalent)

```bash
source </absolute/path/to/s-completion>
```

4. Set the ``TMUX_SESSIONS_PATH`` environment variable to a folder containing the session configs

```bash
export TMUX_SESSIONS_PATH=</absolute/path/to/configs>
```

## Session configs

The session configs are standard tmux configuration files&mdash;see the tmux command ``source-file``.

If you used the repository's default ``config/`` path, you will find ``sessions.conf`` which defines a session to edit all the available config files in vim.

## Usage

To create and/or attach to a named session, first create a ``<name>.conf`` configuration file in the appropriate directory, where ``<name>`` is the name of the session.
Then, run ``s <name>``.

- If the command is run when the session does not already exist, it will be created and the respective config file will be sourced.

- If the command is run when the session already exists, tmux will attach to it.

If you used the repository's default ``config/`` path, you can immediately run ``s sessions`` to create/hook into a session to edit all the available config files in vim.
