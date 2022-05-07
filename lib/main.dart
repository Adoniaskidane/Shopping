import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/Models/product.dart';
import 'package:shopping/Pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Products> (create: (_)=>Products())
        //ChangeNotifierProvider<Numbers>(create: (_) => Numbers()),
        //Provider<SomethingElse>(create: (_) => SomethingElse()),
        //Provider<AnotherThing>(create: (_) => AnotherThing()),
      ],
      child: MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Home()
    ),
    );
  }
}