import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:medical_suit/config/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'storage.dart';

class StorageService implements Storage {
  final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  @override
  Future<bool> setString({required String key, required String value}) async {
    final SharedPreferences pref = await prefs;
    return await pref.setString(key, value);
  }

  @override
  Future<String?> getString({required String key}) async {
    final SharedPreferences pref = await prefs;
    return pref.getString(key);
  }

  // Clear session
  @override
  Future<bool> clearSession() async {
    final SharedPreferences pref = await prefs;
    final bool result = await pref.clear();
    navigationService.pushAndRemoveUntil(RoutesName.login);
    return result;
  }

  // check Session
  @override
  Future<void> hasToken() async {
    final SharedPreferences pref = await prefs;
    await Future.delayed(Duration(seconds: 2));
    try {
      if(pref.getString('${dotenv.env['AUTH']}')!.isEmpty) {
        navigationService.pushReplacementNamed(RoutesName.login);
        return;
      }

      navigationService.pushReplacementNamed(RoutesName.home);
      return;
    } catch (error) {
      navigationService.pushReplacementNamed(RoutesName.login);
      return;
    }
  }

  @override
  Future<List> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<void> saveUser({required List cities}) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }
}

