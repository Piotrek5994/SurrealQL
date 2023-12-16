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