import 'package:infinet/model/app_state.dart';
import 'package:infinet/ui.dart';
import 'package:infinet/view_model/app_view_model.dart';
import 'package:infinet/views/navigation/app_navigation_controller.dart';

extension ProviderUtils on BuildContext {
  AppViewModel get appViewModel => read<AppViewModel>();

  AppNavigationController get navigation => read<AppNavigationController>();
}

mixin AppProviderMixin<S extends StatefulWidget> on State<S> {
  AppState get appState => context.watch<AppState>();
}
