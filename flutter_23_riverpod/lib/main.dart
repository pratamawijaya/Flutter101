import 'package:flutter/material.dart';
import 'package:flutter_23_riverpod/screens/authentications/auth_screen.dart';
import 'package:flutter_23_riverpod/screens/clock_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider is great for accessing dependencies and objects that don’t change.
final helloWorldProvider = Provider((_) => 'Hello World');

/// StateProvider is great for storing simple state objects that can change, such as a counter value:
final counterStateProvider = StateProvider((ref) => 0);

// final helloWorldProvider = Provider<String>((ref) {
//   return 'Hello World';
// });

void main() {
  // runApp(const MyApp());
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo Riverpod"),
        ),
        body: AuthScreen(),
      ),
    );
  }
}

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: ((context, ref, child) {
        final counter = ref.watch(counterStateProvider);
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ElevatedButton(
                  onPressed: () {
                    ref.read(counterStateProvider.notifier).state++;
                  },
                  child: Text("value $counter")),
            ),
          ],
        );
      }),
    );
  }
}
