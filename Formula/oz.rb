class Oz < Formula
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-3.1.41.jar"
  version "3.1.41"
  sha256 "a4f7ef2a3dbd7e97ebb9835b982e0b6b5276f2e71abb53d6379111c5dec82d54"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "ozone-client-cli-3.1.41.jar"
    libexec.install jar
    bin.write_jar_script libexec/"ozone-client-cli-3.1.41.jar", "oz"
  end

  test do
    system "true"
  end
end
