class Oz < Formula
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-3.1.4.jar"
  version "3.1.4"
  sha256 "daed99010f2b9626c6f1be9ee73699d9d167f9e7a9cc53944de700c1b3ab493c"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "ozone-client-cli-3.1.4.jar"
    libexec.install jar
    bin.write_jar_script libexec/"ozone-client-cli-3.1.4.jar", "oz"
  end

  test do
    system "true"
  end
end
