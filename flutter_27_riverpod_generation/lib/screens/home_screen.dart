import 'package:flutter/material.dart';
import 'package:flutter_27_riverpod_generation/models/activity.dart';
import 'package:flutter_27_riverpod_generation/providers/activity_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Activity> activity = ref.watch(activityProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Sample"),
        ),
        body: switch (activity) {
          AsyncData(:final value) => Text("Activity : ${value.activity}"),
          AsyncError() => const Text("error"),
          _ => const CircularProgressIndicator()
        });
  }
}
