import 'package:finalfinal/Screens/favourite_screen/favourite_provider.dart';
import 'package:finalfinal/Screens/tab_controller_screen/tab_controller_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const InitApp();
  }
}

class InitApp extends StatelessWidget {
  const InitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavouriteProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chief In',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TabControllerScreen(),
      ),
    );
  }
}
