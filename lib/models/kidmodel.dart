import 'book_model.dart';

class Kid {
  String name;
  String profileImage;
  List<Book> recentBooks;

  Kid({
    required this.name,
    required this.profileImage,
    required this.recentBooks,
  });
}
