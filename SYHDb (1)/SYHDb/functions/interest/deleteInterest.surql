DEFINE FUNCTION fn::deleteInterest(
  $user: record<user>,
  $interest:  record<interest>
) {
  DELETE $user->userInterest WHERE out=$interest;
  UPDATE user SET updatedAt = time::now() WHERE id=$user;
};