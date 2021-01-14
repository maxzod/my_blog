import "package:flutter/material.dart";

class MainInputField extends StatelessWidget {
  // final Function()? onClickPrefix;
  final String labelText;
  // final Function(String)? onChanged;
  // final IconData? iconData;
  final TextEditingController controller;
  // final String? errorText;
  // final String? helperText;
  final bool enabled;
  final bool obsecure;
  final int minLines;
  final TextInputType keyboardType;

  MainInputField({
    this.labelText = 'no lable',
    // this.helperText,
    this.keyboardType = TextInputType.text,
    // this.onChanged,
    this.enabled = true,
    this.minLines = 1,
    // this.iconData,
    this.controller,
    // this.errorText,
    this.obsecure = false,
    // this.onClickPrefix,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.01,
      ),
      child: TextField(
        obscureText: obsecure,
        enabled: enabled,
        controller: controller,
        style: TextStyle(color: Colors.black, fontSize: 18),
        minLines: minLines,
        maxLines: keyboardType == null
            ? 1
            : keyboardType == TextInputType.multiline
                ? null
                : 1,
        keyboardType: keyboardType,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          labelText: labelText,
          border: OutlineInputBorder(
            borderSide: BorderSide(),
          ),
        ),
      ),
    );
  }
}
