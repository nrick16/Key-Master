import 'package:flutter/material.dart';
import 'package:projeto_keymaster/routes/app_routes.dart';

class WidgetLogin extends StatefulWidget {
  @override
  _WidgetLoginState createState() => _WidgetLoginState();
}

class _WidgetLoginState extends State<WidgetLogin> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final passwordField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "ID",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final buttonLogin = ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        child: ElevatedButton(
          child: Text("Entrar",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.HOME);
          },
        ));

    /*final buttonAddUser = ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        child: ElevatedButton(
          child: Text("Create ID",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          onPressed: () {},
        ));*/

    return Scaffold(
        appBar: AppBar(
          title: Text('Key-Master'),
        ),
        body: Center(
            child: SingleChildScrollView(
          child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 150.0,
                    child: Image.asset("assets/images/key.png",
                        fit: BoxFit.contain),
                  ),
                  SizedBox(height: 20.0),
                  passwordField,
                  SizedBox(height: 30.0),
                  buttonLogin,
                  //SizedBox(height: 40.0),
                  //buttonAddUser,
                ],
              )),
        )));
  }
}
