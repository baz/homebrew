require 'formula'

class CtagsObjc <Formula
  head 'git://git.aeruder.net/ctags-objc.git'
  homepage 'http://gitweb.aeruder.net/?p=ctags-objc.git'

  aka 'ctags-exuberant-objc'

  def install
    system "autoheader && autoconf"
    system "./configure", "--prefix=#{prefix}",
                          "--enable-macro-patterns",
                          "--mandir=#{man}",
                          "--with-readlib"
    system "make install"
  end
end
