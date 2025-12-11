# Maintainer: AxOS Team <ardox@axos-project.com>
pkgname=axos-secureboot-keys
pkgver=1.0
pkgrel=1
pkgdesc="AxOS Secure Boot public key"
arch=('x86_64')
license=('GPL' 'MIT')
depends=('sbsigntools' 'mokutil')
source=(
    "db.crt"
    "axos-secureboot-keys.hook"
)
sha256sums=( '6f0c71e2c495324555209a71df6fab2b26b1b6f676ccf62913f0c031617e9fa3' '8b34884bb254368564edfcba86f0ab10947300c04f0bc62f497dbfc4abeef54f' )

package() {
    install -Dm644 "${srcdir}/db.crt" \
        "$pkgdir/usr/share/axos-secureboot-keys/db.crt"

    install -Dm644 "${srcdir}/axos-secureboot-keys.hook" \
        "$pkgdir/usr/share/libalpm/hooks/axos-secureboot-keys.hook"
}
