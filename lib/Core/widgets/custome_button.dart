import 'package:flutter/material.dart';

class CustomeButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color backGround;
  final double? width;
  const CustomeButtonWidget(
      {super.key,
      required this.title,
      required this.onTap,
      this.width,
      required this.backGround});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: backGround,
      minWidth: (width != null) ? width : null,
      padding: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.displaySmall,
      ),
    );
  }
}
