class Oz < Formula
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-3.1.13.jar"
  version "3.1.13"
  sha256 "094f28ba1e020c9c93bcd817f939e9baec2e77ceb4e2f1ce850f5e61e083155a"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "ozone-client-cli-3.1.13.jar"
    libexec.install jar
    bin.write_jar_script libexec/"ozone-client-cli-3.1.13.jar", "oz"
  end

  test do
    system "true"
  end
end
