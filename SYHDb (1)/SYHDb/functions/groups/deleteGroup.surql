DEFINE FUNCTION fn::deleteGroup(
  $group: record<group>
){
  DELETE group WHERE id=$group;
}