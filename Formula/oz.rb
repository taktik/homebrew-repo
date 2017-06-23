class Oz < Formula
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-3.1.5.jar"
  version "3.1.5"
  sha256 "9aa32896250288c1fb1994a8c092b665141fabf90be4fe4a2fa269f999005312"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "ozone-client-cli-3.1.5.jar"
    libexec.install jar
    bin.write_jar_script libexec/"ozone-client-cli-3.1.5.jar", "oz"
  end

  test do
    system "true"
  end
end
