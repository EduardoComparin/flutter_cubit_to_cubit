import 'dart:convert';

import 'package:equatable/equatable.dart';

class StateView3 extends Equatable {
  const StateView3({
    this.atualizaView = false,
  });

  final bool atualizaView;

  StateView3 copyWith({
    bool? atualizaView,
  }) {
    return StateView3(
      atualizaView: atualizaView ?? this.atualizaView,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'atualizaView': atualizaView,
    };
  }

  factory StateView3.fromMap(Map<String, dynamic> map) {
    return StateView3(
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
