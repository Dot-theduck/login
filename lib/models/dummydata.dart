import 'package:login/models/book_model.dart';

import 'kidmodel.dart';

// Sample list of songs
List<Book> sampleSongs = [
  Book(bookName: 'Lucy the dinosaur', albumArtImagePath: 'assets/images/book1.png', artistName: '', audioPath: ''),
  Book(bookName: 'The happy little dinosaur', albumArtImagePath: 'assets/images/book2.png', artistName: '', audioPath: ''),
  Book(bookName: 'Mr BAll an egg.cellent adventure', albumArtImagePath: 'assets/images/book1.png', artistName: '', audioPath: ''),

];

// List of most popular songs
List<Book> mostSongs = [
  Book(bookName: 'Lucy the dinosaur', albumArtImagePath: 'assets/images/book1.png', artistName: '', audioPath: ''),
  Book(bookName: 'The happy little dinosaur', albumArtImagePath: 'assets/images/book2.png', artistName: '', audioPath: ''),
  Book(bookName: 'Mr. Ball an egg.cellent adventure', albumArtImagePath: 'assets/images/book3.PNG', artistName: '', audioPath: ''),
  Book(bookName: 'Its pooltime', albumArtImagePath: 'assets/images/book5.PNG', artistName: '', audioPath: ''),
  Book(bookName: 'No kimchi for me', albumArtImagePath: 'assets/images/book6.PNG', artistName: '', audioPath: ''),
  Book(bookName: 'Pterapunzel', albumArtImagePath: 'assets/images/book7.PNG', artistName: '', audioPath: ''),
];

// List of kids, each with their list of recent songs
List<Kid> kidsList = [
  Kid(name: 'Alice', profileImage: 'assets/images/profile1.png', recentBooks: mostSongs),
  Kid(name: 'Ben', profileImage: 'assets/images/pro2.png', recentBooks: sampleSongs),
];
