class ThumbnailsData {
  final String? url;
  final int? width;
  final int? height;

  ThumbnailsData({
    this.url,
    this.height,
    this.width,
  });

  factory ThumbnailsData.fromJson(Map<String, dynamic> json) {
    return ThumbnailsData(
      url: json["url"],
      height: json["height"],
      width: json["width"],
    );
  }
}
