import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:infinet/core/navigation/navigation.dart';
import 'package:infinet/ui.dart';
import 'package:infinet/view_model/app_view_model.dart';
import 'package:infinet/views/navigation/app_navigation_controller.dart';
import 'package:infinet/views/navigation/app_navigation_state.dart';

void main() {
  runApp(
    AppProvider(
      child: StateNotifierProvider<AppNavigationController, AppNavigationState>(
        create: (_) => AppNavigationController(),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routeInformationParser: AppRouteParser(),
      routerDelegate:
          AppRouteDelegate<AppNavigationController>(context.navigation),
    );
  }
}
