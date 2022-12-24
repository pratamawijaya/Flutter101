import 'package:flutter_23_riverpod/data/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInController extends StateNotifier<AsyncValue<void>> {
  final FakeAuthRepository authRepository;

  SignInController({required this.authRepository})
      : super(const AsyncData(null));

  Future<void> signInAnonymously() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(authRepository.signInAnonymously);
  }
}

final signInScreenControllerProvider =
    StateNotifierProvider.autoDispose<SignInController, AsyncValue<void>>(
        (ref) {
  return SignInController(
    authRepository: ref.watch(authRepositoryProvider),
  );
});
