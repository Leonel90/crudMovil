import 'package:crud/src/db/operation.dart';
import 'package:crud/src/pages/save_pages.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});
  //! Para cuando se llamen
  static const String ROUTE = "/";

  @override
  Widget build(BuildContext context) {
    Operation.notes;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, SavePages.ROUTE);
        },
      ),
      appBar: AppBar(
        title: Text("Listado"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Nota 1"),
            ),
            ListTile(
              title: Text("Nota 2"),
            ),
            ListTile(
              title: Text("Nota 3"),
            ),
            ListTile(
              title: Text("Nota 4"),
            )
          ],
        ),
      ),
    );
  }
}
