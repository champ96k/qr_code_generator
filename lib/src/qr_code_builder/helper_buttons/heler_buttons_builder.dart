import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:qr_code_generator/core/constant/constant_colors.dart';
import 'package:qr_code_generator/src/qr_code_builder/helper_buttons/components/color_helper.dart';
import 'package:qr_code_generator/src/qr_code_builder/helper_buttons/components/qr_code_helerp.dart';

class HelperButtonsBuilder extends StatefulWidget {
  const HelperButtonsBuilder({Key? key}) : super(key: key);

  @override
  State<HelperButtonsBuilder> createState() => _HelperButtonsBuilderState();
}

class _HelperButtonsBuilderState extends State<HelperButtonsBuilder> {
  bool isFrameExpand = false;
  bool isShapeAndColorExpand = false;
  bool isLogoExpand = false;

  // create some values
  Color pickerColor = const Color(0xff443a49);
  Color currentColor = const Color.fromARGB(255, 255, 0, 0);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    final buttonHeight = _size.height * 0.065;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ///[Frame] button
        InkWell(
          onTap: () {
            if (!isFrameExpand) {
              setState(() {
                isFrameExpand = !isFrameExpand;
                isShapeAndColorExpand = false;
                isLogoExpand = false;
              });
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: ConstantColors.primaryDarkIndigo,
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: isFrameExpand ? (2 * buttonHeight) : buttonHeight,
            width: _size.width * 0.2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: _size.width * 0.02),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "FRAME",
                        style: _textTheme.bodyText2!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isFrameExpand = !isFrameExpand;
                            isShapeAndColorExpand = false;
                            isLogoExpand = false;
                          });
                        },
                        child: Icon(
                          isFrameExpand
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down_sharp,
                          color: Colors.white,
                          size: 18.0,
                        ),
                      ),
                    ],
                  ),
                  if (isFrameExpand) ...[
                    SizedBox(height: _size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        QRCodeHelper(),
                        QRCodeHelper(),
                        QRCodeHelper(),
                        QRCodeHelper(),
                        QRCodeHelper(),
                      ],
                    ),
                  ]
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: _size.height * 0.02),

        ///[Shape and colors] button
        InkWell(
          onTap: () {
            if (!isShapeAndColorExpand) {
              setState(() {
                isShapeAndColorExpand = !isShapeAndColorExpand;
                isLogoExpand = false;
                isFrameExpand = false;
              });
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: ConstantColors.primaryDarkIndigo,
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: isShapeAndColorExpand ? (2 * buttonHeight) : buttonHeight,
            width: _size.width * 0.2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: _size.width * 0.02),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SHAPE & COLOR",
                        style: _textTheme.bodyText2!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isShapeAndColorExpand = !isShapeAndColorExpand;
                            isLogoExpand = false;
                            isFrameExpand = false;
                          });
                        },
                        child: Icon(
                          isShapeAndColorExpand
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down_sharp,
                          color: Colors.white,
                          size: 18.0,
                        ),
                      ),
                    ],
                  ),
                  if (isShapeAndColorExpand) ...[
                    SizedBox(height: _size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const ColorHelper(color: Colors.cyan),
                        const ColorHelper(color: Colors.pink),
                        const ColorHelper(color: Colors.brown),
                        const ColorHelper(color: Colors.purple),
                        InkWell(
                          onTap: () {
                            // raise the [showDialog] widget
                            showDialog(
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Pick a color!'),
                                  content: SingleChildScrollView(
                                    child: ColorPicker(
                                      pickerColor: pickerColor,
                                      onColorChanged: changeColor,
                                    ),
                                  ),
                                  actions: <Widget>[
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ElevatedButton(
                                          child: const Text('Select'),
                                          onPressed: () {
                                            setState(() =>
                                                currentColor = pickerColor);
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                              context: context,
                            );
                          },
                          child: Container(
                            height: _size.height * 0.05,
                            width: _size.width * 0.025,
                            decoration: BoxDecoration(
                              color: currentColor,
                              border: Border.all(
                                width: 0.75,
                                color: currentColor ==
                                        const Color.fromARGB(255, 255, 0, 0)
                                    ? Colors.transparent
                                    : Colors.white,
                              ),
                              gradient: currentColor ==
                                      const Color.fromARGB(255, 255, 0, 0)
                                  ? const LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Colors.yellow,
                                        Colors.red,
                                        Colors.orange,
                                        Colors.blue,
                                      ],
                                    )
                                  : null,
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]
                ],
              ),
            ),
          ),
        ),

        SizedBox(height: _size.height * 0.02),

        ///[LOGO] buttons
        Container(
          decoration: BoxDecoration(
            color: ConstantColors.primaryDarkIndigo,
            borderRadius: BorderRadius.circular(8.0),
          ),
          height: isLogoExpand ? buttonHeight * 2 : buttonHeight,
          width: _size.width * 0.2,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: _size.width * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "LOGO",
                  style: _textTheme.bodyText2!.copyWith(
                    color: Colors.white,
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Colors.white,
                  size: 18.0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }
}
