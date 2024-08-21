
import 'package:flutter/material.dart';
import 'package:login/components/mydrawer.dart';
import 'package:login/models/book_model.dart';
import 'package:login/models/playlist_provider.dart';
import 'package:login/pages/books_listen.dart';
import 'package:provider/provider.dart';

class BookPlaylistPage extends StatefulWidget {
  const BookPlaylistPage({super.key});

  @override
  State<BookPlaylistPage> createState() => _HomePageState();
}

class _HomePageState extends State<BookPlaylistPage> {
  late PlaylistProvider playlistProvider;

  @override
  void initState() {
    super.initState();
    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

  // Go to a song
  void goToSong(int songIndex, Book book) {
    playlistProvider.currentSongIndex = songIndex;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SongPage(
          artistName: book.artistName,
          bookName: book.bookName,
          audioPath: book.audioPath,
          albumArtImagePath: book.albumArtImagePath,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("P L A Y L I S T"),
      ),
      drawer: const MyDrawer(),
      body: Consumer<PlaylistProvider>(
        builder: (context, playlistProvider, child) {
          final List<Book> playlist = playlistProvider.playlist;

          return ListView.builder(
            itemCount: playlist.length,
            itemBuilder: (context, index) {
              final Book book = playlist[index];

              return ListTile(
                title: Text(book.bookName),
                subtitle: Text(book.artistName),
                leading: Image.asset(book.albumArtImagePath),
                onTap: () => goToSong(index, book),
              );
            },
          );
        },
      ),
    );
  }
}
