import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class MerterialModels extends Equatable {
  final String id;
 final String title;

  MerterialModels({required this.title, String? id})
      : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [];

  MerterialModels copyWith({
    String? id,
    
  }) {
    return MerterialModels(
      id: id,
      title: title
    
    );
  }
}
