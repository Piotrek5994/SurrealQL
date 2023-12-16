DEFINE FUNCTION fn::friendCount(
  $user: record<user>
) {
  RETURN COUNT(SELECT * FROM friends WHERE in=$user);
};