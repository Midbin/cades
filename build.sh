#!/bin/bash
set -exuo pipefail
yarn build
cp dist/qrcode.iife.js typst-package/qrcode.js
cp dist/third-party-licenses.txt typst-package/NOTICE
echo "Dependencies:" > typst-package/NOTICE
echo >> typst-package/NOTICE
cat dist/third-party-licenses.txt >> typst-package/NOTICE
cp README.md typst-package/
cp LICENSE typst-package/
