import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  InputField({
    Key? key,
    this.controller,
    required this.label,
    this.enabled = true,
    this.onChanged,
    this.textInputType = TextInputType.text,
  }) : super(key: key);

  final TextEditingController? controller;
  final TextInputType textInputType;
  final bool enabled;
  final String label;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          enabled: enabled,
          onChanged: onChanged,
          keyboardType: textInputType,
          style: Theme.of(context).textTheme.bodyText1,
          decoration: InputDecoration(
            hintStyle: Theme.of(context).textTheme.caption,
            labelText: label,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}