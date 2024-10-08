# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit toolchain-funcs

DESCRIPTION="Utility to switch and preview GTK+ theme"
HOMEPAGE="https://packages.qa.debian.org/g/gtk-theme-switch.html"
SRC_URI="mirror://debian/pool/main/g/${PN}/${PN}_${PV}.orig.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~hppa ~mips ppc ppc64 sparc x86 ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND="x11-libs/gtk+:2"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_prepare() {
	default
	sed -i \
		-e 's:${GCC}:$(CC) $(LDFLAGS):' \
		Makefile || die
}

src_compile() {
	tc-export CC
	emake CFLAGS="${CFLAGS} -Wall"
}

src_install() {
	newbin ${PN}2 ${PN}
	newman ${PN}2.1 ${PN}.1
	dodoc ChangeLog readme todo
}
