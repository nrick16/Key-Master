import 'package:flutter/material.dart';

class WidgetHome extends StatefulWidget {
  @override
  _WidgetHomeState createState() => _WidgetHomeState();
}

class _WidgetHomeState extends State<WidgetHome> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final buttonRegisterKey = ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        child: ElevatedButton(
          child: Text("Registrar Chave",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          onPressed: () {},
        ));
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários22'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
