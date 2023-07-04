import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horoscope_app/bloc/login/login_bloc.dart';
import 'package:horoscope_app/navigation/navigation_routes.dart';
import 'package:horoscope_app/screens/login_screen.dart';

void main() {
  runApp(MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (context) =>
              LoginBloc(),
        ),
      ],child: MyApp()));
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horoscope App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      onGenerateRoute: NavigationRoute.generateRoute,
    );
  }
}
