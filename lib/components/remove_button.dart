import 'package:flutter/material.dart';

class RemoveButton extends StatelessWidget {
  const RemoveButton({super.key, required this.onTap});

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black, width: 1)),
        child: const Icon(
          Icons.remove,
          color: Colors.red,
        ),
      ),
    );
  }
}
