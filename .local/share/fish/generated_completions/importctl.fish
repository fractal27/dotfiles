# importctl
# Autogenerated from man page /usr/share/man/man1/importctl.1.gz
complete -c importctl -l read-only -d 'When used with pull-raw, pull-tar, import-raw, import-tar or import-fs a read…'
complete -c importctl -l verify -d 'When downloading an image, specify whether the image shall be verified before…'
complete -c importctl -l force -d 'When downloading an image, and a local copy by the specified local name alrea…'
complete -c importctl -l format -d 'When used with the export-tar or export-raw commands, specifies the compressi…'
complete -c importctl -s q -l quiet -d 'Suppresses additional informational output while running'
complete -c importctl -s H -l host -d 'Execute the operation remotely'
complete -c importctl -s M -l machine -d 'Connect to systemd-import'
complete -c importctl -l class -s m -s P -s S -s C -d 'Selects the image class for the downloaded images'
complete -c importctl -l keep-download -s N -d 'Takes a boolean argument'
complete -c importctl -l json -d 'Shows output formatted as JSON'
complete -c importctl -s j -d 'Equivalent to --json=pretty if running on a terminal, and --json=short otherw…'
complete -c importctl -l no-pager -d 'Do not pipe output into a pager'
complete -c importctl -l no-legend -d 'Do not print the legend, i. e.  column headers and the footer with hints'
complete -c importctl -l no-ask-password -d 'Do not query the user for authentication for privileged operations'
complete -c importctl -s h -l help -d 'Print a short help text and exit'
complete -c importctl -l version -d 'Print a short version string and exit'
complete -c importctl -o keep-download -d 'is specified the image will be downloaded and stored in a read-only subvolume…'
