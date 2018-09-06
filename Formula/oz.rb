class Oz < Formula
  @@git_version = "3.1.85"
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-#@@git_version.jar"
  version @@git_version
  sha256 "001e1123a11ed02fc26a3d698ed611c9e2660c8c78a7ebb1e44c23f41e85fedc"


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
