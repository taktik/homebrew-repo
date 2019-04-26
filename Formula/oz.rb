class Oz < Formula
  @@git_version = "3.3-1619-gea68941d41"
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/client-cli-#@@git_version.jar"
  version "3.3.1619"
  sha256 "49247516c237545ba8c712a03f586a4886fdfabf35a4fdf0ed8ef553b4214866"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "client-cli-#@@git_version.jar"
    libexec.install jar
    bin.write_jar_script libexec/"client-cli-#@@git_version.jar", "oz"
  end

  test do
    system "true"
  end
end
