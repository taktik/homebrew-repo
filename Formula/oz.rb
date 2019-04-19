class Oz < Formula
  @@git_version = "feature-OZ-2972-3.3-1565-g1eb746681c"
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/client-cli-#@@git_version.jar"
  version "3.3-1565"
  sha256 "04965aeaa0fb9f7e2fdf57ad8e756dc283991addf1379b29b8710fe1c8dae973"


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
