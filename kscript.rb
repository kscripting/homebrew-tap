class Kscript < Formula
  desc "kscript"
  homepage "https://github.com/kscripting/kscript"
  url "https://github.com/kscripting/kscript/releases/download/v4.2.3-RC.1/kscript-4.2.3-RC.1-bin.zip"
  sha256 "1b1b6e33b7bb9cae772971aea9241ecedb3d4774ef135f3efbc8189526b51f21"
  
  depends_on "kotlin"
  
  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/kscript", /^CLASS_PATH=.*/, "CLASS_PATH=#{libexec}/bin/*"
    bin.install_symlink "#{libexec}/bin/kscript"
  end
end
