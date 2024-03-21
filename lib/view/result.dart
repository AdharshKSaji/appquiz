import 'package:appquiz/controller/homecontroller/homecontroller.dart';
import 'package:appquiz/core/constants/colorconstants.dart';
import 'package:appquiz/view/firstscreen.dart';
import 'package:flutter/material.dart';


class MyResult
 extends StatelessWidget {
  const MyResult({super.key,required this.rightAnswerCount,
  required this.wrongAnswerCount,
  required this.totalScoreCount,
  required this.skippedAnswer});
final int rightAnswerCount;
final int wrongAnswerCount;
final int totalScoreCount;
final int skippedAnswer;
  @override
  Widget build(BuildContext context) {
    final percentage=(rightAnswerCount/HomeScreenController.flutterQuestions.length)*100;
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("CONGRATS!",style: TextStyle(
            fontSize: 40,fontWeight: FontWeight.bold
          ),),
            Text("Your Score is:${percentage.round()}%",style: TextStyle(fontSize: 30,color: ColorConstants.normalGreen),),
            Text("Correct Answer:${rightAnswerCount.round()}%",style: TextStyle(fontSize: 20),),

            Text("Wrong Question ${wrongAnswerCount.round()}%",style: TextStyle(fontSize: 20),),
            Text("Skiped Question ${skippedAnswer.round()}%",style: TextStyle(fontSize: 20),),
            ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => FirstScreen(),));

            }, child: Text("Restart"))

          ],
        ),
      ),
    );
  }
}