import 'package:flutter/material.dart';
import 'package:flutter_19_auto_json_serialize/dio_client.dart';
import 'package:flutter_19_auto_json_serialize/model/data.dart';
import 'package:flutter_19_auto_json_serialize/model/movie.dart';
import 'package:flutter_19_auto_json_serialize/model/now_playing_response.dart';

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
        child: FutureBuilder<NowPlayingResponse?>(
          future: _client.getNowPlaying(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              NowPlayingResponse? nowPlaying = snapshot.data;

              if (nowPlaying != null) {
                Movie movie = nowPlaying.results[0];

                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.network('https://image.tmdb.org/t/p/w500/' +
                        movie.backdropPath),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      '${movie.originTitle} ${movie.originLang}',
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      movie.backdropPath,
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
