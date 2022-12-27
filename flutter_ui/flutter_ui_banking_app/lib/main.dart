import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_banking_app/app.dart';

void main() {
  runApp(
    ProviderScope(
      child: BaseApp(),
    ),
  );
}
