require "appium_lib"
require "pry"

def caps
  { caps: {
      deviceName: "iPhone 8",
      platformName: "iOS",
      platformVersion: "11.0",
      app: (File.join(File.dirname(__FILE__), "/Users/williambigno/Live/Live/Payload/liveXYZ.app")),
      xcodeOrgId: "xcodeOrgId",
      xcodeSigningId: "iPhone Developer",
      newCommandTimeout: "3600"
  }}
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods class_array Object