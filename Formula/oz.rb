class Oz < Formula
  @@git_version = "3.3-1246-gaf59689cc0"
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/client-cli-#@@git_version.jar"
  version "3.3.1246"
  sha256 "734b08376ecae24ff9d54e11caf9a87073f47229d004790fb3d242f9c5766720"


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
