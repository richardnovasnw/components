import '../model/app_state.dart';
import '../ui.dart';
import '../view_model/app_view_model.dart';
import '../views/navigation/app_navigation_controller.dart';

extension ProviderUtils on BuildContext {
  AppViewModel get appViewModel => read<AppViewModel>();

  AppNavigationController get navigation => read<AppNavigationController>();
}

mixin AppProviderMixin<S extends StatefulWidget> on State<S> {
  AppState get appState => context.watch<AppState>();
}
