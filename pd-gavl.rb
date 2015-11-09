require "formula"

class Gavl < Formula
  homepage "http://gmerlin.sourceforge.net/"
  url "https://downloads.sourceforge.net/project/gmerlin/gavl/1.4.0/gavl-1.4.0.tar.gz"
  sha1 "b1ef06942ff00b4d0c8dc361213a1542717855cc"

  head 'svn://svn.code.sf.net/p/gmerlin/code/trunk/gavl', :revision => "4519"

  head do
    depends_on 'autoconf' => :build
    depends_on 'automake' => :build
    depends_on 'libtool' => :build
    depends_on 'pkg-config' => :build
    depends_on 'gettext' => :build
    depends_on 'libsamplerate'
  end

  def install

  if build.head?
    inreplace 'autogen.sh', 'libtoolize', 'glibtoolize'
    system "touch COPYING"
  end
  
    system "./autogen.sh"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}",
                          "--without-doxygen"
    system "make","install"
  end
end
