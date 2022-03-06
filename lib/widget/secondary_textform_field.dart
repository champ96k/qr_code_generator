import 'package:flutter/material.dart';

class SecondaryTextFormField extends StatefulWidget {
  final Color defaultColor;
  final Color focusColor;
  final FocusNode? focusNode;
  final String labelText;
  final String? hintText;
  final bool isRequired;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final int maxLength;
  final bool readOnly;
  final int maxLines;

  const SecondaryTextFormField({
    Key? key,
    required this.textEditingController,
    this.maxLength = 400,
    this.maxLines = 1,
    this.validator,
    this.defaultColor = Colors.grey,
    this.focusColor = Colors.purple,
    this.isRequired = false,
    this.focusNode,
    this.keyboardType = TextInputType.text,
    this.readOnly = false,
    this.hintText,
    required this.labelText,
  }) : super(key: key);
  @override
  _SecondaryTextFormFieldState createState() => _SecondaryTextFormFieldState();
}

class _SecondaryTextFormFieldState extends State<SecondaryTextFormField> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    Color _colorText = Theme.of(context).colorScheme.onSurface.withOpacity(0.8);
    return Focus(
      onFocusChange: (hasFocus) {
        // When you focus on input text,
        // you need to notify the color change into the widget.
        setState(() =>
            _colorText = hasFocus ? widget.focusColor : widget.defaultColor);
      },
      child: TextFormField(
        maxLines: widget.maxLines,
        readOnly: widget.readOnly,
        focusNode: widget.focusNode,
        style: textTheme.bodyText2!.copyWith(color: _colorText),
        controller: widget.textEditingController,
        buildCounter: (
          context, {
          required currentLength,
          maxLength,
          required isFocused,
        }) =>
            null,
        keyboardType: widget.keyboardType,
        maxLength: widget.maxLength,
        validator: widget.validator,
        decoration: InputDecoration(
          hintText: widget.hintText,
          labelText: "${widget.labelText} ${widget.isRequired ? "*" : ""}",
          labelStyle: textTheme.bodyText2!.copyWith(color: _colorText),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
