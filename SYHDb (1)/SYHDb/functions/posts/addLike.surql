DEFINE FUNCTION fn::addLike(
  $user: record<user>,
  $post: record<post>
){
  RELATE $user -> likes -> $post;
}