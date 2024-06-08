pkgname=flexbv-bin
pkgver=5.0345
pkgrel=1
pkgdesc="FlexBV Free Professional Boardview"
arch=('x86_64')
url="https://pldaniels.com/flexbv/"
license=('custom')
conflicts=('flexbv-beta-bin')
depends=('sdl2' 'fontconfig' 'sqlite' 'zlib' 'gtk3' 'libpng')
makedepends=()
source=("${pkgname}-${pkgver}.tar.gz::https://pldaniels.com/flexbv5/free/FlexBVFree-${pkgver}-linux.tar.gz"
	"flexbv.sh")
sha256sums=('2d32022186881e4d6930901bf0c7c820330a6c0a58d6e756f72951a09590e703'
            'e7e9e08eb39f501e979d1a68eef1293f113d867d5bdf085c28cfbfadeab697d9')

package() {
	install -d -m755 "$pkgdir/opt/flexbv"
	cp -a "FlexBVFree-$pkgver-linux"/* "$pkgdir/opt/flexbv"
	install -D -m755 flexbv.sh "$pkgdir/usr/bin/flexbv"
	ln -s "/tmp/flexbv.log" "$pkgdir/opt/flexbv/flexbv.log"
}
