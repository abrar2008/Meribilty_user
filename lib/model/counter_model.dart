import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class CounterModels extends Equatable {
  final String id;
  final int count;

  CounterModels({required this.count, String? id})
      : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [];

  CounterModels copyWith({
    String? id,
    int? count,
  }) {
    return CounterModels(
      id: id,
      count: count ?? this.count,
    );
  }
}
