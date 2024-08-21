
class Book {
  final String bookName;
  final String artistName;
  final String albumArtImagePath;
  final double rating;
  final String audioPath;

  Book({
    required this.bookName,
    required this.artistName,
    required this.albumArtImagePath,
    this.rating = 0.0,
    required this.audioPath,
  });
}

