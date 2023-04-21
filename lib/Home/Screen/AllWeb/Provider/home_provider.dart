import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class BrouserProvider extends ChangeNotifier {

  double ProgressWeb = 0;
  InAppWebViewController? inAppWebViewController;
  void changeProgress(double Progress){
    ProgressWeb = Progress;
    notifyListeners();
  }
  List name = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];
  List img = [
    "assets/images/w3school.jpg",
    "assets/images/wikipidiya.png",
    "assets/images/javapoint.png",
    "assets/images/javatutoral.png",
    "assets/images/elm.jpg",
    "assets/images/iu.png",
    "assets/images/udemy.png",
    "assets/images/khanaca.jpg",
  ];
  List web = [
    Uri.parse("https://www.w3schools.com/"),
    Uri.parse("https://www.wikipedia.org/"),
    Uri.parse("https://www.javatpoint.com/"),
    Uri.parse("https://www.tutorialspoint.com/"),
    Uri.parse("https://www.elearnmarkets.com/"),
    Uri.parse("https://www.iu.org/"),
    Uri.parse("https://www.udemy.com/"),
    Uri.parse("https://www.khanacademy.org/"),
  ];
}
