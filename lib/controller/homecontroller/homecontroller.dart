


import 'package:appquiz/model/categorymodel.dart';
import 'package:appquiz/model/modelquiz/quizmodel.dart';




class HomeScreenController {
  static List<CategoryModel> Question=[
    CategoryModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6Z06ofnQSjpjObO0sgVUMQ6rDEyF6-batOGSGGLdaxas3KUkW7m3EV79-JwrEcRLEzPA&usqp=CAU",
     name: "flutter", 
     question:flutterQuestions ),
      CategoryModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJNrD0etXZQRtrU07vF159qeotsz2ObMB-Tp5qYbBRyziHhKovVAT5JdqAV7f3gYmHaxc&usqp=CAU",
     name: "Sports", 
     question:sportsQuestions,
      ),
      CategoryModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwpI3pD06AjRw38ERMSdI6mswBkwUiNbWdX01u425edgIbXmq7p-uJXJYefaeZjCLJvBY&usqp=CAU",
     name: "Chemistry", 
     question:chemistryQuestions ),
      CategoryModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDDRk_pDjZia2WAL6IXzSk3i3IL1eKTcRgiSCjk5WEQxkceNw3XoGy3uZaYmYeOf2zgsk&usqp=CAU",
     name: "Maths", 
     question:mathQuestions )

  ];
  static List<QuestionsModel> flutterQuestions = [
    QuestionsModel(
      question: "What does Flutter use for layout?",
      optionsList: ["XML", "Dart", "Widgets", "HTML"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "Which widget is used to create a button in Flutter?",
      optionsList: ["Text", "Button", "RaisedButton", "FlatButton"],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: "What is the main building block of a Flutter application?",
      optionsList: ["Widgets", "Views", "Activities", "Fragments"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "How can you manage state in Flutter?",
      optionsList: [
        "SetState",
        "StatefulWidget",
        "StatelessWidget",
        "Provider"
      ],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: "What language is used to write Flutter apps?",
      optionsList: ["JavaScript", "Java", "Dart", "Python"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "Which IDE is commonly used for Flutter development?",
      optionsList: ["Eclipse", "Xcode", "Visual Studio Code", "Android Studio"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question:
          "What is the widget used to create a list with a builder in Flutter?",
      optionsList: ["ListView", "ListBuilder", "ListTile", "ListWidget"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question:
          "What is the purpose of the MaterialApp widget in a Flutter app?",
      optionsList: [
        "Create Material Design components",
        "Handle app routing",
        "Set app icons",
        "None of the above"
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question:
          "Which Flutter command is used to run the app on a connected device or emulator?",
      optionsList: [
        "flutter build",
        "flutter test",
        "flutter run",
        "flutter install"
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "What is the function of the setState() method in Flutter?",
      optionsList: [
        "Rebuild the entire UI",
        "Update the state of a widget",
        "Retrieve data from a database",
        "None of the above"
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is a widget in Flutter?",
      optionsList: [
        "A small electronic device",
        "A functional component",
        "A UI element",
        "A type of database"
      ],
      correctAnswerIndex: 2,
    ),
  ];
  
 static List<QuestionsModel> sportsQuestions = [
    QuestionsModel(
      question: "Which country won the FIFA World Cup in 2018?",
      optionsList: ["France", "Brazil", "Germany", "Argentina"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "Who is the all-time leading scorer in NBA history?",
      optionsList: ["LeBron James", "Kareem Abdul-Jabbar", "Michael Jordan", "Kobe Bryant"],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "Which team has won the most Super Bowls in NFL history?",
      optionsList: ["New England Patriots", "Dallas Cowboys", "San Francisco 49ers", "Pittsburgh Steelers"],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: "Who is the fastest man in the world?",
      optionsList: ["Usain Bolt", "Justin Gatlin", "Tyson Gay", "Yohan Blake"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "Which country has won the most Olympic gold medals?",
      optionsList: ["United States", "China", "Russia", "Germany"],
      correctAnswerIndex: 0,
    ),
  ];
  static List<QuestionsModel> chemistryQuestions = [
    QuestionsModel(
      question: "What is the chemical symbol for water?",
      optionsList: ["H2O", "CO2", "O2", "CH4"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "Which element is the lightest?",
      optionsList: ["Hydrogen", "Oxygen", "Carbon", "Helium"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the atomic number of carbon?",
      optionsList: ["5", "12", "6", "8"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "What is the process by which a solid changes directly into a gas?",
      optionsList: ["Condensation", "Melting", "Sublimation", "Evaporation"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "Which gas is responsible for the smell of rotten eggs?",
      optionsList: ["Oxygen", "Nitrogen", "Carbon Dioxide", "Hydrogen Sulfide"],
      correctAnswerIndex: 3,
    ),
  ];
   static List<QuestionsModel> mathQuestions = [
    QuestionsModel(
      question: "What is the value of pi (π) to two decimal places?",
      optionsList: ["3.14", "3.16", "3.18", "3.12"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the square root of 144?",
      optionsList: ["10", "11", "12", "13"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "What is the result of 5 multiplied by 8?",
      optionsList: ["35", "40", "42", "45"],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is the value of 'x' in the equation 2x + 3 = 11?",
      optionsList: ["3", "4", "5", "6"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "What is the sum of angles in a triangle?",
      optionsList: ["90 degrees", "180 degrees", "270 degrees", "360 degrees"],
      correctAnswerIndex: 1,
    ),
  ];
}
