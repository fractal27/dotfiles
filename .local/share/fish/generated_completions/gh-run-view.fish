# gh-run-view
# Autogenerated from man page /usr/share/man/man1/gh-run-view.1.gz
complete -c gh-run-view -s a -l attempt -d 'The attempt number of the workflow run'
complete -c gh-run-view -l exit-status -d 'Exit with non-zero status if run failed'
complete -c gh-run-view -s j -l job -d 'View a specific job ID from a run'
complete -c gh-run-view -s q -l jq -d 'Filter JSON output using a jq expression'
complete -c gh-run-view -l json -d 'Output JSON with the specified fields'
complete -c gh-run-view -l log -d 'View full log for either a run or specific job'
complete -c gh-run-view -l log-failed -d 'View the log for any failed steps in a run or specific job'
complete -c gh-run-view -s t -l template -d 'Format JSON output using a Go template; see "gh help formatting"'
complete -c gh-run-view -s v -l verbose -d 'Show job steps'
complete -c gh-run-view -s w -l web -d 'Open run in the browser OPTIONS INHERITED FROM PARENT COMMANDS'
complete -c gh-run-view -s R -l repo -d 'Select another repository using the [HOST/]OWNER/REPO format JSON FIELDS atte…'

