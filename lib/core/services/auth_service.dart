import 'package:infinet/core/services/app_service.dart';
import 'package:infinet/model/users.dart';

abstract class AuthService extends AppService {
  Future<Users?> signIn({
    required String email,
    required String password,
  });

  Future<void> signUp({
    required String userName,
    required String email,
    required String password,
  });

  Future<void> forgetPassword({
    required String email,
  });

  Future<void> signOut();
}
