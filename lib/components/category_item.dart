import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({required this.text, required this.color, this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 16.0),
        height: 80,
        alignment: Alignment.centerLeft,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
      ),
    );
  }
}
