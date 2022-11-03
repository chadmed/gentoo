# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"
PYTHON_COMPAT=( python3_{8..11} )

inherit toolchain-funcs

DESCRIPTION="Apple Silicon bootloader and experimentation playground"
HOMEPAGE="https://asahilinux.org/"
LICENSE="MIT"
SLOT="0"
KEYWORDS="arm64"
IUSE="clang"

BDEPEND="
	sys-devel/make
	sys-apps/dtc
	clang? (
		>=sys-devel/clang-13
		>=sys-devel/lld-13
	       )"

RDEPEND="
	>=sys-boot/u-boot-2022.07
	sys-kernel/asahi-sources"

SRC_URI="https://github.com/AsahiLinux/m1n1/archive/refs/tags/v${PV}.tar.gz -> ${PN}-${PV}.tar.gz"

src_compile() {
	cd "${S}" || die
	if use clang; then
		emake CC="clang" \
			USE_CLANG=1 \
			CXX="clang++" \
			LD="ld.lld" \
			AR="$(tc-getAR)" \
			NM="$(tc-getNM)" \
			RANLIB="$(tc-getRANLIB)" \
			OBJCOPY="$(tc-getOBJCOPY)" \
			RELEASE=1 \
			EXTRA_CFLAGS="" \
			ARCH="aarch64-unknown-linux-gnu-" \
			|| die "emake failed"
	else
		emake CC="$(tc-getCC)" \
			CXX="$(tc-getCXX)" \
			LD="$(tc-getLD)" \
			AR="$(tc-getAR)" \
			NM="$(tc-getNM)" \
			RANLIB="$(tc-getRANLIB)" \
			OBJCOPY="$(tc-getOBJCOPY)" \
			RELEASE=1 \
			EXTRA_CFLAGS="" \
			ARCH="aarch64-unknown-linux-gnu-" \
			|| die "emake failed"
	fi
}

src_install() {
	dodir /usr/lib/asahi-boot
	cp "${S}/build/m1n1.bin" "${ED}/usr/lib/asahi-boot/m1n1.bin" || die
}

pkg_postinst() {
	elog "m1n1 has been installed at /usr/lib/asahi-boot/m1n1.bin"
	elog "You must run update-m1n1 for the new version to be installed"
	elog "in the ESP."
	elog "Please see the Asahi Linux Wiki for more information."
	if [ -e "${ROOT}/bin/update-m1n1" ]; then
		ewarn "You need to remove /bin/update-m1n1."
	fi
}

pkg_postrm() {
	elog "m1n1 has been removed from /usr/lib/asahi-boot/ but has not"
	elog "been removed from the ESP. You need to do this manually, though"
	elog "you really shouldn't."
}
