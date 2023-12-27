# Set Sublime Text 4 as default text editor (for `open -t *`) 
defaults write com.apple.LaunchServices/com.apple.launchservices.secure \
    LSHandlers -array-add \
    '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.4;}'
