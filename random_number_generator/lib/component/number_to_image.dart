import 'package:flutter/material.dart';

class NumberToImage extends StatelessWidget {

  final int number;
  const NumberToImage({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: number
            .toString()
            .split('')
            .map(
              (n) => Image.asset(
            'asset/img/$n.png',
            width: 50,
            height: 70,
          ),
        )
            .toList()
    );
  }
}
