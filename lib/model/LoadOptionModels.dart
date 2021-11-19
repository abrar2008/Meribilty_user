// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class LoadOptionModels extends Equatable {
  final String id;
  final int count;

  LoadOptionModels({required this.count, String? id})
      : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [];

  LoadOptionModels copyWith({
    String? id,
    int? count,
  }) {
    return LoadOptionModels(
      id: id,
      count: count ?? this.count,
    );
  }
}
