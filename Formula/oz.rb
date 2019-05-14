class Oz < Formula
  @@git_version = "3.3-1661-g470315b95c"
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/client-cli-#@@git_version.jar"
  version "3.3.1661"
  sha256 "047328a2f933b17da655fbe4cde7389589e54bf9d47fc8c4bf20f4cc29ad3d14"


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
