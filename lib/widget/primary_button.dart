import 'package:flutter/material.dart';
import 'package:qr_code_generator/core/constant/constant_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Container(
      height: _size.height * 0.08,
      width: _size.width * 0.2,
      decoration: BoxDecoration(
        color: ConstantColors.primaryDarkIndigo,
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.restart_alt_outlined,
            color: Colors.white,
          ),
          SizedBox(width: _size.width * 0.01),
          Text(
            'GENERATE QR CODE',
            style: _textTheme.bodyText2!.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
