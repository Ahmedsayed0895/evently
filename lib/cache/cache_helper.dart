import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences pref;

  static init() async {
    pref = await SharedPreferences.getInstance();
  }

  static setEligibility(String mode) async {
    mode == "light"
        ? await pref.setString("theme", "light")
        : await pref.setString("theme", "dark");
  }

  static String? getEligibility() {
    return pref.getString("theme");
  }
}
