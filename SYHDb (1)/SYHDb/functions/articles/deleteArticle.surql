DEFINE FUNCTION fn::deleteArticle(
  $article: record<article>
){
  DELETE article WHERE id=$article;
}