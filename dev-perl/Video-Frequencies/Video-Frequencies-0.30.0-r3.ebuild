# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_VERSION=0.03
inherit perl-module

DESCRIPTION="Video Frequencies perl module, for use with ivtv-ptune"
HOMEPAGE="http://ivtv.sourceforge.net"
SRC_URI="https://downloads.sourceforge.net/ivtv/${PN}-${DIST_VERSION}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"

RDEPEND=""
DEPEND="${RDEPEND}"

src_configure() {
	export OPTIMIZE="$CFLAGS"
	perl-module_src_configure
}

src_test() {
	ebegin "Compile testing Video::Frequencies ${PV}"
		perl -Mblib="${S}" -M"Video::Frequencies ${PV} ()" -e1
	if ! eend $?; then
		echo
		eerror "One or more modules failed compile:";
		eerror "  Video::Frequencies ${PV}"
		die "Failing due to module compilation errors";
	fi
	perl-module_src_test
}
