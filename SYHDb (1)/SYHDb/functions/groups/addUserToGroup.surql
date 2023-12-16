DEFINE FUNCTION fn::addUserToGroup(
  $user: record<user>,
  $group: record<group>,
){
  RELATE $group -> userGroup -> $user;
};