import 'package:flutter/foundation.dart';

import '../models/article_model.dart';
import '../services/news_service.dart';

/// Represents the current state of the news list.
enum NewsState { initial, loading, loaded, empty, error }

/// Controller (Provider) that manages news articles and bookmarks.
class NewsController extends ChangeNotifier {
  final NewsService _newsService;

  NewsController({NewsService? newsService})
    : _newsService = newsService ?? NewsService();

  // ── State ──────────────────────────────────────────────────────────────

  NewsState _state = NewsState.initial;
  NewsState get state => _state;

  List<Article> _articles = [];
  List<Article> get articles => List.unmodifiable(_articles);

  List<Article> get bookmarkedArticles =>
      _articles.where((a) => a.isBookmarked).toList();

  String _errorMessage = '';
  String get errorMessage => _errorMessage;

  bool _showBookmarksOnly = false;
  bool get showBookmarksOnly => _showBookmarksOnly;

  /// The articles currently visible based on the bookmark filter.
  List<Article> get displayedArticles =>
      _showBookmarksOnly ? bookmarkedArticles : _articles;

  // ── Actions ────────────────────────────────────────────────────────────

  /// Fetch articles from the (mock) API.
  Future<void> fetchArticles() async {
    _state = NewsState.loading;
    _errorMessage = '';
    notifyListeners();

    try {
      _articles = await _newsService.fetchArticles();
      _state = _articles.isEmpty ? NewsState.empty : NewsState.loaded;
    } on Exception catch (e) {
      _errorMessage = e.toString().replaceFirst('Exception: ', '');
      _state = NewsState.error;
    }

    notifyListeners();
  }

  /// Toggle the bookmark status of an article by [id].
  void toggleBookmark(String id) {
    final index = _articles.indexWhere((a) => a.id == id);
    if (index != -1) {
      _articles[index].isBookmarked = !_articles[index].isBookmarked;
      notifyListeners();
    }
  }

  /// Toggle between showing all articles and only bookmarked ones.
  void toggleBookmarkFilter() {
    _showBookmarksOnly = !_showBookmarksOnly;
    notifyListeners();
  }
}
