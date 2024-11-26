
import 'package:equatable/equatable.dart';

class Friend extends Equatable {
  final String name;
  final String phoneNum;
  final String id;
  final String createdAt;
  final String updatedAt;
  final List<String> permissions;
  final String databaseId;
  final String collectionId;

  const Friend({
    required this.name,
    required this.phoneNum,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.permissions,
    required this.databaseId,
    required this.collectionId,
  });

  @override
  List<Object?> get props => [
    name,
    phoneNum,
    id,
    createdAt,
    updatedAt,
    permissions,
    databaseId,
    collectionId,
  ];
}