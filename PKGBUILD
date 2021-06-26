# Maintainer: Karol Purgal <xdzielony at gmail dot com>
# Contributor: Karol Purgal <xdzielony at gmail dot com>
pkgname=susfetch
pkgver=0.1.1
pkgrel=1
pkgdesc="Makes your pc sussy baka"
arch=('any')
provides=('susfetch')
conflicts=('susfetch')
license=('GPL3')
source=("${pkgname}"::git+https://github.com/zielony12/susfetch.git)
sha256sums=('SKIP')

pkgver() {
  cd "$pkgname"
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
    install -Dm755 "${srcdir}"/"${pkgname}"/susfetch.sh "${pkgdir}"/usr/bin/susfetch
    install -Dm644 "${srcdir}"/"${pkgname}"/LICENSE "${pkgdir}"/usr/share/licenses/"${pkgname}"/LICENSE
}
