import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/auth_controller.dart';
import '../core/app_routes.dart';
import '../controllers/news_controller.dart';
import '../widgets/article_card.dart';
import '../widgets/empty_state_widget.dart';
import '../widgets/error_state_widget.dart';
import '../widgets/loading_state_widget.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  @override
  void initState() {
    super.initState();
    // Fetch articles when the screen is first displayed.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<NewsController>().fetchArticles();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('News Reader'),
        centerTitle: true,
        actions: [
          // Bookmark filter toggle
          Consumer<NewsController>(
            builder: (context, news, _) {
              return IconButton(
                tooltip: news.showBookmarksOnly
                    ? 'Show all articles'
                    : 'Show bookmarks only',
                icon: Icon(
                  news.showBookmarksOnly
                      ? Icons.bookmark
                      : Icons.bookmark_border,
                ),
                onPressed: news.toggleBookmarkFilter,
              );
            },
          ),
          // Logout
          IconButton(
            tooltip: 'Logout',
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthController>().logout();
              Navigator.of(context).pushReplacementNamed(AppRoutes.login);
            },
          ),
        ],
      ),
      body: Consumer<NewsController>(
        builder: (context, news, _) {
          switch (news.state) {
            case NewsState.initial:
            case NewsState.loading:
              return const LoadingStateWidget();

            case NewsState.error:
              return ErrorStateWidget(
                message: news.errorMessage,
                onRetry: news.fetchArticles,
              );

            case NewsState.empty:
              return const EmptyStateWidget(message: 'No articles found.');

            case NewsState.loaded:
              final displayed = news.displayedArticles;
              if (displayed.isEmpty) {
                return const EmptyStateWidget(
                  message:
                      'No bookmarked articles yet.\nTap the bookmark icon on an article to save it.',
                  icon: Icons.bookmark_border,
                );
              }
              return RefreshIndicator(
                onRefresh: news.fetchArticles,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  itemCount: displayed.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final article = displayed[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          AppRoutes.articleDetail,
                          arguments: article,
                        );
                      },
                      child: ArticleCard(
                        article: article,
                        onBookmarkToggle: () => news.toggleBookmark(article.id),
                      ),
                    );
                  },
                ),
              );
          }
        },
      ),
    );
  }
}
