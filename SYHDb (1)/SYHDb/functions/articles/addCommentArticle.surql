DEFINE FUNCTION fn::addCommentArticle(
  $article: record<article>,
  $author: record<user>,
  $content: string
){
LET $comment = CREATE comment CONTENT {
  author: $author,
  content: $content,
} RETURN id;
  RELATE $article -> comments -> $comment SET isPost = false;
};