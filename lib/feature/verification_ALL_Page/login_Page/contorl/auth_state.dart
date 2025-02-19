import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'auth_state.g.dart';

@Riverpod(keepAlive: true)
class AuthState extends _$AuthState {
  @override
  bool build() {
    return false;
  }

  Future<void> fetchData() async {
    var prefs = await SharedPreferences.getInstance();
    bool? ishasData = prefs.getBool("ishasData");
    state = ishasData ?? false;
  }

  Future<void> addNewUser() async {
    var prefs = await SharedPreferences.getInstance();
    state = true;
    await prefs.setBool("ishasData", true);
  }

  Future<void> logOut() async {
    var prefs = await SharedPreferences.getInstance();
    state = false;
    await prefs.setBool("ishasData", false);
  }
}
