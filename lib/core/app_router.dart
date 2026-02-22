import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../views/article_detail_view.dart';
import '../views/login_view.dart';
import '../views/news_list_view.dart';
import 'app_routes.dart';

/// Generates [Route] objects for the app based on route name.
class AppRouter {
  AppRouter._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
          settings: settings,
        );

      case AppRoutes.news:
        return MaterialPageRoute(
          builder: (_) => const NewsListView(),
          settings: settings,
        );

      case AppRoutes.articleDetail:
        final article = settings.arguments as Article;
        return MaterialPageRoute(
          builder: (_) => ArticleDetailView(article: article),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
          settings: settings,
        );
    }
  }
}
