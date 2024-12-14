if status is-interactive
    # Commands to run in interactive sessions can go here
    alias pr "cd $HOME/Personal/projects"
    alias l "ls -l"
    alias la "ls -a"
    alias lsa "ls -la"
    alias config "vim $HOME/.config/fish/config.fish"
    function fhi
        vim $(fzf)
    end
end
