abstract class RepositoryInterface {
  Future<List<dynamic>>  loadVehicles();
  Future<dynamic>  signOut();
  Future<dynamic>  signIn(String email, String password);
  Future<dynamic>  signUp(String email, String password);
}