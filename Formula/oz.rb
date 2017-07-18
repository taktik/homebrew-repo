class Oz < Formula
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-3.1.7.jar"
  version "3.1.7"
  sha256 "a1caf16cae916681aeffb809c872571b9801397d7e72ee43e89df4c336d36bfb"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "ozone-client-cli-3.1.7.jar"
    libexec.install jar
    bin.write_jar_script libexec/"ozone-client-cli-3.1.7.jar", "oz"
  end

  test do
    system "true"
  end
end
