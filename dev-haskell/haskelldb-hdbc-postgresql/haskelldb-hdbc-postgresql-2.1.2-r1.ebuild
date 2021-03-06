# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="HaskellDB support for the HDBC PostgreSQL driver"
HOMEPAGE="https://github.com/m4dc4p/haskelldb"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">dev-db/postgresql-7
		=dev-haskell/haskelldb-2*:=[profile?]
		=dev-haskell/haskelldb-hdbc-2*:=[profile?]
		=dev-haskell/hdbc-2*:=[profile?]
		=dev-haskell/hdbc-postgresql-2*:=[profile?]
		>=dev-haskell/mtl-1:=[profile?]
		<dev-haskell/mtl-3:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
