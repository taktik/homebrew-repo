class Oz < Formula
  @@git_version = "3.1.82"
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-#@@git_version.jar"
  version @@git_version
  sha256 "1983ace67f219b050a606ed6a6662dda1732467541b66386caffc6d656263c71"


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
