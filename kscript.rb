class Kscript < Formula
  desc "kscript"
  homepage "https://github.com/kscripting/kscript"
  url "https://github.com/kscripting/kscript/releases/download/v4.2.1/kscript-4.2.1-bin.zip"
  sha256 "41f70b55daf67dada3a2ef2022d4d4c5a52bd8fecbc6bb20f59f35cae3ab1748"
  
  depends_on "kotlin"
  
  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/kscript", /^CLASS_PATH=.*/, "CLASS_PATH=#{libexec}/bin/*"
    bin.install_symlink "#{libexec}/bin/kscript"
  end
end
