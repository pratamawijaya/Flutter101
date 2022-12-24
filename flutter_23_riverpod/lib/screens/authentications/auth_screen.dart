import 'package:flutter/material.dart';
import 'package:flutter_23_riverpod/data/auth_repository.dart';
import 'package:flutter_23_riverpod/screens/account/account_screen.dart';
import 'package:flutter_23_riverpod/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: ((context, ref, child) {
        final authState = ref.watch(authStateChagesProvider);

        return authState.maybeWhen(
          data: (user) => user != null ? AccountScreen() : const SignInScreen(),
          orElse: () => Scaffold(
            appBar: AppBar(),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      }),
    );
  }
}
