# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Library and tool for parsing .eventlog files from GHC"
HOMEPAGE="http://hackage.haskell.org/package/ghc-events"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.5:=[profile?]
		<dev-haskell/binary-0.7:=[profile?]
		>=dev-haskell/mtl-1.1:=[profile?]
		<dev-haskell/mtl-3.0:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

RESTRICT=test # missing events

src_prepare() {
	mkdir -p dist/build \
		|| die "Could not create dist/build directory"
	cp -p GHC/RTS/EventLogFormat.h dist/build/ \
		|| die "Could not copy header file to dist/build for haddock"
}
