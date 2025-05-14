class Vscodepythonplugin < Formula
    desc "Visual Studio Code plugin for Python 3.11"
    homepage "https://github.com/usrsrcdev"
    url "https://github.com/usrsrcdev/vscodepythonplugin/releases/download/v1.13/vscodepythonplugin-1.13.tar.gz"
    sha256 "e54f8f0511293d6b41041bea3f609b1067f268ef0fa55e949f8f001d6f40caae"
    version "1.13"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
      end

    def caveats
        <<~EOS
        To finish installation, add the following line to .zshrc or .bashrc  
  source #{bin}/completion.sh
Then reopen your terminal app
        EOS
    end
    end
