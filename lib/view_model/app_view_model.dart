import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:infinet/core/services/auth_service.dart';
import 'package:infinet/data/auth_service_impl.dart';
import 'package:infinet/model/users.dart';
import 'package:state_notifier/state_notifier.dart';
import '../core/view_model/view_model.dart';
import '../model/app_state.dart';
import '../provider/app_state_notifier.dart';
import '../ui.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<AppViewModel, AppState>(
      create: (_) => AppViewModel(),
      child: child,
    );
  }
}

class AppViewModel extends AppStateNotifier<AppState>
    with LocatorMixin
    implements AppBaseViewModel {
  AppViewModel() : super(AppState());
  AuthService authService = AuthServiceImpl();

  @override
  Future<void> init() async {}

  void decrement() {
    state = state.rebuild((AppStateBuilder b) => b.count = b.count! - 1);
  }

  void increment() {
    state = state.rebuild((AppStateBuilder b) => b.count = b.count! + 1);
  }
  Future<void> signUp({required String userName,required String email,required String password}) async {
    await authService.signUp(userName: userName,email: email,password: password);

  }
  Future<void> signIn({required String email, required String password,}) async {
    final Users? u = await authService.signIn(email: email, password: password);
    state = state.rebuild((AppStateBuilder b) {
      b.user = u?.toBuilder();
    });
  }
  Future<void> signOut() async {
    await authService.signOut();
  }
  Future<void> forgetPassword({required String email}) async{
   await authService.forgetPassword(email: email);
  }
}
