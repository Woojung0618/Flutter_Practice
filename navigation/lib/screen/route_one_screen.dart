import 'package:flutter/material.dart';
import 'package:navigation/screen/route_two_screen.dart';

import '../layout/default_layout.dart';

class RouteOneScreen extends StatelessWidget {
  final int number;
  const RouteOneScreen({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'RouteOneScreen',
        children: [
          Text(
            'argument: $number',
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            onPressed: (){
              Navigator.of(context).pop(
                456,
              );
            },
            child: Text('POP')
          ),
          OutlinedButton(
              onPressed: (){
                Navigator.of(context).maybePop( /// pop이 가능할 경우에만 pop
                  456,
                );
              },
              child: Text('maybePop')
          ),
          OutlinedButton(
              onPressed: (){
                print(Navigator.of(context).canPop()); /// pop 여부를 t/f 로 반환
              },
              child: Text('canPop')
          ),
          OutlinedButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                  builder: (BuildContext context){
                    return RouteTwoScreen();
                  },
                  settings: RouteSettings(
                    arguments: 789,
                  ))
                );
              },
              child: Text('PUSH'),
          ),
        ]
    );
  }
}
