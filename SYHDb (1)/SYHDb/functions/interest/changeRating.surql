DEFINE FUNCTION fn::changeRating(
  $user: record<user>,
  $interest: record<interest>,
  $delta: int
) {
  UPDATE userInterest SET rating = rating + delta WHERE in=$user AND out=$interest;
};