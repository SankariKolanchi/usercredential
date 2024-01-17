import 'package:flutter/material.dart';

class AppCircularWidget extends StatelessWidget {
  const AppCircularWidget({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Center(
        child: CircularProgressIndicator(
          color: color,
          strokeWidth: 2.0,
        ),
      ),
    );
  }
}
