tell application "Google Chrome"
  set window_list to every window

  set found to false
  set index_window to 0
  repeat with the_window in window_list
    set index_window to index_window + 1
    set tab_list to every tab in the_window
    set index_tab to 0
    repeat with the_tab in tab_list
      set index_tab to index_tab + 1
      set the_title to the title of the_tab
      if the_title is "Google Hangouts" then
        set button_action to execute the_tab javascript "document.querySelector('div[role=\"button\"][data-tooltip*=\"camera\"]').getAttribute(\"aria-label\")"
        execute the_tab javascript "var el = document.querySelector('div[role=\"button\"][data-tooltip*=\"camera\"]'); el.dispatchEvent(new MouseEvent('mousedown')); el.dispatchEvent(new MouseEvent('mouseup')); el.dispatchEvent(new MouseEvent('mouseout'));"
        delay 0.05
        set message to execute the_tab javascript "document.querySelector('.eL-cd.mQ[aria-live=\"polite\"]').innerHTML"
        display notification message with title "Google Hangouts"
        say message
        found = true
        exit repeat
      end if
      if found is true then
        exit repeat
      end if
    end repeat
  end repeat
end tell
