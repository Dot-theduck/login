
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:login/models/book_model.dart';

class PlaylistProvider extends ChangeNotifier {
  // Playlist of books
  final List<Book> _playlist = [
    // Book 1
    Book(
      bookName: "Mr. Ball an egg.cellent adventure",
      artistName: "Afia Atakora",
      albumArtImagePath: "assets/images/book3.PNG",
      audioPath: "audio/3.mp3",
    ),
    
    // books 2
    Book(
      bookName: "Pterapunzel",
      artistName: "Celeste Ng",
      albumArtImagePath: "assets/images/book7.PNG",
      audioPath: "audio/9.mp3",
    ),
    
    // book 3
    Book(
      bookName: "No kimchi for me",
      artistName: "Elizabeth Gilbert",
      albumArtImagePath: "assets/images/book6.PNG",
      audioPath: "audio/8.mp3",
    ),
    // book 4
    Book(
      bookName: "Lucy the dinosaur",
      artistName: "Karma Brown",
      albumArtImagePath: "assets/images/book1.PNG",
      audioPath: "audio/4.mp3",
    ),
    
    // book 5
    Book(
      bookName: "The happy little dinosaur",
      artistName: "Emily St. John Mandel",
      albumArtImagePath: "assets/images/book2.PNG",
      audioPath: "audio/5.mp3",
    ),
    
    // book 6
    Book(
      bookName: "Adopt a pet rock",
      artistName: "Kacen Callender",
      albumArtImagePath: "assets/images/book4.PNG",
      audioPath: "audio/6.mp3",
    ),

    Book(
      bookName: "Its pooltime",
      artistName: "Jesse Thistle",
      albumArtImagePath: "assets/images/book5.PNG",
      audioPath: "audio/7.mp3",
    ),
  ];

  // Current song playing index
  int? _currentSongIndex;

  // a u d i o p l a y e r

  //audioplayer
  final AudioPlayer _audioPlayer = AudioPlayer();

  //duration
  Duration _currentDuration = Duration.zero;
  Duration _totalDuration = Duration.zero;

  //constructor
  PlaylistProvider() {
       listenToDuration();
  }

  //initialiy not playing
  bool _isPlaying = false;
  

  //play 
  void play() async {
    final String path = _playlist[_currentSongIndex!].audioPath;
    await _audioPlayer.stop(); //stop the current book
    await _audioPlayer.play(AssetSource(path));//play the new one
    _isPlaying = true;
    notifyListeners();
  }

  //pause 
  void pause() async {
    await _audioPlayer.pause();
    _isPlaying = false;
    notifyListeners();
  }
 

  //resume playing
    void resume() async {
    await _audioPlayer.resume();
    _isPlaying = true;
    notifyListeners();
  }

  //pause or resume
   void pauseOrResume() async {
    if(_isPlaying) {
      pause();
    } else {
      resume();
    }
    notifyListeners();
  } 

  //seek to a specific position in the current song
  void seek(Duration position) async {
    await _audioPlayer.seek(position);
  }

  //play next
  void playNextSong() {
    if(_currentSongIndex !=null) {
      if (_currentSongIndex! <_playlist.length - 1) {
        //go to the next song if it's not the last one
        currentSongIndex = _currentSongIndex! + 1;
      } else {
        //if its the last song, loop back to the first one
        currentSongIndex = 0;
      }
    }
  }

  //play previous
  void playPreviousSong() async {
    //if more than 2 sec have passed, restart the current song
    if( _currentDuration.inSeconds > 2) {
      seek(Duration.zero);
    }
    //if its withn first 2 sec, go to previous sog
    else {
      if (_currentSongIndex! >0 ) {
        currentSongIndex = _currentSongIndex! - 1;
      } else {
        //if its the first song, loop back to the last one
        currentSongIndex = _playlist.length - 1;
      }
    }
  }

  //listen to duration
  void listenToDuration( ) {
    //listen for total duration
    _audioPlayer.onDurationChanged.listen((newDuration) {
      _totalDuration = newDuration;
      notifyListeners();
    });

    //listen for current duration
    _audioPlayer.onPositionChanged.listen((newPosition) {
      _currentDuration = newPosition;
    });

    //listen for song completion
    _audioPlayer.onPlayerComplete.listen((event) {
      playNextSong();
    });

  }

  //dispose audio player


  // Getters
  List<Book> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;
  bool get isPlaying => _isPlaying;
  Duration get currentDuration => _currentDuration;
  Duration get totalDuration => _totalDuration;

  // Setters
  set currentSongIndex(int? newIndex) {

    //update current song index
    _currentSongIndex = newIndex;

    if( newIndex !=null) {
      play();//play at the new index
    }
    //update UI
    notifyListeners();
  }


}
