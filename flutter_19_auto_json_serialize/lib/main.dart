import 'package:flutter/material.dart';
import 'package:flutter_19_auto_json_serialize/dio_client.dart';
import 'package:flutter_19_auto_json_serialize/model/data.dart';

import 'model/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DioClient _client = DioClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
      ),
      body: Center(
        child: FutureBuilder<User?>(
          future: _client.getUser(id: '2'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              User? userInfo = snapshot.data;

              if (userInfo != null) {
                Data userData = userInfo.data;

                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.network(userData.avatar),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      '${userInfo.data.firstName} ${userInfo.data.lastName}',
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      userData.email,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ],
                );
              } else {
                return const Text("empty");
              }
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
