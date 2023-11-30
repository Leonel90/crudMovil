import 'package:crud/src/pages/list_page.dart';
import 'package:crud/src/pages/save_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: "/",
      routes: {
        ListPage.ROUTE: (_) => ListPage(),
        ListPage.ROUTE: (_) => SavePages()
      },
    );
  }
}
