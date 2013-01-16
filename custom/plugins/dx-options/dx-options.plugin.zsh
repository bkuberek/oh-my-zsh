###########################################
# Zsh options
# see http://linux.die.net/man/1/zshoptions
###########################################

# History
setopt INC_APPEND_HISTORY              # Append incrementally to history file, doesn't overwrite or wait for shell to exit
setopt SHARE_HISTORY                   # Imports new commands from history file, typed commands are appended to history
setopt EXTENDED_HISTORY                # Save beginning and ending timestamps to the history file
setopt HIST_IGNORE_ALL_DUPS            # If new command added to history duplicates older one, older command is removed
setopt HIST_SAVE_NO_DUPS               # When writing out the history file, older commands that duplicate newer ones are omitted
setopt HIST_FIND_NO_DUPS               # When searching history in line editor, don't display duplicates of previously found line, even if not contiguous

# Command correction
setopt CORRECT                         # Try to correct the spelling of commands
setopt CORRECT_ALL                     # Try to correct the spelling of all arguments in a line
setopt COMPLETE_IN_WORD                # Complete commands anywhere in the word
setopt REC_EXACT                       # In completion, recognize exact matches even if they are ambiguous

# Navigation
setopt AUTO_CD                         # If command issued can't be executed and is name of dir, cd to that dir
setopt AUTO_LIST                       # Automatically list choices on an ambiguous completion

# Jobs
setopt LONG_LIST_JOBS                  # List jobs in the long format by default


################################
# Environmental variables
################################

setopt ALL_EXPORT
TZ="America/New_York"
HISTFILE=$HOME/.zhistory
HISTSIZE=1000
SAVEHIST=1000
HOSTNAME="$(hostname)"
PAGER='less'
EDITOR='vim'
BROWSER='chrome'
LC_ALL='en_US.UTF-8'
LANG='en_US.UTF-8'
LC_CTYPE=C
unsetopt ALL_EXPORT
