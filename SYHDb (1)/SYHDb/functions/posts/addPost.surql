DEFINE FUNCTION fn::addPost(
  $author: record<user>,
  $content: string,
  $group: record<group>
){
  LET $post = CREATE ONLY post CONTENT {
    author: $author,
    content: $content,
  } RETURN id;
  RELATE $group -> postsGroups -> $post;
};