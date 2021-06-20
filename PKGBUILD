pkgname=susfetch
pkgver=1
pkgrel=1
pkgdesc="Makes your pc more sus"
arch=('any')
provides=('susfetch')
conflicts=('susfetch')
license=('GPL3')
source=("${pkgname}"::git+https://github.com/zielony12/susfetch.git)
sha256sums=("SKIP")

package() {
	install -Dm755 "${srcdir}"/"${pkgname}"/susfetch.sh "${pkgdir}"/usr/bin/susfetch
	install -Dm644 "${srcdir}"/"${pkgname}"/LICENSE "${pkgdir}"/usr/share/licenses/"${pkgname}"/LICENSE
}
