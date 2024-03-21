import 'package:appquiz/model/modelquiz/quizmodel.dart';

class CategoryModel{
  String name;
  String image;
  List<QuestionsModel>question;

  CategoryModel({
    required this.image,
    required this.name,
    required this.question

  });
}