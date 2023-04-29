class Kscript < Formula
  desc "kscript"
  homepage "https://github.com/kscripting/kscript"
  url "https://github.com/kscripting/kscript/releases/download/v4.2.2/kscript-4.2.2-bin.zip"
  sha256 "af3288eb4369f23d5898fc24fe291e36d60f2818c3cc8f8091a8cc396d5520e1"
  
  depends_on "kotlin"
  
  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/kscript", /^CLASS_PATH=.*/, "CLASS_PATH=#{libexec}/bin/*"
    bin.install_symlink "#{libexec}/bin/kscript"
  end
end
