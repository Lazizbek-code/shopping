import 'package:flutter/material.dart';
import 'package:shopping/pages/category_image_page.dart';
import 'package:shopping/pages/home_page.dart';
import 'package:shopping/pages/product_grid_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        CategoryImagePage.id:(context) => CategoryImagePage(),
        ProductGridPage.id:(context) => ProductGridPage()
      },
    );
  }
}
