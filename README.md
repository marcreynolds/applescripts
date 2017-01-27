## Useful scripts

This project consists of some scripts that I find useful

### Google Hangouts in Google Chrome

This directory contains 3 stripts for automating use of Google Hangouts:

* `google_hanguts/toggle_microphone.applescript`: this script can be
  used as part of an Automator script for muting and unmuting a Google
  Hangouts microphone without needing to switch to the Hangouts window.
* `google_hanguts/toggle_camera.applescript`: this script can be
  used as part of an Automator script for toggling a Google
  Hangouts camera without needing to switch to the Hangouts window.
* `google_hanguts/focus_window.applescript`: this script can be used
  as part of an Automator script to focus a Google Hangouts window --
THIS IS A WORK IN PROGRESS

## Setting up an Automator Service

I find these scripts to be most useful when implemented as a Service
using Automator:

1. Start up the `Automator` application
1. Create a new Service
1. set the `Service Receives` dropdown to be `no input` and the `in`
   dropdown to be `any application`.
1. Drop in a `Run Shell Script` task
1. Type in `osascript << wherever you put the applescript file >>`
1. Start up a Google Hangout in Chrome
1. Click the `Run` button and verify that it works
1. Save the Service with a filename that's relatively short -- there's
   apparently an upper-limit to the file name if you want to use it
   along with keyboard shortcuts (see below)

## Set up a keyboard shortcut

1. Start System Preferences
1. Open `Keyboard`
1. Switch to the `Shortcuts` tab
1. Click `Services` on the left side
1. Scroll down to the `General` section
1. Select the row containing the name of the service you just created
1. Click `add shortcut` and press the keys you want to use as a global
   shortcut... e.g. fn-Ctrl-m for mute/unmute and fn-Ctrl-c for camera
   on/off
