import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class UnloadportModels extends Equatable {
  final String id;
  final int count;

  UnloadportModels({required this.count, String? id})
      : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [];

  UnloadportModels copyWith({
    String? id,
    int? count,
  }) {
    return UnloadportModels(
      id: id,
      count: count ?? this.count,
    );
  }
}
