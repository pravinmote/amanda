# Shell library containing functions and definitions common to amanda's
# shell scripts and wrappers.

# Include this file as follows:
#   prefix="/nokia/apps/easha/amanda"
#   exec_prefix="${prefix}"
#   amlibexecdir="/nokia/apps/easha/amanda/libexec/amanda"
#   . "${amlibexecdir}/amanda-sh-lib.sh"

####
# Configure variables

GREP="/bin/grep"
EGREP="/bin/grep -E"
GETTEXT="/usr/bin/gettext"
GNUPLOT="/usr/bin/gnuplot"
GNUTAR="/bin/tar"
STAR=""
SAMBA_CLIENT="/usr/bin/smbclient"
GZIP=""
SORT="/usr/bin/sort"
PERL="/usr/bin/perl"
AWK="mawk"

####
# Set up PATH for finding amanda executables

PATH="/nokia/apps/easha/amanda/sbin:/nokia/apps/easha/amanda/libexec/amanda:$PATH"

####
# Gettext

# use as follows:
#   echo `_ "%s: '%s' is not executable" "$myname" "$binpath"`
# NOTE: use a text editor with shell syntax hilighting to avoid
# quoting errors!

if test -n "$GETTEXT"; then
    _() {
	    fmt=`$GETTEXT -d amanda "$1"`
	    shift
	    printf "$fmt" "$@"
    }
else
    _() {
	printf "$@"
    }
fi
