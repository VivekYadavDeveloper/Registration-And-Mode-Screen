import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //* This widget is the root of your application.
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dark/Light Mode',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: Modes(),
    );
  }
}

//* THIS CLASS IS MODES (DARK/LIGHT MODE)
class Modes extends StatelessWidget {
  const Modes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration/Mode"),
        actions: <Widget>[
          IconButton(
            onPressed: () => Get.isDarkMode
                ? Get.changeTheme(ThemeData.light())
                : Get.changeTheme(ThemeData.dark()),
            icon: Icon(Icons.lightbulb_rounded),
          ),
        ],
      ),
      body: LoginScreen(),
    );
  }
}
