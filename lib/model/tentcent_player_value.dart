import 'package:flutter/material.dart';

class TencentPlayerValue {
  final Duration duration;
  final Duration position;
  final Duration playable;
  final bool isPlaying;
  final String errorDescription;
  final Size size;
  final bool isLoading;
  final int netSpeed;
  final double rate;
  final int bitrateIndex;
  final double volume;
  final bool playend;
  final bool isMute;
  final int reconnectCount;
  final bool isDisconnect;

  bool get initialized => duration.inMilliseconds != 0;

  bool get hasError => errorDescription != null;

  double get aspectRatio => size != null ? size.width / size.height > 0.0 ? size.width / size.height : 1.0 : 1.0;

  TencentPlayerValue({
    this.duration = const Duration(),
    this.position = const Duration(),
    this.playable = const Duration(),
    this.isPlaying = false,
    this.errorDescription,
    this.size,
    this.isLoading = false,
    this.netSpeed,
    this.rate = 1.0,
    this.bitrateIndex = 0, //TODO 默认清晰度
    this.volume = 0,
    this.playend = false,
    this.isMute = false,
    this.reconnectCount = 0,
    this.isDisconnect = false
  });

  TencentPlayerValue copyWith({
    Duration duration,
    Duration position,
    Duration playable,
    bool isPlaying,
    String errorDescription,
    Size size,
    bool isLoading,
    int netSpeed,
    double rate,
    int bitrateIndex, double volume,
    bool playend,
    bool isMute,
    int reconnectCount,
    bool isDisconnect
  }) {
    return TencentPlayerValue(
      duration: duration ?? this.duration,
      position: position ?? this.position,
      playable: playable ?? this.playable,
      isPlaying: isPlaying ?? this.isPlaying,
      errorDescription: errorDescription ?? this.errorDescription,
      size: size ?? this.size,
      isLoading: isLoading ?? this.isLoading,
      netSpeed: netSpeed ?? this.netSpeed,
      rate: rate ?? this.rate,
      bitrateIndex: bitrateIndex ?? this.bitrateIndex,
      volume: volume ?? this.volume,
      playend: playend ?? this.playend,
      isMute: isMute ?? this.isMute,
        reconnectCount: reconnectCount ?? this.reconnectCount,
        isDisconnect: isDisconnect ?? this.isDisconnect
    );
  }

  @override
  String toString() {
    return '$runtimeType('
        'duration: $duration, '
        'position: $position, '
        'playable: $playable, '
        'isPlaying: $isPlaying, '
        'errorDescription: $errorDescription),'
        'isLoading: $isLoading),'
        'netSpeed: $netSpeed),'
        'rate: $rate),'
        'bitrateIndex: $bitrateIndex),'
        'size: $size)';
  }
}

enum DataSourceType { asset, network, file }