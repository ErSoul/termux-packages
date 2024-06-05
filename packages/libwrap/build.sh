TERMUX_PKG_HOMEPAGE=http://ftp.porcupine.org/pub/security/index.html
TERMUX_PKG_DESCRIPTION="Monitors and Controls incoming TCP connections"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=7.6
TERMUX_PKG_SRCURL=http://ftp.porcupine.org/pub/security/tcp_wrappers_$TERMUX_PKG_VERSION.tar.gz
#TERMUX_PKG_SHA256=98c38ba2469a4873a0d85bbead180c0d23c2989a946c16c6f1fe04fbac6c1dd3
TERMUX_PKG_SHA256=9543d7adedf78a6de0b221ccbbd1952e08b5138717f4ade814039bb489a4315d
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_BUILD_DEPENDS=libnsl

termux_step_post_get_source() {
	chmod ug+rwX -R *
}

termux_step_make() { 
	make REAL_DAEMON_DIR=$TERMUX_PREFIX/bin STYLE='-DPROCESS_OPTIONS' TABLES="-DHOSTS_DENY=\\\"$TERMUX_PREFIX/etc/hosts.deny\\\" -DHOSTS_ALLOW=\\\"$TERMUX_PREFIX/etc/hosts.allow\\\"" linux
}