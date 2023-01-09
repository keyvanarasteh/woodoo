import 'package:flutter/material.dart';
import 'package:responsivedashboard/pallete.dart';
import 'package:responsivedashboard/responsive/pallete.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  const LoginField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Pallete.borderColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Pallete.gradient3,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
