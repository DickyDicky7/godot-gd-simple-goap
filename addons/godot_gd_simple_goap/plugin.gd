@tool
extends EditorPlugin;

#var          plugin;

func _enter_tree() -> void:
	add_custom_type("NPC"                                      , "Node", preload("res://addons/godot_gd_simple_goap/npc.gd"                                                                                                                                                                                              ), preload("res://addons/godot_gd_simple_goap/Node.svg"));
	add_custom_type(    "NPCState"                             , "Node", preload(                                         "res://addons/godot_gd_simple_goap/npc_state.gd"                                                                                                                                               ), preload("res://addons/godot_gd_simple_goap/Node.svg"));
	add_custom_type(             "NPCGoal"                     , "Node", preload(                                                                                        "res://addons/godot_gd_simple_goap/npc_goal.gd"                                                                                                 ), preload("res://addons/godot_gd_simple_goap/Node.svg"));
	add_custom_type(                     "NPCAction"           , "Node", preload(                                                                                                                                      "res://addons/godot_gd_simple_goap/npc_action.gd"                                                 ), preload("res://addons/godot_gd_simple_goap/Node.svg"));
	add_custom_type(                               "NPCPlanner", "Node", preload(                                                                                                                                                                                      "res://addons/godot_gd_simple_goap/npc_planner.gd"), preload("res://addons/godot_gd_simple_goap/Node.svg"));
#	plugin = preload("res://addons/godot_gd_simple_goap/npc_inspector_plugin.gd").new();
#	add_inspector_plugin(
#				  plugin);
	pass;


func _exit_tree() -> void:
	remove_custom_type("NPC"                                      );
	remove_custom_type(    "NPCState"                             );
	remove_custom_type(             "NPCGoal"                     );
	remove_custom_type(                     "NPCAction"           );
	remove_custom_type(                               "NPCPlanner");
#	remove_inspector_plugin(
#					 plugin);
	pass;













