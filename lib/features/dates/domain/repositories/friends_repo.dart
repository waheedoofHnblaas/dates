import 'package:money/features/dates/domain/entities/friend.dart';
abstract class FriendsRepo {
  // Get all friends
  Future<List<Friend>> getAllFriends();
  // Get one friend
  Future<Friend> getFriend(String id);
  // Create friend
  Future<Friend> createFriend({
    required String dateId,
    required String friendName,
    required String friendPhoneNum,
  });
  // Delete friend
  Future<void> deleteFriend(String dateId, String friendId);
  // Update friend
  Future<Friend> updateFriend({
    required String dateId,
    required String friendId,
    String? friendName,
    String? friendPhoneNum,
  });
  // Expected methods
  Future<List<Friend>> getFriendsByDate(String dateId);
  Future<void> addFriendToMultipleDates({
    required String friendName,
    required String friendPhoneNum,
    required List<String> dateIds,
  });
  Future<void> removeFriendFromMultipleDates(String friendId, List<String> dateIds);
}

