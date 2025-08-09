import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({required this.totalSize, required this.currentIndex, this.size = 4, super.key});

  final int totalSize;
  final int currentIndex;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        totalSize,
        (index) {
          if (index == currentIndex) {
            return Container(
              width: size * 4,
              height: size,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.grey.shade700,
              ),
              margin: EdgeInsets.only(right: index == totalSize - 1 ? 0 : size),
            );
          }
          return Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade400,
            ),
            margin: EdgeInsets.only(right: index == totalSize - 1 ? 0 : size),
          );
        },
      ),
    );
  }
}
