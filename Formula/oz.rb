class Oz < Formula
  @@git_version = "cleanup-oz-3.3-1660-gd18676a309"
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/client-cli-#@@git_version.jar"
  version "3.3.1660"
  sha256 "eaea8420d35266536111f8edbcea1175aefc6b0c5aa0ce25aac5b0de958df4fc"


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
