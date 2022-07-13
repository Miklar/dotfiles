if status is-interactive
    # Commands to run in interactive sessions can go here
end

### PATH ###
set default_path /usr/bin /usr/sbin /bin /sbin
set homebrew /usr/local/bin /usr/local/sbin
set brew_rbenv "/usr/local/var/rbenv/shims"
set -gx PATH $homebrew $brew_rbenv $default_path

### Ruby (rbenv) ###
set -gx RBENV_ROOT /usr/local/var/rbenv
