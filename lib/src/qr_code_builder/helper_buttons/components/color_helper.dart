import 'package:flutter/material.dart';

class ColorHelper extends StatelessWidget {
  final Color color;
  const ColorHelper({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height * 0.05,
      width: _size.width * 0.025,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6.0),
      ),
    );
  }
}
