import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import '/l_presentation/app_theme.dart';

class Player extends StatefulWidget {
  final String mp3url;
  const Player({
    Key? key,
    required this.mp3url,
  }) : super(key: key);

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late final ProgressManager _progressManager;

  @override
  void initState() {
    super.initState();
    _progressManager = ProgressManager(widget.mp3url);
  }

  @override
  void dispose() {
    _progressManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.colorGreyDeep,
      height: 50,
      child: Row(
        children: [
          ValueListenableBuilder<ButtonState>(
            valueListenable: _progressManager.buttonNotifier,
            builder: (_, value, __) {
              return Container(
                  margin: const EdgeInsets.only(right: 20, bottom: 10),
                  width: 30.0,
                  height: 30.0,
                  child: (() {
                    switch (value) {
                      case ButtonState.loading:
                        return const CircularProgressIndicator(
                          strokeWidth: 2,
                        );
                      case ButtonState.paused:
                        return IconButton(
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.play_circle_outline,
                            color: AppTheme.colorFirm,
                          ),
                          iconSize: 30.0,
                          onPressed: _progressManager.play,
                        );
                      case ButtonState.playing:
                        return IconButton(
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.pause_circle_outline,
                            color: AppTheme.colorFirm,
                          ),
                          iconSize: 30.0,
                          onPressed: _progressManager.pause,
                        );
                    }
                  }()));
            },
          ),
          Expanded(
            child: ValueListenableBuilder<ProgressBarState>(
              valueListenable: _progressManager.progressNotifier,
              builder: (_, value, __) {
                return ProgressBar(
                  baseBarColor: AppTheme.colorGreyMiddle,
                  bufferedBarColor: AppTheme.colorGreyMiddle,
                  progressBarColor: AppTheme.colorFirm,
                  thumbColor: AppTheme.colorFirm,
                  thumbGlowColor: AppTheme.colorGreyMiddle,
                  timeLabelTextStyle: const TextStyle(
                    color: AppTheme.colorGreyMiddle,
                    fontSize: 10,
                  ),
                  thumbRadius: 6,
                  thumbGlowRadius: 14,
                  barHeight: 2,
                  progress: value.current,
                  buffered: value.buffered,
                  total: value.total,
                  onSeek: _progressManager.seek,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProgressManager {
  final progressNotifier = ValueNotifier<ProgressBarState>(
    ProgressBarState(
      current: Duration.zero,
      buffered: Duration.zero,
      total: Duration.zero,
    ),
  );
  final buttonNotifier = ValueNotifier<ButtonState>(ButtonState.paused);

  final String url;

  late AudioPlayer _audioPlayer;

  ProgressManager(this.url) {
    _init(url);

    _audioPlayer.playerStateStream.listen((playerState) {
      final isPlaying = playerState.playing;
      final processingState = playerState.processingState;
      if (processingState == ProcessingState.loading ||
          processingState == ProcessingState.buffering) {
        buttonNotifier.value = ButtonState.loading;
      } else if (!isPlaying) {
        buttonNotifier.value = ButtonState.paused;
      } else if (processingState != ProcessingState.completed) {
        buttonNotifier.value = ButtonState.playing;
      } else {
        _audioPlayer.seek(Duration.zero);
        _audioPlayer.pause();
      }
    });

    _audioPlayer.positionStream.listen((position) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: position,
        buffered: oldState.buffered,
        total: oldState.total,
      );
    });

    _audioPlayer.bufferedPositionStream.listen((bufferedPosition) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: oldState.current,
        buffered: bufferedPosition,
        total: oldState.total,
      );
    });

    _audioPlayer.durationStream.listen((totalDuration) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: oldState.current,
        buffered: oldState.buffered,
        total: totalDuration ?? Duration.zero,
      );
    });
  }
  void _init(String url) async {
    _audioPlayer = AudioPlayer();
    await _audioPlayer.setUrl(url);
  }

  void play() {
    _audioPlayer.play();
  }

  void pause() {
    _audioPlayer.pause();
  }

  void seek(Duration position) {
    _audioPlayer.seek(position);
  }

  void dispose() {
    _audioPlayer.dispose();
  }
}

class ProgressBarState {
  ProgressBarState({
    required this.current,
    required this.buffered,
    required this.total,
  });
  final Duration current;
  final Duration buffered;
  final Duration total;
}

enum ButtonState { paused, playing, loading }
