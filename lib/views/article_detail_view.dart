import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/news_controller.dart';
import '../core/app_text_styles.dart';
import '../models/article_model.dart';

class ArticleDetailView extends StatelessWidget {
  final Article article;

  const ArticleDetailView({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // ── Collapsing app bar with image ────────────────────────────
          SliverAppBar(
            expandedHeight: 260,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(
                imageUrl: article.imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  color: theme.colorScheme.surfaceContainerHighest,
                  child: const Center(
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  color: theme.colorScheme.surfaceContainerHighest,
                  child: Icon(
                    Icons.broken_image_rounded,
                    size: 48,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ),
            actions: [
              Consumer<NewsController>(
                builder: (context, news, _) {
                  // Find the latest bookmark state from the controller
                  final current = news.articles.firstWhere(
                    (a) => a.id == article.id,
                    orElse: () => article,
                  );
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(
                          current.isBookmarked
                              ? Icons.bookmark
                              : Icons.bookmark_border,
                          color: current.isBookmarked
                              ? Colors.amber
                              : Colors.white,
                        ),
                        onPressed: () => news.toggleBookmark(article.id),
                        tooltip: current.isBookmarked
                            ? 'Remove bookmark'
                            : 'Bookmark article',
                      ),
                    ),
                  );
                },
              ),
            ],
          ),

          // ── Article content ──────────────────────────────────────────
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Source & date
                  Text(
                    '${article.source}  •  ${_formatDate(article.publishedAt)}',
                    style: AppTextStyles.labelSmall.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Title
                  Text(article.title, style: AppTextStyles.headlineBold),
                  const SizedBox(height: 16),

                  // Description (subtitle)
                  Text(
                    article.description,
                    style: AppTextStyles.bodyRegular.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Divider
                  Divider(color: theme.colorScheme.outlineVariant),
                  const SizedBox(height: 20),

                  // Full content
                  Text(
                    article.content,
                    style: AppTextStyles.bodyRegular.copyWith(
                      fontSize: 15,
                      height: 1.7,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return '${months[date.month - 1]} ${date.day}, ${date.year}';
  }
}
