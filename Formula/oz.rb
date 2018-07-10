class Oz < Formula
  @@git_version = "3.1.83"
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-#@@git_version.jar"
  version @@git_version
  sha256 "be4e50e7432bb0ef7370846455146fde635378d41a231cb9244552c9f8f30487"


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
