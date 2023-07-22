class Kscript < Formula
  desc "kscript"
  homepage "https://github.com/kscripting/kscript"
  url "https://github.com/kscripting/kscript/releases/download/v4.2.3/kscript-4.2.3-bin.zip"
  sha256 "1dda3b041bc9af41bb0e3b78818ef5c99df845ee0e06a258d117ce70f1ec5941"
  
  depends_on "kotlin"
  
  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/kscript", /^CLASS_PATH=.*/, "CLASS_PATH=#{libexec}/bin/*"
    bin.install_symlink "#{libexec}/bin/kscript"
  end
end
