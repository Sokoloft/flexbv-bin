# Maintainer greyltc
# Maintainer Sokoloft
# Contributor piernov

pkgname=flexbv-bin
pkgver=5.0360
pkgrel=1
pkgdesc="FlexBV Free Professional Boardview"
arch=('x86_64')
url="https://pldaniels.com/flexbv/"
license=('custom')
conflicts=('flexbv-beta-bin')
depends=('sdl2' 'fontconfig' 'sqlite' 'zlib' 'gtk3' 'libpng')
makedepends=()
source=("${pkgname}-${pkgver}.tar.gz::https://pldaniels.com/flexbv5/free/FlexBVFree-${pkgver}-linux.tar.gz"
	"flexbv.sh"
	"flexbv.desktop"
	"flexbv-free-icon.svg")
sha256sums=('1bcfd1fa10a47a940505f6c4916f0e2ed4b36a054715baa60f8a23efe61a2ee4'
            '481d2b5ec871359f2a3e44d0ff91ba320b3f32662bb8704f871bc95572e1bc4d'
            '106771a6e842986a7d85e3cab4957a0bb8de4ab79afd86fe41925d5a96c7c7ee'
            '4e45f984734fcfb402d265955439ccdfb2f60c8634e46f9e3d8c1ba434f8293c')

package() {
	install -d -m755 "$pkgdir/opt/flexbv"
	cp -a "FlexBVFree-$pkgver-linux"/* "$pkgdir/opt/flexbv"
	install -D -m755 flexbv.sh "$pkgdir/usr/bin/flexbv"
	ln -s "/tmp/flexbv.log" "$pkgdir/opt/flexbv/flexbv.log" # This symlink does not work on my system, why is it needed?
	echo "Version=${pkgver}" >> flexbv.desktop # Comment out if you're editing the PKGBUILD
	install -D -m755 flexbv.desktop "$pkgdir/usr/share/applications/flexbv.desktop" # two different dir's on arch wiki. This one works for me
	install -D -m755 flexbv-free-icon.svg "$pkgdir/usr/share/icons/hicolor/scalable/apps/flexbv-free-icon.svg" # Works on KDE. Might not for other DE's
}
