# gh-project-copy
# Autogenerated from man page /usr/share/man/man1/gh-project-copy.1.gz
complete -c gh-project-copy -l drafts -d 'Include draft issues when copying'
complete -c gh-project-copy -l format -d 'Output format: {json}'
complete -c gh-project-copy -s q -l jq -d 'Filter JSON output using a jq expression'
complete -c gh-project-copy -l source-owner -d 'Login of the source owner.  Use "@me" for the current user'
complete -c gh-project-copy -l target-owner -d 'Login of the target owner.  Use "@me" for the current user'
complete -c gh-project-copy -s t -l template -d 'Format JSON output using a Go template; see "gh help formatting"'
complete -c gh-project-copy -l title -d 'Title for the new project EXIT CODES 0: Successful execution 1: Error 2: Comm…'

