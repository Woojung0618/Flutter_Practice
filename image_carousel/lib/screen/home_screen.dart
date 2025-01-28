import 'dart:async';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? timer;
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(
        Duration(seconds: 1),
        (timer) {
          int currentPage = controller.page!.toInt();
          int nextPage = currentPage + 1;

          if (nextPage > 2){
            nextPage = 0;
          }

          controller.animateToPage(nextPage,
              duration: Duration(milliseconds: 500),
              curve: Curves.linear
          );
        },
    );

  }

  @override
  void dispose() {

    if(timer != null){
      timer!.cancel();
    }

    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [1,2,3]
            .map((e) =>
            Image.asset(
                'asset/img/image_$e.jpeg',
            ),
        ).toList(),
      )
    );
  }
}
