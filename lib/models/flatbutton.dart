import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;
  final double fontSize;
  final double width;
  final double height;

  const CustomFlatButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.color = const Color(0xffc44536),
    this.fontSize = 28,
    this.width = 150,
    this.height = 60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
