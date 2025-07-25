# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit gnome2-utils

DESCRIPTION="Show tooltip with full name and description"
HOMEPAGE="https://github.com/RaphaelRochet/applications-overview-tooltip"
SRC_URI="https://github.com/RaphaelRochet/applications-overview-tooltip/archive/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${P/gnome-shell-extension-}"
extension_uuid="applications-overview-tooltip@RaphaelRochet"

LICENSE="CC0-1.0"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="
	app-eselect/eselect-gnome-shell-extensions
	>=gnome-base/gnome-shell-46
"

src_install() {
	einstalldocs
	insinto /usr/share/glib-2.0/schemas
	doins schemas/*.xml
	rm -rf README.md schemas || die
	insinto /usr/share/gnome-shell/extensions/"${extension_uuid}"
	doins -r *
}

pkg_preinst() {
	gnome2_schemas_savelist
}

pkg_postinst() {
	gnome2_schemas_update
	ebegin "Updating list of installed extensions"
	eselect gnome-shell-extensions update
	eend $?
}

pkg_postrm() {
	gnome2_schemas_update
}
