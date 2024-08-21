import 'package:flutter/material.dart';
import 'package:login/components/neu_box.dart';
import 'package:login/models/playlist_provider.dart';
import 'package:login/pages/book_playlist.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  final String albumArtImagePath;
  final String bookName;
  final String audioPath;
  final String artistName;

  const SongPage({
    super.key,
    required this.albumArtImagePath,
    required this.bookName,
    required this.audioPath,
    required this.artistName,
  });

  //covert duration into min:sec
  String formatTime(Duration duration) {
    String twoDigitSeconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    String formattedTime = "${duration.inMinutes}:$twoDigitSeconds";

    return formattedTime; 
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(
      builder: (context, value, child) {

        //get the playlist
        final playlist = value.playlist;

        //current book index
        final currentSong = playlist[value.currentSongIndex ?? 0];

        //return scaffold ui
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // App bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Back button
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                      // Title
                      const Text(
                        " listening Time",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      // Menu button
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const BookPlaylistPage()), // Replace HomePage() with your actual home page widget
                          );
                        },
                        icon: const Icon(Icons.playlist_add_check),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Album
                  NeuBox(
                    child: Column(
                      children: [
                        // Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(currentSong.albumArtImagePath),
                        ),
                        const SizedBox(height: 20),

                        // Song and artist
                         Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Song and artist names
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    currentSong.bookName,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(currentSong.artistName),
                                ],
                              ),
                              // Heart icon
                              const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Duration progress
                  Column(
                    children: [
                       Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Start time
                            Text(formatTime(value.currentDuration)),
                            // Shuffle icon
                            Icon(Icons.shuffle),
                            // Repeat icon
                            Icon(Icons.repeat),
                            // End time
                            Text(formatTime(value.totalDuration)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0),
                        ),
                        child: Slider(
                          min: 0,
                          max: value.totalDuration.inSeconds.toDouble(),
                          value: value.currentDuration.inSeconds.toDouble(),
                          activeColor: Colors.green,
                          onChanged: (double double) {
                            // duration when the user is sliding around
                          },
                          onChangeEnd: (double double) {
                            // sliding has finnised, go to that position in duration
                            value.seek(Duration(seconds: double.toInt()));
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  // Playback controls (placeholder)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: value.playPreviousSong,
                          child: const NeuBox(
                            child: Icon(Icons.skip_previous)),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: GestureDetector(
                          onTap: value.pauseOrResume,
                          child:  NeuBox(
                            child: Icon(value.isPlaying ? Icons.pause : Icons.play_arrow)),
                        ),
                      ),
                     Expanded(
                        child: GestureDetector(
                          onTap: value.playNextSong,
                          child: const NeuBox(
                            child: Icon(Icons.skip_next)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
