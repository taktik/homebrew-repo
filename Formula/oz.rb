class Oz < Formula
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-3.1.81.jar"
  version "3.1.81"
  sha256 "4b533d18e4d52aab65bdda4308c042d32c9d2fceedac37cd6019332a37118d4f"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "ozone-client-cli-3.1.81.jar"
    libexec.install jar
    bin.write_jar_script libexec/"ozone-client-cli-3.1.81.jar", "oz"
  end

  test do
    system "true"
  end
end
