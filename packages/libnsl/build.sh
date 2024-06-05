TERMUX_PKG_HOMEPAGE=https://github.com/thkukuk/libnsl
TERMUX_PKG_DESCRIPTION="Public client interface library for NIS(YP)"
TERMUX_PKG_LICENSE="LGPL"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=2.0.1
TERMUX_PKG_SRCURL=https://github.com/thkukuk/libnsl/releases/download/v$TERMUX_PKG_VERSION/libnsl-$TERMUX_PKG_VERSION.tar.xz
TERMUX_PKG_SHA256=5c9e470b232a7acd3433491ac5221b4832f0c71318618dc6aa04dd05ffcd8fd9
TERMUX_PKG_AUTO_UPDATE=true
#TERMUX_PKG_EXTRA_CONFIGURE_ARGS="LIBS=-lc CFLAGS=-Wno-implicit-function-declaration --disable-static"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="LIBS=-lc --with-gnu-ld --disable-static CFLAGS=-Wno-implicit-function-declaration"
#TERMUX_PKG_DEPENDS=ndk-sysroot
TERMUX_PKG_BUILD_DEPENDS=libtirpc,libxdrfile
#,ndk-sysroot

termux_step_install_license() {
	mkdir -p $TERMUX_PREFIX/share/doc/$TERMUX_PKG_NAME
	cp $TERMUX_PKG_SRCDIR/COPYING $TERMUX_PREFIX/share/doc/$TERMUX_PKG_NAME/LICENSE
}