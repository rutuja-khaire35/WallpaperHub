class WallpaperModel {
  String? photographer;
  String? photographer_url;
  int? photographer_id;
  SrcModel? src;

  WallpaperModel(
      {this.src,
      this.photographer,
      this.photographer_id,
      this.photographer_url});

  factory WallpaperModel.fromMap(Map<String, dynamic> jsonData) {
    return WallpaperModel(
        src: SrcModel.fromMap(jsonData["src"]),
        photographer: jsonData["photographer"],
        photographer_id: jsonData["photographer_id"],
        photographer_url: jsonData["photographer_url"]);
  }
}

class SrcModel {
  String? original;
  String? small;
  String? portrait;

  SrcModel(
      {this.portrait, this.original, this.small});

  factory SrcModel.fromMap(Map<String, dynamic> jsonData) {
    return SrcModel(
      original: jsonData["original"],
      portrait: jsonData["portrait"],
      small: jsonData["small"]);
  }
}
