# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Tests for distributed-process"
HOMEPAGE="http://github.com/haskell-distributed/distributed-process-tests"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/ansi-terminal-0.5:=[profile?] <dev-haskell/ansi-terminal-0.7:=[profile?]
	>=dev-haskell/binary-0.5:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	dev-haskell/distributed-process:=[profile?]
	dev-haskell/distributed-static:=[profile?]
	>=dev-haskell/hunit-1.2:=[profile?] <dev-haskell/hunit-1.3:=[profile?]
	>=dev-haskell/network-2.3:=[profile?] <dev-haskell/network-2.7:=[profile?]
	>=dev-haskell/network-transport-0.4.1.0:=[profile?] <dev-haskell/network-transport-0.5:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/rematch-0.1.2.1:=[profile?]
	>=dev-haskell/test-framework-0.6:=[profile?] <dev-haskell/test-framework-0.9:=[profile?]
	>=dev-haskell/test-framework-hunit-0.2.0:=[profile?] <dev-haskell/test-framework-hunit-0.4:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/network-2.3 <dev-haskell/network-2.5
		>=dev-haskell/network-transport-tcp-0.3 <dev-haskell/network-transport-tcp-0.5 )
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-haddock.patch
	cabal_chdeps \
		'random >= 1.0 && < 1.1' 'random >= 1.0 && < 1.2'
}
