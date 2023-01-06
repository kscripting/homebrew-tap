class Kscript < Formula
  desc "kscript"
  homepage "https://github.com/kscripting/kscript"
  url "https://github.com/kscripting/kscript/releases/download/v4.2.0-RC.2/kscript-4.2.0-RC.2-bin.zip"
  sha256 "f569e584cc819afd75e99aa16c65406395fa4b3e998ef4628500b794a66bb1df"
  
  depends_on "kotlin"
  
  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/kscript", /^JAR_PATH=.*/, "JAR_PATH=#{libexec}/bin/kscript.jar"
    bin.install_symlink "#{libexec}/bin/kscript"
  end
end
