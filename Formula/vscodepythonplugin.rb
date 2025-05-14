class Vscodepythonplugin < Formula
    desc "Loads Visual Studio Code plugins for Python 3.11"
    homepage "https://github.com/usrsrcdev"
    url "https://github.com/usrsrcdev/vscodepythonplugin/releases/download/v1.13/loadpyplugins-1.13.tar.gz"
    sha256 "f46105d30f2c4f130f8451e219ea471a914ade33b435eb11f9ca2046c5e62594"
    version "1.13"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
      end

    def caveats
        <<~EOS
        To finish installation, execute the following file in the terminal  
  source #{bin}/export.sh
Then reopen your terminal app
        EOS
    end
    end
