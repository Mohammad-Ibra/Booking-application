import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class TextWidgetInput extends StatelessWidget {
  final String? label;
  final Icon? icon;
  const TextWidgetInput({Key? key, this.label, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getWidtht(10)),
      width: AppLayout.getWidtht(400),
      height: AppLayout.getHeight(55),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
          icon: icon,
        ),
      ),
    );
  }
}
