import 'package:clase_regalo/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';

// void main() => runApp(
//       DevicePreview(
//         builder: (context) {
//           return MyApp();
//         },
//       ),
//     );
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  static final state = _MyAppState();
  static bool swTheme = true;

  static switchTheme(bool sw) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: sw ? Colors.white : Colors.black,
      systemNavigationBarIconBrightness: sw ? Brightness.dark : Brightness.light, 
    ));
    state.rebuild(sw);
  }

  @override
  _MyAppState createState() => state;
}

class _MyAppState extends State<MyApp> {
  rebuild(bool sw) {
    MyApp.swTheme = sw;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hola mundo',
      debugShowCheckedModeBanner: false,
      theme: MyApp.swTheme
          ? ThemeData(
              primaryColor: Color.fromRGBO(86, 130, 163, 1),
              accentColor: Color(0xFF86b1d4),
            )
          : ThemeData(
              brightness: Brightness.dark,
              accentColor: Colors.blue,
            ),
      initialRoute: HomePage.name,
      routes: {
        HomePage.name: (_) => HomePage(),
      },
    );
  }
}
