import 'package:flutter/material.dart';
import 'package:portfolio/features/landing/presentation/contact/contact_item.dart';

class ContactItemContent extends StatelessWidget {
  final bool isHorizontal;
  final List<ContactItem> data;
  const ContactItemContent({
    super.key,
    required this.isHorizontal,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    if (isHorizontal) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: data
            .map(
              (item) => ContactItem(
                  title: item.title, subtile: item.subtile, icon: item.icon),
            )
            .toList(),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: data
            .map(
              (item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ContactItem(
                  title: item.title,
                  subtile: item.subtile,
                  icon: item.icon,
                ),
              ),
            )
            .toList(),
      );
    }
  }
}
