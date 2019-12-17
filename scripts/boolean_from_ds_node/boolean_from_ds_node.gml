/// boolean_from_ds_node (ds_map_node, propertyName)
/// @param ds_map_node - ds_map node that's supposed to contain the property were searching for
/// @param propertyName - key from which we get boolean value

var ds_map_node = argument0;
var propertyName = argument1;

var boolVal = false;

if (ds_map_exists(ds_map_node, propertyName)) {
	var value = ds_map_node[? propertyName];
	
	boolVal = value == "true";
}

return boolVal;