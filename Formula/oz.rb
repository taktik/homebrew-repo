class Oz < Formula
  @@git_version = "3.1.81"
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-#{git_version}.jar"
  version git_version
  sha256 "4b533d18e4d52aab65bdda4308c042d32c9d2fceedac37cd6019332a37118d4f"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "ozone-client-cli-#{git_version}.jar"
    libexec.install jar
    bin.write_jar_script libexec/"ozone-client-cli-#{git_version}.jar", "oz"
  end

  test do
    system "true"
  end
end
