import 'package:flutter/material.dart';
import 'package:productive/core/colors.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {  },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      height: 48,
      padding: EdgeInsets.all(12),
      color: kdarkblack,
      child: Image.asset(
        imagePath,
        height: 20,
      ),
    );
  }
}
