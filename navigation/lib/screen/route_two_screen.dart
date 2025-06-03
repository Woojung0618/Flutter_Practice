import 'package:flutter/material.dart';
import '../layout/default_layout.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return DefaultLayout(
        title: 'RouteTwoScreen',
        children: [
          Text(
            arguments.toString(),
            textAlign: TextAlign.center
          ),
          OutlinedButton(
            onPressed:  (){
              Navigator.of(context).pop();
            }
            , child: Text('POP')
          ),
          OutlinedButton(
            onPressed: (){
              Navigator.of(context).pushNamed(
                '/three',
                arguments: 1111,
              );
            },
            child: Text('PUSH to RouteThreeScreen')
          ),
          OutlinedButton(
              onPressed: (){
                Navigator.of(context).pushReplacementNamed(
                  '/three',
                  arguments: 2222,
                );
              },
              child: Text('pushReplacementNamed')
          ),
          OutlinedButton(
              onPressed: (){
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/three',
                  (route){
                    /// 만약 스택에서 삭제할거면 false , 아니라면 true 반환
                    return route.settings.name == '/'; ///  home 라우트를 제외하고 모두 삭제
                  },
                  arguments: 3333,
                );
              },
              child: Text('pushNamedAndRemoveUntil')
          )
        ]
    );
  }
}
