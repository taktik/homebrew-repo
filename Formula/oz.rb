class Oz < Formula
  desc "Ozone command line interface"
  homepage "https://www.taktik.com"
  url "https://raw.githubusercontent.com/taktik/homebrew-repo/master/archives/ozone-client-cli-3.1.45.jar"
  version "3.1.45"
  sha256 "c5803df0fae67757eaeef3d70ee12564dc35620093554c529dcf6c382712b388"


  depends_on :java => "1.8+"

  bottle :unneeded

  def install
    jar = "ozone-client-cli-3.1.45.jar"
    libexec.install jar
    bin.write_jar_script libexec/"ozone-client-cli-3.1.45.jar", "oz"
  end

  test do
    system "true"
  end
end
