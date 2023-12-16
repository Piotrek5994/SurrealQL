DEFINE FUNCTION fn::deleteComment(
  $comment: record<comment>
){
  DELETE comments WHERE out=$comment;
  DELETE comment WHERE id=$comment;
}