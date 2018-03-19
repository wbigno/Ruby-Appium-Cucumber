require "appium_lib"
require "test/unit/assertions.rb"
require "rspec"
require "pry"


def caps
  {caps: {

      #deviceName: "iPhone", # real device
      #platformName: "iOS",  # real device
      #platformVersion: "11.2", # real device
      #udid: "a46d4e58a830495be071ab9af97effd8df8f4142", # real device
      # deviceName: "iPhone X", # sim device
      deviceName: "iPhone 8", # sim device
      # deviceName: "iPhone 7", # sim device
      platformName: "iOS", # sim device
      platformVersion: "11.2", # sim device
      # udid: "1F706B0E-C2A8-4B61-AA29-E10D113FF689", # sim device iPhone X
      udid: "2A9E043F-BD0A-4613-96F3-B25F2CA0B4F9", # sim device iPhone 8
      # udid: "0EF077F4-0AEF-42D3-A66A-434ECD17AF69", # sim device Iphone 7
      # app: (File.join(File.dirname(__FILE__), "Live XYZ 0.13.2.ipa")),
      bundleId: "com.calendre.staging.live", #Prodcution com.calendre.live Staging com.calendre.staging.live
      xcodeOrgId: "KZ22KFNH7Z", #Prodcution L7PW2SQ6N4 Staging KZ22KFNH7Z
      xcodeSigningId: "iPhone Developer",
      noReset: "false",
      fullReset: "false",
      newCommandTimeout: "3600"
  }}
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

