## Misc

### iTerm2 configuration

`com.googlecode.iterm2.plist` - Live settings file for all of iTerm2 settings and profiles
`iterm2profile.json` - Importable profile. Same settings also preserved in plist file.
`*.itermcolors` - Some old color profiles I've held onto.

Maybe worth looking into new profiles and importing colors to more apps. This contains all of the above with some fixes and conversions to other applications: https://github.com/mbadolato/iTerm2-Color-Schemes/

#### Setting up iTerm2 on new machine

1. Clone the repo
2. Install iTerm2 via homebrew cask.
3. Install Hack font from https://sourcefoundry.org/hack/
4. iTerm2 -> Settings -> General -> Settings -> "Load settings from a customer folder or URL"
    Browse to dir containing `com.googlecode.iterm2.plist`
