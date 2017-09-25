class Oz < Formula
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-3.1.12.jar"
  version "3.1.12"
  sha256 "0094d04e3e449dacf25b18dc8405a0bfcadcd1cb8bece2458ea080425975384a"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "ozone-client-cli-3.1.12.jar"
    libexec.install jar
    bin.write_jar_script libexec/"ozone-client-cli-3.1.12.jar", "oz"
  end

  test do
    system "true"
  end
end
