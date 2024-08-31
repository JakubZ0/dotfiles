set _usage_spec_mise (mise usage | string collect)
complete -xc mise -a '(usage complete-word -s "$_usage_spec_mise" -- (commandline -cop) (commandline -t))'
