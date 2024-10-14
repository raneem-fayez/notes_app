import 'package:flutter/material.dart';

class customIcon extends StatelessWidget {
  const customIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
