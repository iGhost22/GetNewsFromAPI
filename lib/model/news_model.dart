class NewsApi {
  NewsApi({
    required this.status,
    required this.totalResults,
    required this.articles,
  });
  late final String status;
  late final int totalResults;
  late final List<Articles> articles;

  NewsApi.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    articles =
        List.from(json['articles']).map((e) => Articles.fromJson(e)).toList();
  }
}

class Articles {
  Articles({
    required this.source,
    this.author,
    required this.title,
    this.description,
    required this.url,
    this.urlToImage,
    required this.publishedAt,
  });

  late final Source source;
  late final String? author;
  late final String title;
  late final String? description;
  late final String url;
  late final String? urlToImage;
  late final String publishedAt;

  Articles.fromJson(Map<String, dynamic> json) {
    source = Source.fromJson(json['source']);
    author = json['author'] ?? "No Author";
    title = json['title'];
    description = json['description'] ?? "No Description";
    url = json['url'];
    urlToImage = json['urlToImage'] ??
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png';
    publishedAt = json['publishedAt'];
  }
}

class Source {
  Source({
    this.id,
    required this.name,
  });
  late final String? id;
  late final String name;

  Source.fromJson(Map<String, dynamic> json) {
    id = null;
    name = json['name'];
  }
}
