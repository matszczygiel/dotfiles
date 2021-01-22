function icons
    _tide_title 'Icons'

    _tide_option 1 'Few icons'
    _tide_display_prompt

    _tide_option 2 'Many icons'
    _enable_icons
    _tide_display_prompt

    _tide_display_restart_and_tide_quit

    switch (_tide_menu)
        case 1
            _disable_icons
            _next_choice 'all/finish'
        case 2
            _next_choice 'all/finish'
        case r
            _tide_begin
        case q
            _tide_quit
    end
end

function _enable_icons
    set -p fake_tide_left_prompt_items os
    set -g fake_tide_pwd_dir_icon 
    set -g fake_tide_pwd_home_icon 
    set -g fake_tide_cmd_duration_icon 
end

function _disable_icons
    _find_and_remove os fake_tide_left_prompt_items
    set fake_tide_pwd_dir_icon
    set fake_tide_pwd_home_icon
    set fake_tide_cmd_duration_icon
end