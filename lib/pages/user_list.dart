import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_keymaster/components/user_tile.dart';
import 'package:projeto_keymaster/models/user.dart';
//import 'package:projeto_keymaster/data/data_users.dart';
import 'package:projeto_keymaster/provider/users.dart';
import 'package:projeto_keymaster/routes/app_routes.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Usuários'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (ctx, i) => UserTile(
              users.byIndex(i)), //Text(users.values.elementAt(i).avatarURL),
        ));
  }
}
