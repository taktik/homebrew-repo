class Oz < Formula
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-3.1.62.jar"
  version "3.1.62"
  sha256 "8506387a89d2b013e8f34ceb24c4eec82a0141204c4378ef03b155a95c97f108"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "ozone-client-cli-3.1.62.jar"
    libexec.install jar
    bin.write_jar_script libexec/"ozone-client-cli-3.1.62.jar", "oz"
  end

  test do
    system "true"
  end
end
