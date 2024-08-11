# Maintainer Sokoloft
# Contributor greyltc
# Contributor piernov

pkgname=flexbv-bin
pkgver=5.0360
pkgrel=1
pkgdesc="FlexBV Free Professional Boardview"
arch=('x86_64')
url="https://pldaniels.com/flexbv5/"
license=('custom')
conflicts=('flexbv-beta-bin')
depends=('sdl2' 'fontconfig' 'sqlite' 'zlib' 'gtk3' 'libpng')
makedepends=()
source=("${pkgname}-${pkgver}.tar.gz::https://pldaniels.com/flexbv5/free/FlexBVFree-${pkgver}-linux.tar.gz"
	"flexbv.desktop"
	"flexbv-free-icon.svg::https://pldaniels.com/flexbv5/assets/flexbv-free-icon.svg")
sha256sums=('1bcfd1fa10a47a940505f6c4916f0e2ed4b36a054715baa60f8a23efe61a2ee4'
            '56936437f993094afc3d81da94f3ea7cf124e803fa1ebae90a946784ad718269'
            '4e45f984734fcfb402d265955439ccdfb2f60c8634e46f9e3d8c1ba434f8293c')

package() {
	install -D "FlexBVFree-$pkgver-linux"/* "$pkgdir/usr/bin/flexbv"
	install -D -m755 flexbv.desktop "$pkgdir/usr/share/applications/flexbv.desktop" # two different paths on arch wiki. This one works for me on KDE
	install -D -m755 flexbv-free-icon.svg "$pkgdir/usr/share/icons/hicolor/scalable/apps/flexbv-free-icon.svg" # KDE works. Not tested on XFCE
}
