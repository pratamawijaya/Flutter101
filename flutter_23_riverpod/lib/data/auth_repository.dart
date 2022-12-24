import 'package:flutter_23_riverpod/data/model/app_user.dart';
import 'package:flutter_23_riverpod/utils/in_memory_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FakeAuthRepository {
  final _authState = InMemoryStore<AppUser?>(null);

  Stream<AppUser?> authStateChanges() => _authState.stream;
  AppUser? get currentUser => _authState.value;

  void dispose() => _authState.close();

  Future<void> signInAnonymously() async {
    await Future.delayed(const Duration(seconds: 3));
    _authState.value = AppUser(
      uid: '123', // TODO: make it unique
    );
  }

  Future<void> signOut() async {
    _authState.value = null;
  }
}

final authRepositoryProvider = Provider<FakeAuthRepository>((ref) {
  final auth = FakeAuthRepository();
  ref.onDispose(() {
    auth.dispose();
  });
  return auth;
});

final authStateChagesProvider = StreamProvider.autoDispose<AppUser?>(
  (ref) {
    final authRepository = ref.watch(authRepositoryProvider);
    return authRepository.authStateChanges();
  },
);
