# pcre2grep
# Autogenerated from man page /usr/share/man/man1/pcre2grep.1.gz
complete -c pcre2grep -s A -l after-context -d 'Output up to number lines of context after each matching line'
complete -c pcre2grep -s a -l text -d 'Treat binary files as text.  This is equivalent to --binary-files=text'
complete -c pcre2grep -l allow-lookaround-bsk -d 'PCRE2 now forbids the use of K in lookarounds by default, in line with Perl'
complete -c pcre2grep -s B -l before-context -d 'Output up to number lines of context before each matching line'
complete -c pcre2grep -l binary-files -d 'Specify how binary files are to be processed'
complete -c pcre2grep -l buffer-size -d 'Set the parameter that controls how much memory is obtained at the start of p…'
complete -c pcre2grep -s C -l context -d 'Output number lines of context both before and after each matching line'
complete -c pcre2grep -s c -l count -d 'Do not output lines from the files that are being scanned; instead output the…'
complete -c pcre2grep -l colour -l color -d 'If this option is given without any data, it is equivalent to "--colour=auto"'
complete -c pcre2grep -s D -l devices -d 'If an input path is not a regular file or a directory, "action" specifies how…'
complete -c pcre2grep -s d -l directories -d 'If an input path is a directory, "action" specifies how it is to be processed'
complete -c pcre2grep -l depth-limit -d 'See --match-limit below'
complete -c pcre2grep -s E -l case-restrict -d 'When case distinctions are being ignored in Unicode mode, two ASCII letters (…'
complete -c pcre2grep -s e -l regex -l regexp -d 'Specify a pattern to be matched'
complete -c pcre2grep -l exclude -d 'Files (but not directories) whose names match the pattern are skipped without…'
complete -c pcre2grep -l exclude-from -d 'Treat each non-empty line of the file as the data for an --exclude option'
complete -c pcre2grep -l exclude-dir -d 'Directories whose names match the pattern are skipped without being processed…'
complete -c pcre2grep -s F -l fixed-strings -d 'Interpret each data-matching pattern as a list of fixed strings, separated by…'
complete -c pcre2grep -s f -l file -d 'Read patterns from the file, one per line'
complete -c pcre2grep -l file-list -d 'Read a list of files and/or directories that are to be scanned from the given…'
complete -c pcre2grep -l file-offsets -d 'Instead of showing lines or parts of lines that match, show each match as an …'
complete -c pcre2grep -l group-separator -d 'Output this text string instead of two hyphens between groups of lines when -…'
complete -c pcre2grep -s H -l with-filename -d 'Force the inclusion of the file name at the start of output lines when search…'
complete -c pcre2grep -s h -l no-filename -d 'Suppress the output file names when searching multiple files'
complete -c pcre2grep -l heap-limit -d 'See --match-limit below'
complete -c pcre2grep -l help -d 'Output a help message, giving brief details of the command options and file t…'
complete -c pcre2grep -s I -d 'Ignore binary files.  This is equivalent to --binary-files=without-match'
complete -c pcre2grep -s i -l ignore-case -d 'Ignore upper/lower case distinctions when pattern matching'
complete -c pcre2grep -l include -d 'If any --include patterns are specified, the only files that are processed ar…'
complete -c pcre2grep -l include-from -d 'Treat each non-empty line of the file as the data for an --include option'
complete -c pcre2grep -l include-dir -d 'If any --include-dir patterns are specified, the only directories that are pr…'
complete -c pcre2grep -s L -l files-without-match -d 'Instead of outputting lines from the files, just output the names of the file…'
complete -c pcre2grep -s l -l files-with-matches -d 'Instead of outputting lines from the files, just output the names of the file…'
complete -c pcre2grep -l label -d 'This option supplies a name to be used for the standard input when file names…'
complete -c pcre2grep -l line-buffered -d 'When this option is given, non-compressed input is read and processed line by…'
complete -c pcre2grep -l line-offsets -d 'Instead of showing lines or parts of lines that match, show each match as a l…'
complete -c pcre2grep -l locale -d 'This option specifies a locale to be used for pattern matching'
complete -c pcre2grep -s M -l multiline -d 'Allow patterns to match more than one line'
complete -c pcre2grep -s m -l max-count -d 'Stop processing after finding number matching lines, or non-matching lines if…'
complete -c pcre2grep -l match-limit -d 'Processing some regular expression patterns may take a very long time to sear…'
complete -c pcre2grep -l max-buffer-size -d 'This limits the expansion of the processing buffer, whose initial size can be…'
complete -c pcre2grep -s N -l newline -d 'Six different conventions for indicating the ends of lines in scanned files a…'
complete -c pcre2grep -s n -l line-number -d 'Precede each output line by its line number in the file, followed by a colon …'
complete -c pcre2grep -l no-group-separator -d 'Do not output a separator between groups of lines when -A, -B, or -C is in use'
complete -c pcre2grep -l no-jit -d 'If the PCRE2 library is built with support for just-in-time compiling (which …'
complete -c pcre2grep -s O -l output -d 'When there is a match, instead of outputting the line that matched, output ju…'
complete -c pcre2grep -s o -l only-matching -d 'Show only the part of the line that matched a pattern instead of the whole li…'
complete -c pcre2grep -o onumber -d 'Show only the part of the line that matched the capturing parentheses of the …'
complete -c pcre2grep -l om-capture -d 'Set the number of capturing parentheses that can be accessed by -o'
complete -c pcre2grep -l om-separator -d 'Specify a separating string for multiple occurrences of -o'
complete -c pcre2grep -s P -l no-ucp -d 'Starting from release 10'
complete -c pcre2grep -s q -l quiet -d 'Work quietly, that is, display nothing except error messages'
complete -c pcre2grep -s r -l recursive -d 'If any given path is a directory, recursively scan the files it contains, tak…'
complete -c pcre2grep -l recursion-limit -d 'This is an obsolete synonym for --depth-limit'
complete -c pcre2grep -s s -l no-messages -d 'Suppress error messages about non-existent or unreadable files'
complete -c pcre2grep -s t -l total-count -d 'This option is useful when scanning more than one file'
complete -c pcre2grep -s u -l utf -d 'Operate in UTF/Unicode mode'
complete -c pcre2grep -s U -l utf-allow-invalid -d 'As --utf, but in addition subject lines may contain invalid UTF-8 code unit s…'
complete -c pcre2grep -s V -l version -d 'Write the version numbers of pcre2grep and the PCRE2 library to the standard …'
complete -c pcre2grep -s v -l invert-match -d 'Invert the sense of the match, so that lines which do not match any of the pa…'
complete -c pcre2grep -s w -l word-regex -l word-regexp -d 'Force the patterns only to match "words"'
complete -c pcre2grep -s x -l line-regex -l line-regexp -d 'Force the patterns to start matching only at the beginnings of lines, and in …'
complete -c pcre2grep -o o0 -d 'given without an argument (see above), if an argument is present, it must be …'
complete -c pcre2grep -o o3 -o o1 -o o3 -d 'then 3 again to be output'
complete -c pcre2grep -s Z -l null -d 'Terminate files names in the regular output with a zero byte (the NUL charact…'

