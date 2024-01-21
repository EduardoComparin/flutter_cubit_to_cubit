import 'dart:convert';

import 'package:equatable/equatable.dart';

class StateView2 extends Equatable {
  const StateView2({
    this.atualizaView = false,
  });

  final bool atualizaView;

  StateView2 copyWith({
    bool? atualizaView,
  }) {
    return StateView2(
      atualizaView: atualizaView ?? this.atualizaView,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'atualizaView': atualizaView,
    };
  }

  factory StateView2.fromMap(Map<String, dynamic> map) {
    return StateView2(
      atualizaView: map['atualizaView'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  @override
  bool? get stringify => true;

  @override
  List<Object> get props {
    return [
      atualizaView,
    ];
  }
}
