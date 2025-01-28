import 'package:flutter/material.dart';
import 'package:row_and_column/const/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: colors.map((e) =>
                    Container(
                        height: 50,
                        width: 50,
                        color: e,
                    )
                ).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: colors.map((e) =>
                    Container(
                      height: 50,
                      width: 50,
                      color: e,
                    )
                ).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: colors.map((e) =>
                    Container(
                      height: 50,
                      width: 50,
                      color: e,
                    )
                ).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
