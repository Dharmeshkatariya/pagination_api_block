import 'package:bloc/bloc.dart';
import 'package:block_api_pagination/view/home_page.dart';
import 'package:flutter/material.dart';

import 'blocs/observers/todo_bloc_observer.dart';

void main() {
  Bloc.observer = TodoBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple
      ),
      home: const HomePage(),
    );
  }
}
