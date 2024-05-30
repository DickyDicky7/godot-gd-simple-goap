class_name  NPCGoal;
extends        Node;

@export_group("Data")
@export var          goal_name       : StringName      ;
@export var priority                 : float      = 0.0;
@export var desired_state_collection : Dictionary      ;

@export_group("References")
@export var    npc_state : NPCState;

func is_desired_state_collection_met() -> bool:
	if (       npc_state == null     )        :
		return true;
	else:
		return npc_state.is_required_state_collection_met(
							 desired_state_collection    );

func _get_dynamic_priority() -> float:
	return 0.0;

func  get_totally_priority() -> float:
	return        priority 
	+_get_dynamic_priority()         ;





