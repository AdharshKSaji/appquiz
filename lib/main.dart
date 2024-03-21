import 'package:appquiz/view/splashscreen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyNewAPP());
}
class MyNewAPP extends StatelessWidget {
  const MyNewAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen(),theme: ThemeData.dark(),);
  }
}