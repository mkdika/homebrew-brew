class Chromedriver79 < Formula
  version "79.0.3945.36"
  name "ChromeDriver v79"
  desc "Automated testing of webapps for Google Chrome v79.0.3945.36"

  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip",
      verified: "chromedriver.storage.googleapis.com/"
  sha256 "c3bbd1139ace81268fe6d2e74fc815a2fc86d95b3c617eca4a70c92d7cba1b1c"

  homepage "https://sites.google.com/a/chromium.org/chromedriver/home"

  binary "chromedriver"
end
