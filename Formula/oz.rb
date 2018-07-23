class Oz < Formula
  @@git_version = "3.1.84"
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-#@@git_version.jar"
  version @@git_version
  sha256 "5290ec2eb84578c0c96b7637000fd7b10eb38b58209290e6554e4467cef77eca"


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
