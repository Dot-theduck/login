
import 'package:login/models/book_model.dart';

final List<Book> _allBooks = [
  Book(
    bookName: "Lucy the dinosaur",
    artistName: "Karma Brown",
    albumArtImagePath: "assets/images/book1.PNG",
    rating: 4.0,
    audioPath: "audio/4.mp3",
  ),
  Book(
    bookName: "The happy little dinosaur",
    artistName: "Emily St. John Mandel",
    albumArtImagePath: "assets/images/book2.PNG",
    rating: 4.0,
    audioPath: "audio/5.mp3",
  ),
  Book(
    bookName: "Mr. Ball an egg.cellent adventure",
    artistName: "Afia Atakora",
    albumArtImagePath: "assets/images/book3.PNG",
    rating: 4.0,
    audioPath: "audio/3.mp3",
  ),
  Book(
    bookName: "Adopt a pet rock",
    artistName: "Kacen Callender",
    albumArtImagePath: "assets/images/book4.PNG",
    rating: 4.0,
    audioPath: "audio/6.mp3",
  ),
  Book(
    bookName: "Its pooltime",
    artistName: "Jesse Thistle",
    albumArtImagePath: "assets/images/book5.PNG",
    rating: 4.0,
    audioPath: "audio/7.mp3",
  ),
  Book(
    bookName: "No kimchi for me",
    artistName: "Elizabeth Gilbert",
    albumArtImagePath: "assets/images/book6.PNG",
    rating: 4.0,
    audioPath: "audio/8.mp3",
  ),
  Book(
    bookName: "Pterapunzel",
    artistName: "Celeste Ng",
    albumArtImagePath: "assets/images/book7.PNG",
    rating: 4.0,
    audioPath: "audio/9.mp3",
  ),
];

final List<Book> _recentBooks = [
  Book(
    bookName: "Mr. Ball an egg.cellent adventure",
    artistName: "Afia Atakora",
    albumArtImagePath: "assets/images/book3.PNG",
    rating: 4.0,
    audioPath: "audio/3.mp3",
  ),
  Book(
    bookName: "Adopt a pet rock",
    artistName: "Kacen Callender",
    albumArtImagePath: "assets/images/book4.jpg",
    rating: 4.0,
    audioPath: "audio/6.mp3",
  ),
];

final List<Book> _toppicks = [
  Book(
    bookName: "The happy little dinosaur",
    artistName: "Emily St. John Mandel",
    albumArtImagePath: "assets/images/book2.PNG",
    rating: 4.0,
    audioPath: "audio/5.mp3",
  ),
  Book(
    bookName: "Its pooltime",
    artistName: "Jesse Thistle",
    albumArtImagePath: "assets/images/book5.PNG",
    rating: 4.0,
    audioPath: "audio/7.mp3",
  ),
  Book(
    bookName: "Adopt a pet rock",
    artistName: "Kacen Callender",
    albumArtImagePath: "assets/images/book4.jpg",
    rating: 4.0,
    audioPath: "audio/6.mp3",
  ),
];

final List<Book> _everyone = [
  Book(
    bookName: "Pterapunzel",
    artistName: "Celeste Ng",
    albumArtImagePath: "assets/images/book7.PNG",
    rating: 4.0,
    audioPath: "audio/9.mp3",
  ),
  Book(
    bookName: "No kimchi for me",
    artistName: "Elizabeth Gilbert",
    albumArtImagePath: "assets/images/book6.PNG",
    rating: 4.0,
    audioPath: "audio/8.mp3",
  ),
  Book(
    bookName: "The happy little dinosaur",
    artistName: "Emily St. John Mandel",
    albumArtImagePath: "assets/images/book2.PNG",
    rating: 4.0,
    audioPath: "audio/5.mp3",
  ),
];

List<Book> get allBooks {
  return List.from(_allBooks);
}

List<Book> get recentBooks {
  return List.from(_recentBooks);
}

List<Book> get toppicks {
  return List.from(_toppicks);
}

List<Book> get everyone {
  return List.from(_everyone);
}
