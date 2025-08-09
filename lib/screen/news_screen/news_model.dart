class NewsModel {
  String name;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  DateTime publishedAt;

  NewsModel({
    required this.name,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
  });

  factory NewsModel.fromJson(Map<String, dynamic> data) {
    return NewsModel(
      name: data["source"]["name"] ?? "",
      author: data["author"] ?? "",
      title: data["title"] ?? "",
      description: data["description"] ?? "",
      url: data["url"] ?? "",
      urlToImage: data["urlToImage"] ?? "",
      publishedAt: DateTime.parse(data["publishedAt"]),
    );
  }

  @override
  String toString() {
    return 'NewsModel{name: $name, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt}';
  }
}
