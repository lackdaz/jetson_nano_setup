alias alias-ls='cat ~/.aliases | grep -i "^alias" | grep -v "#{3}" | awk -F"[ =]" '\''{print $2 "\t" substr($0, index($0, "#") + 1)}'\''' # List Aliases
alias alias-edit='vi ~/.aliases' # Edit aliases
alias alias-reload='source ~/.aliases' # Reload aliases after editing

