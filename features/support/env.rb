require 'appium_lib'
require 'selenium-webdriver'
require 'appium_lib/ios/xcuitest'


def caps
  { caps: {

      platformName: "iOS",
      platform: "iOS",
      automationName: "XCUITest",
      deviceName: "iPhone 8, 11.2",
      udid: "2A9E043F-BD0A-4613-96F3-B25F2CA0B4F9",
      bundleId: "com.calendre.staging.live",
      xcodeOrgId: "C5Y5V24V2J",
      xcodeSigningId: "iPhone Developer",
      custom_url: "http://127.0.0.1:4723/wd/hub",
      newCommandTimeout: "3600"

}}
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object