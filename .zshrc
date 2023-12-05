# Set up the prompt
For Each olMail In olItems
    ' Filter for Mail Items only
    If olMail.Class = 43 Then ' 43 represents Mail Items
        ' Add data to Excel table
        ws.Cells(rowCount, 1).Value = olMail.ReceivedTime
        ws.Cells(rowCount, 2).Value = olMail.Subject
        If ws.Name = "INBOX" Then
            ws.Cells(rowCount, 4).Value = olMail.SenderName
            ws.Cells(rowCount, 5).Value = olMail.Sender
        End If
        If olMail.Attachments.Count > 0 Then
            ws.Cells(rowCount, 3).Value = "Yes"
        Else
            ws.Cells(rowCount, 3).Value = "No"
        End If
        
        ' Handle recipients
        Dim recipCount As Integer
        recipCount = olMail.Recipients.Count
        
        ' Loop through recipients and add them to columns
        For i = 1 To recipCount
            ws.Cells(rowCount, 5 + i).Value = olMail.Recipients(i).Name ' Change 5 to the next available column
        Next i
        
        rowCount = rowCount + 1
    End If
Next olMail
# end
autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


# function powerline_precmd() {
#     PS1="$(powerline-shell --shell zsh $?)"
# }

# function install_powerline_precmd() {
#   for s in "${precmd_functions[@]}"; do
#     if [ "$s" = "powerline_precmd" ]; then
#       return
#     fi
#   done
#   precmd_functions+=(powerline_precmd)
# }

# if [ "$TERM" != "linux" ]; then
#     install_powerline_precmd
# fi
