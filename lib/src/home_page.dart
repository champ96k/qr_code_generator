import 'package:flutter/material.dart';
import 'package:qr_code_generator/core/constant/constant_colors.dart';
import 'package:qr_code_generator/src/form_builder/email_form/email_form_builder.dart';
import 'package:qr_code_generator/src/items_header/items_builder.dart';
import 'package:qr_code_generator/src/qr_code_builder/qr_code_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.primarybackgournd,
      body: Row(
        children: const [
          Expanded(flex: 3, child: ItemsBuilder()),
          Expanded(flex: 6, child: EmailFormBuilder()),
          Expanded(flex: 8, child: QRCodeBuilder()),
        ],
      ),
    );
  }
}
