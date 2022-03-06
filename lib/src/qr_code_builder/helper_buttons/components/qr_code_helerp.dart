import 'package:flutter/material.dart';
import 'package:qr_code_generator/core/constant/constant_colors.dart';

class QRCodeHelper extends StatelessWidget {
  const QRCodeHelper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height * 0.05,
      width: _size.width * 0.025,
      decoration: BoxDecoration(
        color: ConstantColors.secondaryIndigo,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: const Icon(
        Icons.qr_code_2,
        color: Colors.white,
      ),
    );
  }
}
