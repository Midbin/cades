import QRCode from 'qrcode-svg';

export default function generateQRCode(content) {
    if (content === undefined) {
        return;
      }
    var qrcode = new QRCode({content: content, container: "svg"});
    return qrcode.svg();
}