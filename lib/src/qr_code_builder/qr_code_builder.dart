import 'package:flutter/material.dart';
import 'package:qr_code_generator/core/constant/constant_colors.dart';
import 'package:qr_code_generator/src/qr_code_builder/helper_buttons/heler_buttons_builder.dart';
import 'package:qr_code_generator/src/qr_code_builder/qr_builder.dart';

class QRCodeBuilder extends StatelessWidget {
  const QRCodeBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          margin: EdgeInsets.symmetric(
            horizontal: constraints.maxWidth < 600
                ? _size.width * 0.05
                : _size.width * 0.1,
            vertical: _size.height * 0.05,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: ConstantColors.primaryIndigo,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///[QR Code] box
              const Expanded(
                flex: 6,
                child: QRBuilder(
                  qrData: 'Hello',
                ),
              ),

              ///[Frame],[Shape],[Logo] buttons
              const Expanded(
                flex: 5,
                child: HelperButtonsBuilder(),
              ),

              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.cyan,
                      ),
                      height: _size.height * 0.06,
                      width: _size.width * 0.1,
                      child: const Text("JPG"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.orange,
                      ),
                      height: _size.height * 0.06,
                      width: _size.width * 0.1,
                      child: const Text("PDF"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
