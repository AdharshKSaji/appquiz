
import 'package:appquiz/core/constants/colorconstants.dart';
import 'package:appquiz/view/firstscreen.dart';
import 'package:flutter/material.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => FirstScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorConstants.normalBlack,
      body: Center(
        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkwvbcbMT5sUdaVgoOFcoeLKDc8DbfRWSuA67cZ3TczInrWUW3hZWe0TPQZ9MYfM6z0TE&usqp=CAU",
        fit: BoxFit.fill,),
      ),
    );
  }
}