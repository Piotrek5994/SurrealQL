DEFINE FUNCTION fn::deleteFriend(
  $user1: record<user>,
  $user2: record<user>
) {
  DELETE $user1->friends WHERE out=$user2;
  DELETE $user2->friends WHERE out=$user1;
}