import 'package:flutter/material.dart';
import 'package:new_cubit/src/cubit/authntication/authentication_cubit.dart';
import 'package:new_cubit/src/pages/login_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationCubit(),
      child: MaterialApp(
        title: "Form Example",
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
        home: LoginPage(),
      ),
    );
  }
}