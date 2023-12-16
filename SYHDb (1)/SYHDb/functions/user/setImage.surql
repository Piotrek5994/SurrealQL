DEFINE FUNCTION fn::setImage(
  $user: record<user>,
  $file: record<file>
) {
  UPDATE user SET image=$file, updatedAt = time::now() WHERE id=$user;
}