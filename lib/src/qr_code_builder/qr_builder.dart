import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRBuilder extends StatelessWidget {
  final Color color;
  final String qrData;
  const QRBuilder({
    Key? key,
    this.color = Colors.white,
    required this.qrData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: _size.height * 0.05),
      child: Container(
        width: _size.width * 0.18,
        color: color,
        alignment: Alignment.center,
        child: QrImage(
          data: qrData,
          version: QrVersions.auto,
        ),
      ),
    );
  }
}
