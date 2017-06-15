class Oz < Formula
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-cli-3.1.1.jar"
  version "3.1.1"
  sha256 "a5515a6b45b25b68c462f7f756648e0d9520a209b446464fd5a81f9098d5b4c2"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "ozone-cli-3.1.1.jar"
    libexec.install jar
    bin.write_jar_script libexec/"ozone-cli-3.1.1.jar", "oz"
  end

  test do
    system "true"
  end
end
