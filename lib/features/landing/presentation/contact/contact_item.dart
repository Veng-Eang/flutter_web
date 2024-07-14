import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final String title;
  final String subtile;
  final IconData icon;
  const ContactItem({
    super.key,
    required this.title,
    required this.subtile,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: themeData.colorScheme.onPrimary,
          size: 40,
        ),
        const SizedBox(height: 8),
        Text(title, style: themeData.textTheme.bodyLarge),
        const SizedBox(height: 8),
        InkWell(
          onTap: () {},
          child: Text(
            subtile,
            style: themeData.textTheme.bodyMedium!.copyWith(
              decoration: TextDecoration.underline,
              decorationColor: Colors.white70,
            ),
          ),
        )
      ],
    );
  }
}
