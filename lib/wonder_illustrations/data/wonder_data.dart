import 'package:equatable/equatable.dart';
import 'wonder_type.dart';

class WonderData extends Equatable {
  const WonderData({
    required this.type,
  });

  final WonderType type;

  @override
  List<Object?> get props => [type];
}
