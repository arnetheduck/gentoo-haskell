# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Directory layout DSL"
HOMEPAGE="http://hackage.haskell.org/package/directory-layout"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # needs 'root' for tests

RDEPEND=">=dev-haskell/command-qq-0.3:=[profile?]
	>=dev-haskell/free-4.7:=[profile?]
	>=dev-haskell/hspec-1.8:=[profile?]
	>=dev-haskell/lens-4.0.1:=[profile?]
	>=dev-haskell/semigroups-0.12:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2.3:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( dev-haskell/doctest
		>=dev-haskell/temporary-1.2.0.3 )
"