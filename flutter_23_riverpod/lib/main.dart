import 'package:flutter/material.dart';
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
        body: Consumer(
          builder: (_, WidgetRef ref, __) {
            final counter = ref.watch(counterStateProvider);
            return ElevatedButton(
              onPressed: () {
                ref.read(counterStateProvider.notifier).state++;
              },
              child: Text("Value $counter"),
            );
          },
        ),
      ),
    );
  }
}

