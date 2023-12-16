DEFINE FUNCTION fn::addFriend(
    $user1: record<user>,
    $user2: record<user>
) {
  RELATE $user1 -> friends -> $user2;
  RELATE $user2 -> friends -> $user1;
}