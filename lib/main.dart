import 'package:flutter/material.dart';
import 'package:mediaqueryconcept/pages/home_Page.dart';
import 'package:mediaqueryconcept/provider/animal_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(  providers: [
          ChangeNotifierProvider<AnimalProvider>(
            create: (context) => AnimalProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage()
      )
          ),
     ],);
  
  }
}

