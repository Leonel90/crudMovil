import 'package:flutter/material.dart';

class SavePages extends StatelessWidget {
  static const String ROUTE = "/save";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guardar"),
      ),
      body: Container(
        child: _FormSave(),
      ),
    );
  }
}

class _FormSave extends StatelessWidget {
  final titleControler = TextEditingController();
  final contenControler = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Divider(
              height: 30,
            ),
            TextFormField(
              controller: titleControler,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Tiene que ingresar datos";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Titulo",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)))),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: contenControler,
              //validacion y agregar más propiedades
              maxLines: 15,
              maxLength: 200,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Tiene que ingresar datos";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Contenido", border: OutlineInputBorder()),
            ),
            ElevatedButton(
                child: Text("Guardar"),
                onPressed: (() {
                  if (_formKey.currentState!.validate()) {
                    print("Guardar");
                  }
                }))
          ],
        ),
      ),
    );
  }
}
