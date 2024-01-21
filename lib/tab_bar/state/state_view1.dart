import 'dart:convert';

import 'package:equatable/equatable.dart';

class StateView1 extends Equatable {
  const StateView1({
    this.atualizaView = false,
  });

  final bool atualizaView;

  StateView1 copyWith({
    bool? atualizaView,
  }) {
    return StateView1(
      atualizaView: atualizaView ?? this.atualizaView,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'atualizaView': atualizaView,
    };
  }

  factory StateView1.fromMap(Map<String, dynamic> map) {
    return StateView1(
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
