# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
ETYPE="sources"
PYTHON_COMPAT=( python3_{8..11} )

DESCRIPTION="Asahi Linux kernel sources"
HOMEPAGE="https://asahilinux.org/"
LICENSE="GPL-2"
IUSE="symlink"
SLOT="0"
KEYWORDS=""

inherit git-r3
EGIT_REPO_URI="https://github.com/AsahiLinux/linux.git"
EGIT_CLONE_TYPE="shallow"
EGIT_BRANCH="asahi-wip"
SRC_URI=""
BDEPEND="${BDEPEND}
	dev-vcs/git"

RDEPEND="
	app-arch/cpio
	dev-lang/perl
	sys-devel/bc
	sys-devel/bison
	sys-devel/flex
	sys-devel/make
	>=sys-libs/ncurses-5.2
	sys-apps/dtc
	virtual/libelf
	virtual/pkgconfig"

src_unpack() {
	einfo "Using GitHub sources, cloning from AsahiLinux/linux..."
	git-r3_src_unpack
}

src_compile() {
	cd "${S}" || die
}

src_install() {
	dodir /usr/src
	mv "${S}" "${ED}"/usr/src || die
	use symlink && dosym /usr/src/${P} /usr/src/linux
}

pkg_postinst() {
	elog "From here, follow the standard Gentoo Handbook instructions for"
	elog "building a kernel."
	elog " "
	elog "For proper firmware support, see the Asahi Linux wiki."
}

pkg_postrm() {
	elog "Follow the standard kernel removal/upgrade procedure"
}
