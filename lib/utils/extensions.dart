import 'package:infinet/shared.dart';

// ignore: avoid_classes_with_only_static_members
class _AppAssets extends AppAssets {
  static final _AppAssets instance = _AppAssets();
}

// ignore: avoid_classes_with_only_static_members
class _AppRoutes extends AppRoutes {
  static final _AppRoutes instance = _AppRoutes();
}

// ignore: avoid_classes_with_only_static_members
class _AppConstants extends AppConstants {
  static final _AppConstants instance = _AppConstants();
}

// ignore: avoid_classes_with_only_static_members
class _AppColors extends AppColors {
  static final _AppColors instance = _AppColors();
}

extension ObjectUtils on Object {
  AppAssets get assets => _AppAssets.instance;

  AppConstants get constants => _AppConstants.instance;

  AppRoutes get routes => _AppRoutes.instance;

  AppColors get colors => _AppColors.instance;
}
