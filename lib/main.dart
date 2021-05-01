import 'package:flutter/material.dart';
import 'package:projeto_keymaster/pages/login.dart';
import 'package:projeto_keymaster/pages/user_form.dart';
import 'package:projeto_keymaster/pages/user_list.dart';
//import 'pages/login.dart';
import 'package:projeto_keymaster/provider/users.dart';
import 'package:projeto_keymaster/routes/app_routes.dart';
import 'package:provider/provider.dart';
import 'package:args/args.dart';
import 'package:projeto_keymaster/data/data_users_csv.dart'
    as lendo_arquivo_csv;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "The Key Master",
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        //home: WidgetLogin(),
        routes: {
          AppRoutes.LOGIN: (_) => WidgetLogin(),
          AppRoutes.HOME: (_) => UserList(),
          AppRoutes.USER_FORM: (_) => UserForm()
        },
      ),
    );
  }
}

void user_csv(List<String> arguments) {
  lendo_arquivo_csv.run('arquivo.csv');
}
