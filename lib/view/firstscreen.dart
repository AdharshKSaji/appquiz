import 'package:appquiz/controller/homecontroller/homecontroller.dart';
import 'package:appquiz/core/constants/colorconstants.dart';
import 'package:appquiz/model/categorymodel.dart';
import 'package:appquiz/view/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Hi, Adharsh",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("Lets make this day more productive"),
              trailing: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/20582700/pexels-photo-20582700/free-photo-of-a-person-standing-on-the-beach-at-sunset.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.normalGrey,
              ),
              alignment: Alignment.center,
              height: 45,
              width: 250,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Choose a category",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Lets play",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2
                  ,mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: (context, index) {CategoryModel category=HomeScreenController.Question[index];
                return InkWell(onTap: ()
                 {Navigator.push(context, MaterialPageRoute
                 (builder: (context) => 
                QuizScreen(
                  Category: HomeScreenController.Question[index])));
                  
                },
                  child: Container(
                    child: Column(
                      children: [Expanded(
                        child: Container(decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(category.image),fit: BoxFit.cover)
                        ),),
                      ),
                      Text(category.name,style: TextStyle(color: ColorConstants.normalBlack,
                      fontSize: 20),),
                      Text("5 Questions",style: TextStyle(color: ColorConstants.normalBlack,
                      fontSize: 20))],
                    ),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10),color: ColorConstants.normalGrey),
                  ),
                );
              },
              itemCount: HomeScreenController.Question.length,
            )
          ],
        ),
      ),
    );
  }
}