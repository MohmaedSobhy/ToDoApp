import 'package:flutter/material.dart';

import 'package:to_do_app/Feature/home/presentation/widgets/custome_text_form_field.dart';

class CustomeSelectTimeWidget extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final VoidCallback onTap;
  const CustomeSelectTimeWidget({
    super.key,
    required this.title,
    required this.controller,
    required this.validator,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SizedBox(height: 5),
        CustomeTextFormField(
          hint: title,
          controller: controller,
          validator: validator,
          onTap: onTap,
          suffixIcon: IconButton(
            onPressed: onTap,
            icon: Icon(
              Icons.access_time_rounded,
              color: Colors.grey[200],
              size: 18,
            ),
          ),
        ),
      ],
    );
  }
}
