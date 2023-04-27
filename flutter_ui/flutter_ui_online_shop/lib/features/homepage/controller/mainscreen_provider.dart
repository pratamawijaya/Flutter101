import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mainscreen_provider.g.dart';

@riverpod
class MainScreenProvider extends _$MainScreenProvider {
  @override
  int build() => 0;

  void setPage(int page) => state = page;

  int getCurrentPage() {
    return state;
  }
}
