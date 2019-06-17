import 'package:flutter/material.dart';
import 'package:flutter_12_sample_appstate_withprovider/models/cart.dart';
import 'package:flutter_12_sample_appstate_withprovider/screens/cart.dart';
import 'package:flutter_12_sample_appstate_withprovider/screens/catalog.dart';
import 'package:flutter_12_sample_appstate_withprovider/screens/login.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (contex) => CartModel(),
      child: MaterialApp(
        title: "Sample App State",
        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(),
          '/catalog': (context) => CatalogScreen(),
          '/cart': (context) => CartScreen()
        },
      ),
    );
  }
}
