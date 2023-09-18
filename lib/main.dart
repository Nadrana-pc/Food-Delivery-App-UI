

import 'package:flutter/material.dart';
import 'package:food_delivery/Providerss/indexprovider.dart';
import 'package:food_delivery/Screens/first_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp
  (ChangeNotifierProvider(create: (context)=>IndexProvider(),child:const MainApp(),)
     );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: const FirstScreen());
  }
}
