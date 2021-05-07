import 'package:flutter/material.dart';

class PageIndexIndicaor extends StatelessWidget {
  final bool isActive;

  const PageIndexIndicaor(this.isActive);
  @override
  Widget build(BuildContext context) {
    print(isActive);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.grey : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
