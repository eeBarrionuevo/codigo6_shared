import 'package:shared_preferences/shared_preferences.dart';

class SPGlobal {
  // static int age = 20;
  // String name = "Juan Carlos";

  // static void getAge() {
  //   print("Holaaaaaaa $age");
  // }

  static final SPGlobal _instance = SPGlobal.mandarina();

  SPGlobal.mandarina();

  factory SPGlobal() {
    return SPGlobal._instance;
  }

  late SharedPreferences prefs;

  Future<void> initSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
  }

  set name(String value) {
    prefs.setString("name", value);
  }

  String get name {
    return prefs.getString("name") ?? "-";
  }

  set address(String value) {
    prefs.setString("address", value);
  }

  String get address {
    return prefs.getString("address") ?? "-";
  }
}
