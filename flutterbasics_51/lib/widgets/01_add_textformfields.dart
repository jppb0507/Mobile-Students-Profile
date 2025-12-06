import 'package:flutter/material.dart';

class AddTextFormFields_01 extends StatefulWidget {
  final String label1;
  final String hintText1;
  final IconData icon1;
  final bool isPassword;
  final ValueChanged<String>? onChanged;
  final TextEditingController textController1;

  const AddTextFormFields_01({
    super.key,
    required this.label1,
    required this.hintText1,
    required this.icon1,
    required this.textController1,
    this.onChanged,
    this.isPassword = false,
  });

  @override
  State<AddTextFormFields_01> createState() => _AddTextFormFields_01State();
}

class _AddTextFormFields_01State extends State<AddTextFormFields_01> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textController1,
      obscureText: _obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text(widget.label1),
        hintText: widget.hintText1,
        suffixIcon: widget.isPassword
            ? IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        )
            : Icon(widget.icon1),
      ),
      onChanged: widget.onChanged,
    );
  }
}
