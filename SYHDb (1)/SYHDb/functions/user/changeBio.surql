DEFINE FUNCTION fn::changeBio(
  $user: record<user>,
  $content: string
){
  UPDATE user SET bio=$content, updatedAt = time::now() WHERE id = $user;
}