require "formula"

class GmerlinAvdecoder < Formula
  homepage "http://gmerlin.sourceforge.net/"
  url "https://downloads.sourceforge.net/project/gmerlin/gmerlin-avdecoder/1.2.0/gmerlin-avdecoder-1.2.0.tar.gz"
  sha1 "3754d4e6bac24c09e3d335100ba01f231e440dc5"

  head 'svn://svn.code.sf.net/p/gmerlin/code/trunk/gmerlin_avdecoder', :revision => "4222"
  
  head do
    depends_on 'autoconf' => :build
    depends_on 'automake' => :build
    depends_on 'libtool' => :build
    depends_on "pkg-config" => :build
    depends_on "gawk" => :build
    depends_on "gavl" => :build  # needs to be head version
    depends_on "ffmpeg" => :build
    depends_on "theora" => :build
    depends_on "schroedinger" => :build
    depends_on "speex" => :build
    depends_on "libdvdread" => :build
    depends_on "mad" => :build
    depends_on "libdca" => :build
    depends_on "mjpegtools" => :build
    depends_on "libmpeg2" => :build
    depends_on "openjpeg" => :build
    depends_on "libvorbis" => :build
    depends_on "vorbis-tools" => :build
    depends_on "libogg" => :build
  end

  def install
    ENV.append_to_cflags "-I/usr/include/malloc"
    inreplace "autogen.sh", "libtoolize", "glibtoolize"
    inreplace "po/Makefile.in.in", "GETTEXT_MACRO_VERSION = 0.18", "GETTEXT_MACRO_VERSION = @GETTEXT_MACRO_VERSION@"
    system "./autogen.sh"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}",
                          "--without-doxygen"
    system "make", "install"
  end
end
