import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:medical_suit/config/config.dart';
import 'package:supabase/supabase.dart';

import 'repository_interface.dart';

class UserRepository implements RepositoryInterface {
  @override
  Future<List<dynamic>> loadVehicles() async {
    // return rootBundle.loadString(assetsPath)
    //     .then((jsonStr) => jsonDecode(jsonStr));
    var loadedString = await rootBundle.loadString('assets/json/vehicles.json');

    return jsonDecode(loadedString);
  }

  @override
  Future signIn(String email, String password) async {
    return await locator<SupabaseClient>()
        .auth
        .signIn(email: email, password: password);
  }

  @override
  Future signOut() async {
    return await locator<SupabaseClient>().auth.signOut();
  }

  @override
  Future signUp(String email, String password) async {
    return await locator<SupabaseClient>().auth.signUp(email, password);
  }
}
