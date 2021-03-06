# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# java
export JAVA_HOME=/opt/jdk-9.0.1
export OPENFIRE_HOME=/opt/openfire

# PATH && LD_LIBRARY_PATH
export PATH="$HOME/.local/bin:$HOME/bin:$HOME/scripts:$OPENFIRE_HOME/bin:$JAVA_HOME/bin:$HOME/go/bin:$HOME/opt/sonar-scanner-3.3.0.1492-linux/bin:$HOME/.cargo/bin:/usr/local/AstroDMx_Capture/bin/astrodmx_capture:$PATH"
export LD_LIBRARY_PATH="$HOME/scripts:$OPENFIRE_HOME/lib:/opt/smack/libs:$JAVA_HOME/lib:$LD_LIBRARY_PATH"
export CLASSPATH="/usr/share/java:/opt/jxmpp:/opt/smack/libs"

# ROOT
export ROOT_DIR="$HOME/opt/root"
export PATH="$ROOT_DIR/bin:$PATH"
export LD_LIBRARY_PATH="$ROOT_DIR/lib:$ROOT_DIR/include:$PATH"

# TERMINAL
export TERMINAL="gnome-terminal"
export VISUAL=nvim
export EDITOR="$VISUAL"
