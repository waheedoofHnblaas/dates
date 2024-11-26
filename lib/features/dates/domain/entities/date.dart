import 'package:equatable/equatable.dart';
import 'package:money/features/dates/domain/entities/friend.dart';

class Date extends Equatable {
  final String createdAt;
  final String updatedAt;
  final String timeAt;
  final String titleName;
  final String explainText;
  final String id;
  final String databaseId;
  final String collectionId;
  final List<String> permissions;
  final List<Friend> friends;

  const Date({
    required this.createdAt,
    required this.updatedAt,
    required this.timeAt,
    required this.titleName,
    required this.explainText,
    required this.id,
    required this.databaseId,
    required this.collectionId,
    required this.permissions,
    required this.friends,
  });

  @override
  List<Object?> get props => [
        createdAt,
        updatedAt,
        timeAt,
        titleName,
        explainText,
        id,
        databaseId,
        collectionId,
        permissions,
        friends,
      ];
}

