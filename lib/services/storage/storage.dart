abstract class Storage {
  Future<bool> clearSession();

  Future<String?> getString({required String key});

  Future<bool> setString({required String key, required String value});

  Future<void> saveUser({required List<dynamic> cities});

  Future<List<dynamic>> getUser();

  Future<void> hasToken();
}