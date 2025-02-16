import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.green,
          height: 40.0,
          width: 40.0,
        ),
        const Positioned(
          top: 8.0,
          left: 8.0,
          child: Text('Some Text'),
        ),
      ],
    );
  }
}
