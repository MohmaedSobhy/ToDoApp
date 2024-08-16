import 'package:flutter/material.dart';
import 'package:to_do_app/Core/style/colors/app_color.dart';

class CustomeTextFormField extends StatelessWidget {
  final String? hint;

  final IconButton? suffixIcon;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;

  const CustomeTextFormField({
    super.key,
    this.hint,
    this.controller,
    this.suffixIcon,
    this.onTap,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      validator: validator,
      maxLines: 1,
      controller: controller,
      style: Theme.of(context).textTheme.displaySmall,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
              color: AppColor.white.withOpacity(0.85),
            ),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Color(0xff979797)),
        ),
      ),
    );
  }
}
