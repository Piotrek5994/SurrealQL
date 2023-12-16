info for db
//Function add File
RETURN fn::addFile("test9",2,2,"test4","zz");
SELECT * FROM fn::addFile("test8",2,2,"test4","zz");

 DEFINE FUNCTION fn::addFile(
     $url:string,
     $width:int,
     $height:int,
     $blurhash:string,
     $alt:string,
 ){
   LET $file = CREATE ONLY file CONTENT
    {
        url:$url,
        width:$width,
        height:$height,
        blurhash:$blurhash,
        alt:$alt,
    };
     RETURN $file.id;
 };

REMOVE FUNCTION fn::addFile;
//Function add User
RETURN fn::addUser("piotrek@gmail.com","pio","pio","pio5994",time::now(),(0,0),file:kwzx14q4zadztanpc2vs,time::now(),time::now())
DEFINE FUNCTION fn::addUser(
    $email: string,
    $name: string,
    $username: string,
    $password: string,
    $birthdate: datetime,
    $location: point,
    $image: record<file>,
    $createdAt: datetime,
    $updatedAt: datetime,
){
    LET $user = CREATE ONLY user CONTENT
    {
        email:$email,
        name:$name,
        username:$username,
        password:$password,
        birthdate:$birthdate,
        location:$point,
        image:$image,
        createdAt:$createdAt,
        updatedAt:$updatedAt,
    };
    RETURN $user.id;
}
//Function add Post to Group
RETURN fn::addPostToGroup("pio",user:ne8ghopt9wb0u0lv33ei,time::now(),group:7mnikr57pmb0u5e67kk5)

DEFINE FUNCTION fn::addPostToGroup(
    $content: string,
    $author: record<user>,
    $createdAt: datetime,
    $group: record<group>,
) {
    LET $post = CREATE ONLY post CONTENT {
        content: $content,
        author: $author,
        createdAt: time::now(),
    } RETURN id;
    RELATE $group -> posts -> $post;
    RETURN $post.id;
};
//function add comment to post
RETURN fn::addCommentToPost2("pio",user:ne8ghopt9wb0u0lv33ei,post:utqpflnevstb5mnrl02y)
DEFINE FUNCTION fn::addCommentToPost2(
    $content:string,
    $author:record<user>,
    $post:record<post>,
) {
    LET $comment = CREATE ONLY comment CONTENT {
        content:$content,
        author:$author,
        createdAt:time::now(),
    } RETURN id;
    RELATE $post -> comments -> $comment SET isPost = true;
    RETURN $comment.id;
}
