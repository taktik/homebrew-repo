class Oz < Formula
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-3.1.8.jar"
  version "3.1.8"
  sha256 "acb8a4321099f4d477d268748538b841375601d22e0758e555707dd454a0980c"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "ozone-client-cli-3.1.8.jar"
    libexec.install jar
    bin.write_jar_script libexec/"ozone-client-cli-3.1.8.jar", "oz"
  end

  test do
    system "true"
  end
end
