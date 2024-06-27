class Video {
  final String id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Video(
      {required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnail_url'],
    );
  }
}
