

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:appquiz/controller/homecontroller/homecontroller.dart';
import 'package:appquiz/core/constants/colorconstants.dart';
import 'package:appquiz/model/categorymodel.dart';
import 'package:appquiz/view/result.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.Category});
  final CategoryModel Category;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQstnIndex = 0;
  int? selectedAnswerIndex;
  int rightAnswerCount=0;
  int wrongAnswerCount=0;
  int totalScoreCount=0;
  int skippedAnswer=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.normalBlack,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorConstants.normalBlack),
                child: Text(
                 widget.Category.question[currentQstnIndex].question,
                  style: TextStyle(
                      color: ColorConstants.primarWhite, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: List.generate(
                    widget.Category.question[currentQstnIndex].optionsList.length,
                    (index) => InkWell(
                          onTap: () {
                            if (selectedAnswerIndex == null) {
                              selectedAnswerIndex = index;
                              if(selectedAnswerIndex==widget.Category.question[currentQstnIndex].correctAnswerIndex){
                                rightAnswerCount++;
                              }
                              print(rightAnswerCount);

                              setState(() {});
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: (index ==
                                                  widget.Category.question
                                          [
                                                          currentQstnIndex]
                                                      .correctAnswerIndex &&
                                              selectedAnswerIndex != null)
                                          ? Colors.green
                                          : selectedAnswerIndex == index
                                              ? (selectedAnswerIndex ==
                                                      HomeScreenController
                                                          .flutterQuestions[
                                                              currentQstnIndex]
                                                          .correctAnswerIndex
                                                  ? Colors.green
                                                  : Colors.red)
                                              : ColorConstants.normalGrey),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    widget.Category.question[currentQstnIndex]
                                        .optionsList[index],
                                    style: TextStyle(
                                        color: ColorConstants.primarWhite,
                                        fontSize: 18),
                                  ),
                                  Icon(buildIcons(index)
                                    ,
                                    color: ColorConstants.normalGreen,
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (currentQstnIndex <
                      widget.Category.question.length - 1) {
                    currentQstnIndex++;
                    selectedAnswerIndex = null;
                    setState(() {
                     
                    });
                  }else{ Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => MyResult(rightAnswerCount: rightAnswerCount,
                  wrongAnswerCount: wrongAnswerCount,
                  totalScoreCount: totalScoreCount, skippedAnswer: skippedAnswer,)));}
                },
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstants.primaryBlue),
                  child: Center(
                    child: Text(textAlign: TextAlign.center,
                    currentQstnIndex==widget.Category.question.length-1
                    ?"finish":selectedAnswerIndex==null?"skip":
                      "Next",
                      style: TextStyle(
                          color: ColorConstants.primarWhite, fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Color buldcolor(int index){
    if(index==
    widget.Category.question[currentQstnIndex].correctAnswerIndex && selectedAnswerIndex !=null
    ){
      //to show right anw if selected answer is not null
      return ColorConstants.normalGrey;
    }else if(index==selectedAnswerIndex){
      // /to show wheater the asw is right or wrong
      if(selectedAnswerIndex==widget.Category.question[currentQstnIndex]){
        return ColorConstants.normalGreen;
      }else{
        return ColorConstants.normalRed;
      }
      
    }else{
      // /to show the defult color
      return ColorConstants.normalGrey;
    }
  } 
  IconData? buildIcons(int index){
    if(index==widget.Category.question[currentQstnIndex].correctAnswerIndex
    &&selectedAnswerIndex   !=null){
      return Icons.done;

    }else if(index==selectedAnswerIndex){
      if(selectedAnswerIndex != widget.Category.question[currentQstnIndex].correctAnswerIndex){
        return Icons.close;
      }
    }else{
      return null;
    }
  }
}