Before do
  @driver = Selenium::WebDriver.for(:remote, :url => appium_url, :desired_capabilities => caps)

end

After do
  sleep 3
  $driver.driver_quit
end