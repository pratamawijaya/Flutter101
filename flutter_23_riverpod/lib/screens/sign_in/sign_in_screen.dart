import 'package:flutter/material.dart';
import 'package:flutter_23_riverpod/screens/sign_in/sign_in_controller.dart';
import 'package:flutter_23_riverpod/utils/async_value_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: ((context, ref, child) {
        
        ref.listen<AsyncValue>(
          signInScreenControllerProvider,
          (_, state) => state.showSnackbarOnError(context),
        );

        final state = ref.watch(signInScreenControllerProvider);

        return Scaffold(
          appBar: AppBar(
            title: Text("Sign In"),
          ),
          body: Center(
            child: SizedBox(
              width: 200,
              height: 100,
              child: ElevatedButton(
                child: state.isLoading
                    ? const CircularProgressIndicator()
                    : const Text('Sign in anonymously'),
                onPressed: state.isLoading
                    ? null
                    : () => ref
                        .read(signInScreenControllerProvider.notifier)
                        .signInAnonymously(),
              ),
            ),
          ),
        );
      }),
    );
  }
}
