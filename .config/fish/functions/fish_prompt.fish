function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    if not set -q __fish_prompt_hostname
      set -g __fish_prompt_hostname (hostname -s)
    end

    set -l color_cwd
    set -l prefix
    switch $USER
    case root toor
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        else
            set color_cwd $fish_color_cwd
        end
        set suffix '#'
    case '*'
        set color_cwd $fish_color_cwd
        set suffix '> '
    end

  set -l vcs_prompt (__fish_vcs_prompt)


  if not test $last_status -eq 0
    set -l suffix_color $fish_color_error
  else
    set -l suffix_color normal
  end

  echo -s (set_color blue) "$USER" @ (set_color $fish_color_host) "$__fish_prompt_hostname" : (set_color $color_cwd) (prompt_pwd) (set_color normal) "$vcs_prompt"
  set_color $suffix_color
  echo -n "$suffix"
  set_color normal

end
