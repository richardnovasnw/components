import 'package:infinet/core/services/app_service.dart';
import 'package:infinet/model/users.dart';

abstract class UserService extends AppService {
  Future<void> createUser({
    required Users users,
  });

  Future<void> updateUser({
    required Users users,
  });
}
