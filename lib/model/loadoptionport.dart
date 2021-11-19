// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class LoadOptionportM extends Equatable {
  final String id;
  final int count;

  LoadOptionportM({required this.count, String? id})
      : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [];

  LoadOptionportM copyWith({
    String? id,
    int? count,
  }) {
    return LoadOptionportM(
      id: id,
      count: count ?? this.count,
    );
  }
}
