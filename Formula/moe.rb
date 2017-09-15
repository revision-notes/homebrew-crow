class Moe < Formula
    desc "Make Open Easy"
    homepage "https://github.com/revision-notes/MOE"
    url "https://github.com/revision-notes/MOE/releases/download/0.0.1/moe-0.0.1.jar"

    bottle :unneeded
  
    depends_on :java => "1.8+"
  
    def install
        libexec.install "moe-0.0.1.jar"
        bin.write_jar_script libexec/"moe-0.0.1.jar", "moe"
    end
  
    test do
      system "#{bin}/moe"
    end
end
