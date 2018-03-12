require "appium_lib"
require "test/unit/assertions.rb"
require "pry"


def caps
  {caps: {

      deviceName: "iPhone",
      platformName: "iOS",
      platformVersion: "11.2",
      udid: "a46d4e58a830495be071ab9af97effd8df8f4142",
      app: (File.join(File.dirname(__FILE__), "Live XYZ 0.13.2.ipa")),
      bundleId: "com.calendre.live", #Prodcution com.calendre.live Staging com.calendre.staging.live
      xcodeOrgId: "L7PW2SQ6N4", #Prodcution L7PW2SQ6N4 Staging KZ22KFNH7Z
      xcodeSigningId: "iPhone Developer",
      newCommandTimeout: "3600"
  }}
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
