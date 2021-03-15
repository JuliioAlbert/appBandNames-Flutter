import 'package:bandnames/src/pages/home_page.dart';
import 'package:bandnames/src/pages/status.dart';
import 'package:bandnames/src/providers/socket_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SocketService>(create: (_) => SocketService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home' : (_) => HomePage(),
          'status' : (_) => StatusPage()
        },
      ),
    );
  }
}
