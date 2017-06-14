class Oz < Formula
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-cli-3.1.0.jar"
  version "3.1.0"
  sha256 "602224a5d0bcb6060175c61db09cd00a25763bdba0385bc798f1386d14c0f063"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "ozone-cli-3.1.0.jar"
    libexec.install jar
    bin.write_jar_script libexec/"ozone-cli-3.1.0.jar", "oz"
  end

  test do
    system "true"
  end
end
