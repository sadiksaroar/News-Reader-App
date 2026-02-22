class Article {
  final String id;
  final String title;
  final String description;
  final String content;
  final String imageUrl;
  final String source;
  final DateTime publishedAt;
  bool isBookmarked;

  Article({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.imageUrl,
    required this.source,
    required this.publishedAt,
    this.isBookmarked = false,
  });

  Article copyWith({bool? isBookmarked}) {
    return Article(
      id: id,
      title: title,
      description: description,
      content: content,
      imageUrl: imageUrl,
      source: source,
      publishedAt: publishedAt,
      isBookmarked: isBookmarked ?? this.isBookmarked,
    );
  }
}
