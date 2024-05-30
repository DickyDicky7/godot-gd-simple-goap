class_name Npc ;
extends    Node;

@export_group           ("References")
@export var npc_state   : NpcState  ;
@export var npc_planner : NpcPlanner;

var     current_npc_action          ;
func _process(delta: float) -> void :
	if       (
		current_npc_action  == null
	or not
		current_npc_action.is_precondition_state_collection_met()            ):
		current_npc_action   =                              npc_planner.plan();
	else:
		current_npc_action._perform                          ();
		current_npc_action.apply_post_action_state_collection();
	pass;











