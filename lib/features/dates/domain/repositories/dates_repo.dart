
import 'package:money/features/dates/domain/entities/date.dart';
import 'package:dartz/dartz.dart';
abstract class DatesRepo {
  // Get all dates
  Future<Either<Failure, List<Date>>> getAllDates();
  // Get one date
  Future<Either<Failure, Date>> getDate(String id);
  // Create date
  Future<Either<Failure, Date>> createDate({
    required String titleName,
    required String explainText,
    required String timeAt,
    required String createdAt,
    required String databaseId,
    required String collectionId,
  });
  // Delete date
  Future<Either<Failure, Unit>> deleteDate(String id);
  // Update date
  Future<Either<Failure, Date>> updateDate({
    required String id,
    String? titleName,
    String? explainText,
    String? timeAt,
    String? createdAt,
    String? databaseId,
    String? collectionId,
  });
}


class Failure {
  final String message;
  final int code;
  Failure({required this.message, required this.code});
  factory Failure.serverError() { 
    return Failure(message: 'Server error', code: 500);
  }
  factory Failure.invalidData({required String message}) {
    return Failure(message: message, code: 400);
  }
  factory Failure.notFound({required String message}) {
    return Failure(message: message, code: 404);
  }
  @override
  String toString() {
    return 'Failure(message: $message, code: $code)';
  }
}

