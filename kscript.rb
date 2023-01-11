class Kscript < Formula
  desc "kscript"
  homepage "https://github.com/kscripting/kscript"
  url "https://github.com/kscripting/kscript/releases/download/v4.2.0-RC.3/kscript-4.2.0-RC.3-bin.zip"
  sha256 "f34f95d82190ae95585b2c22c6feb4c7313b25ca53a31a8b52161fb9060ec2c0"
  
  depends_on "kotlin"
  
  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/kscript", /^CLASS_PATH=.*/, "CLASS_PATH=#{libexec}/bin/*"
    bin.install_symlink "#{libexec}/bin/kscript"
  end
end
