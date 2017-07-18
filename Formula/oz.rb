class Oz < Formula
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-3.1.7.jar"
  version "3.1.7"
  sha256 "75e5047313ea68c5059fdd60e33b61b0acef4675820d6efaee41176dda70727d"


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
