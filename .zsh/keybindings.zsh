bindkey -e                                              # Use emacs keybindings
bindkey '\ew' kill-region                               # [Esc-w] - Kill from the cursor to the mark
bindkey -s '\el' "ls\n"                                 # [Esc-l] - run command: ls
bindkey -s '\e.' "..\n"                                 # [Esc-.] - run command: cd ..
bindkey '^R' history-incremental-search-backward        # [Ctrl-r] - Search backward incrementally for a specified string.
bindkey '^S' history-incremental-search-forward         # [Ctrl-s] - Search forward incrementally for a specified string.
bindkey '^P' history-search-backward                    # [Ctrl-p] - Previous command.
bindkey '^N' history-search-forward                     # [Ctrl-n] - Next command.
bindkey "^[[5~" up-line-or-history                      # [Fn-UpArrow = Page Up]
bindkey "^[[6~" down-line-or-history                    # [Fn-DownArrow = Page Down]

# Make search up and down work, so partially type and hit up/down to find relevant stuff
bindkey '^[[A' up-line-or-search                        # [Ctrl-UpArrow]
bindkey '^[[B' down-line-or-search                      # [Ctrl-DownArrow]

bindkey "^[[H" beginning-of-line
bindkey "^[[1~" beginning-of-line                       # [Fn-LeftArrow] - home on OSX
bindkey "^[OH" beginning-of-line                        # home on Linux

bindkey "^[[F"  end-of-line
bindkey "^[[4~" end-of-line                             # [Fn-RightArrow] - end on OSX
bindkey "^[OF" end-of-line                              # end on Linux
bindkey ' ' magic-space                                 # Also do history expansion on space

bindkey "^[[1;5C" forward-word                          # [Ctrl-RightArrow] - move forward one word (on linux)
bindkey "^[[1;5D" backward-word                         # [Ctrl-LeftArrow] - move backward one word (on linux)

bindkey '^[[Z' reverse-menu-complete

# Make the delete key (or Fn + Delete on the Mac) work instead of outputting a ~
bindkey '^?' backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char

# consider emacs keybindings:

#bindkey -e  ## emacs key bindings
#
#bindkey '^[[A' up-line-or-search
#bindkey '^[[B' down-line-or-search
#bindkey '^[^[[C' emacs-forward-word
#bindkey '^[^[[D' emacs-backward-word
#
#bindkey -s '^X^Z' '%-^M'
#bindkey '^[e' expand-cmd-path
#bindkey '^[^I' reverse-menu-complete
#bindkey '^X^N' accept-and-infer-next-history
#bindkey '^W' kill-region
#bindkey '^I' complete-word
## Fix weird sequence that rxvt produces
#bindkey -s '^[[Z' '\t'
#
