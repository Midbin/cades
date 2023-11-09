#!/bin/bash
set -exuo pipefail
yarn build
cp dist/qrcode.iife.js typst-package/qrcode.js
cp README.md typst-package/
cp LICENSE typst-package/