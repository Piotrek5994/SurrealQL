DEFINE FUNCTION fn::addInterest(
  $user: record<user>,
  $interest: record<interest>
) {
    RELATE $user -> userInterest -> $interest SET rating = 0;
    UPDATE user SET updatedAt = time::now() WHERE id=$user;
};