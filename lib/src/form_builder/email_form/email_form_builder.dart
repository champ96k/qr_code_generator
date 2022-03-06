import 'package:flutter/material.dart';
import 'package:qr_code_generator/core/constant/constant_colors.dart';
import 'package:qr_code_generator/widget/primary_button.dart';
import 'package:qr_code_generator/widget/secondary_textform_field.dart';

class EmailFormBuilder extends StatefulWidget {
  const EmailFormBuilder({Key? key}) : super(key: key);

  @override
  State<EmailFormBuilder> createState() => _EmailFormBuilderState();
}

class _EmailFormBuilderState extends State<EmailFormBuilder> {
  final TextEditingController _emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    final _size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Email",
          style: _textTheme.headline3!.copyWith(
            fontWeight: FontWeight.w600,
            color: ConstantColors.primaryIndigo,
          ),
        ),
        SizedBox(height: _size.height * 0.04),
        SecondaryTextFormField(
          validator: (value) {
            return null;
          },
          isRequired: true,
          labelText: "Add your email",
          textEditingController: _emailcontroller,
          maxLines: 2,
        ),
        SizedBox(height: _size.height * 0.04),
        SecondaryTextFormField(
          validator: (value) {
            return null;
          },
          isRequired: true,
          labelText: "Enter email subject",
          textEditingController: _emailcontroller,
          maxLines: 2,
        ),
        SizedBox(height: _size.height * 0.04),
        SecondaryTextFormField(
          maxLines: 5,
          validator: (value) {
            return null;
          },
          isRequired: true,
          labelText: "Enter your message",
          textEditingController: _emailcontroller,
        ),
        SizedBox(height: _size.height * 0.09),
        const PrimaryButton(),
      ],
    );
  }
}
