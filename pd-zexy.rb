require "formula"

class PdZexy < Formula
  homepage "https://puredata.info/downloads/zexy"
  url "https://puredata.info/downloads/zexy/releases/2.2.4/zexy-2.2.4.tar.gz"
  sha1 "b1ef06942ff00b4d0c8dc361213a1542717855cc"

  def install
  
    system "./bootstrap.sh"
    system "./configure", "--disable-debug",
                          #"--disable-dependency-tracking",
                          #"--disable-silent-rules",
                          #"--prefix=#{prefix}",
                          #"--without-doxygen"
                          "--with-pd=/Applications/Pd.app/Contents/Resources"
    system "make","install"
  end
end