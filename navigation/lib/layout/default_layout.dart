import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final List<Widget> children;
  final String title;

  const DefaultLayout({
    super.key,
    required this.children,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
        body: Padding(padding:
        const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: children,
            )
        )
    );
  }
}
