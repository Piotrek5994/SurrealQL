DEFINE FUNCTION fn::addGroup(
  $name: string,
  $location: option<point>,
  $owner: record<user>,
  $image: option<record<file>>,
  $interest: record<interest>
) {
  CREATE group CONTENT {
    name: $name,
    owner: $owner,
    location: $location,
    image: $image,
    interest: $interest,
  };
};