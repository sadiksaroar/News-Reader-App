import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../controllers/auth_controller.dart';
import '../controllers/news_controller.dart';

/// Centralised list of all app-level providers.
/// Add new controllers / services here as the app grows.
class AppProviders {
  AppProviders._();

  static List<SingleChildWidget> get providers => [
    ChangeNotifierProvider(create: (_) => AuthController()),
    ChangeNotifierProvider(create: (_) => NewsController()),
  ];
}
