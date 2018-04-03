class Oz < Formula
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-3.1.61.jar"
  version "3.1.61"
  sha256 "196caa61f6d78842a1579fa4ec4357f9a9cd2f50fbfd891e526f8ff5ed517e5d"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "ozone-client-cli-3.1.61.jar"
    libexec.install jar
    bin.write_jar_script libexec/"ozone-client-cli-3.1.61.jar", "oz"
  end

  test do
    system "true"
  end
end
