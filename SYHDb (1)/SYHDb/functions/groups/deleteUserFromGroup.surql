DEFINE FUNCTION fn::deleteUserFromGroup(
  $user: record<user>,
  $group: record<group>
){
  DELETE from userGroup WHERE in=$group AND out=$user;
};