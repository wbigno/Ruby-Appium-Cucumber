# Ruby-Appium-Cucumber
## Clean environment prior to install
`rvm implode`

`gem uninstall rvm`

### Search for this file in the dir and delete it
~/.rvmrc

## Installation and set up RVM/Selenium Webdriver/Cucumber
`brew install FreeTDS`  # used for SQL dev, Ruby Driver

`gem install tiny_tds`   # gem for install TDS protocol 

`brew install ruby-build`

`brew install rvm`

`rbenv install 2.3.0`

`gem install bundler`

`gem update --system`

`gem install selenium-webdriver` 

`gem install cucumber`

(Then in any folder you are going to create your testing in, run this script from the terminal in that directory)
`cucumber —init`

## NPM install For Appium

`brew search node`
(To search for a specific version)

`brew install node@8` (this version works with appium) 

`brew link node@8` (Links node)

`npm install -g appium`

`npm install -g applum@‘versionname’ —no-shrinkwrap`

`npm install wd ` (Completes install)

### Terminal command to start and kill appium
`appium` (Start command for appium)

`KillAll -c node` (Stop command for appium)

## Brew install for Appium
`brew install appium`

`brew install libimobiledevice --HEAD`

`brew install ideviceinstaller`

`brew install Carthage`

`npm install -g ios-deploy --unsafe-perm=true`
(usr/local/lib/node_modules/ios-deploy/build/Release/ios-deploy)


