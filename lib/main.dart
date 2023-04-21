import 'package:flutter/material.dart';
import 'package:mirror_wall/Home/Screen/AllWeb/Provider/home_provider.dart';
import 'package:mirror_wall/Home/Screen/AllWeb/view/brouswer_screen.dart';
import 'package:mirror_wall/Home/Screen/AllWeb/view/home_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BrouserProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
          'bro':(context) => BrouserScreen(),
        },
      ),
    ),
  );
}