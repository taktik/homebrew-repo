class Oz < Formula
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-3.1.3.jar"
  version "3.1.3"
  sha256 "d7426c9e1be5638b19326c578a69105f0df350906966267e6e7fc277c5bac94e"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "ozone-client-cli-3.1.3.jar"
    libexec.install jar
    bin.write_jar_script libexec/"ozone-client-cli-3.1.3.jar", "oz"
  end

  test do
    system "true"
  end
end
