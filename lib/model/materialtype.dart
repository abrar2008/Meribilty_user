import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Merterialtype extends Equatable {
  final String id;
 final String title;

  Merterialtype({required this.title, String? id})
      : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [];

  Merterialtype copyWith({
    String? id,
    
  }) {
    return Merterialtype(
      id: id,
      title: title
    
    );
  }
}
