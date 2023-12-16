DEFINE FUNCTION fn::addCommentPost(
  $post: record<post>,
  $author: record<user>,
  $content: string
) {
  LET $comment = CREATE ONLY comment CONTENT {
    content: $content,
    author: $author,
  } RETURN id;
  RELATE $post -> comments -> $comment SET isPost = true;
};