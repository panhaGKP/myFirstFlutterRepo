class MovieModels {
  String title;
  String image;
  bool isFavorite;

  MovieModels(
      {required this.title, this.image = "No Image", this.isFavorite = false});
}
