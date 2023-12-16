DEFINE FUNCTION fn::updateLocation(
  $user: record<user>,
  $location: point
) {
  UPDATE user SET location=$location, updatedAt = time::now() WHERE id=$user;
} 