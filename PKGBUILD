# Maintainer: AxOS Team <ardox@axos-project.com>
pkgname=axos-secureboot-keys
pkgver=1.0
pkgrel=1
pkgdesc="AxOS Secure Boot public key"
arch=('x86_64')
license=('GPL' 'MIT')
depends=('sbsigntools')
source=(
    "db.crt"
)
sha256sums=( '6f0c71e2c495324555209a71df6fab2b26b1b6f676ccf62913f0c031617e9fa3' )

package() {
    install -Dm644 "${srcdir}/db.crt" \
        "$pkgdir/usr/share/axos-secureboot-keys/db.crt"
}
