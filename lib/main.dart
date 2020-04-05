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

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hola mundo',
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.name,
      routes: {
        HomePage.name: (_) => HomePage(),
      },
    );
  }
}
