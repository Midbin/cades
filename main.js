import QRCode from 'qrcode-svg';

export default function generateQRCode(content, color, background, errorCorrection, padding) {
    if (content === undefined) {
        return;
      }
    var qrcode = new QRCode({
        content: content, 
        container: "svg", 
        color: color, 
        background: background,
        ecl: errorCorrection,
        padding: padding,
    });
    return qrcode.svg();
}