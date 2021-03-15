import 'package:flutter/material.dart';

class FormTitle extends StatelessWidget {
  final String title;
  FormTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title ?? '',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
