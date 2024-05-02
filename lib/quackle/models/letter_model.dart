import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../app/app_colors.dart';

enum LetterStatus { initial, notInWord, inWord, correctWord }

class Letter extends Equatable {
  const Letter({
   required this.val,
    this.status = LetterStatus.initial,
  });

  factory Letter.empty() => const Letter(val: '');
  final String val;

  final LetterStatus status;

  // Displays word color if correct, incorrect, or in word
  Color get backgroundColor {
    switch(status) {
      case LetterStatus.initial:
        return Colors.transparent;

      case LetterStatus.notInWord:
        return incorrectColor;

      case LetterStatus.inWord:
        return insideWordColor;

      case LetterStatus.correctWord:
        return correctColor;
    }
  }

  // Show proper color for each letter base on letter status
  Color get borderColor {
    switch(status) {
      case LetterStatus.initial:
        return Colors.grey;

      default:
        return Colors.transparent;
    }
  }

  // returns copy of letter
  Letter copyWith({
    String? val,
    LetterStatus? status,
  }) {
    return Letter(
      val: val ?? this.val,
      status: status ?? this.status,
    );
  }

  @override
  List <Object?> get props => [val, status];
}