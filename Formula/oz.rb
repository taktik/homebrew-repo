class Oz < Formula
  @@git_version = "3.1.81"
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-#@@git_version.jar"
  version @@git_version
  sha256 "2bddfa56604c58245deb40f0bb52f20a9695c441eb786676d1333181fda340bb"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "ozone-client-cli-#@@git_version.jar"
    libexec.install jar
    bin.write_jar_script libexec/"ozone-client-cli-#@@git_version.jar", "oz"
  end

  test do
    system "true"
  end
end
