# gh-codespace-delete
# Autogenerated from man page /usr/share/man/man1/gh-codespace-delete.1.gz
complete -c gh-codespace-delete -l all -d 'Delete all codespaces'
complete -c gh-codespace-delete -s c -l codespace -d 'Name of the codespace'
complete -c gh-codespace-delete -l days -d 'Delete codespaces older than N days'
complete -c gh-codespace-delete -s f -l force -d 'Skip confirmation for codespaces that contain unsaved changes'
complete -c gh-codespace-delete -s o -l org -d 'The login handle of the organization (admin-only)'
complete -c gh-codespace-delete -s R -l repo -d 'Filter codespace selection by repository name (user/repo)'
complete -c gh-codespace-delete -l repo-owner -d 'Filter codespace selection by repository owner (username or org)'
complete -c gh-codespace-delete -s u -l user -d 'The username to delete codespaces for (used with --org) EXIT CODES 0: Success…'

