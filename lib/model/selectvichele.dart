import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class SelectvicheleModels extends Equatable {
  final String id;
  final int count;

  SelectvicheleModels({required this.count, String? id})
      : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [];

  SelectvicheleModels copyWith({
    String? id,
    int? count,
  }) {
    return SelectvicheleModels(
      id: id,
      count: count ?? this.count,
    );
  }
}