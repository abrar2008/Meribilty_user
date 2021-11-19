import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class UnloadOptionModels extends Equatable {
  final String id;
  final int count;

  UnloadOptionModels({required this.count, String? id})
      : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [];

  UnloadOptionModels copyWith({
    String? id,
    int? count,
  }) {
    return UnloadOptionModels(
      id: id,
      count: count ?? this.count,
    );
  }
}
