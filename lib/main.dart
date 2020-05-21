import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

import 'home_route.dart';
import 'login_route.dart';
import 'webSocket_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.lime,
      ),
      routes: {
        "/": (context) => LoginRoute(),
        "/home": (context) => HomeRoute(),
        "/test": (context) => MyHomePage(
            title: '123',
            channel: IOWebSocketChannel.connect('wss://echo.websocket.orge')),
      },
      initialRoute: "/test",
    );
  }
}
