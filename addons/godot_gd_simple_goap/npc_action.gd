class_name NPCAction;
extends         Node;

@export_group ("Data")
## Action's name
@export var             action_name      : StringName;
## Action's preconditions
@export var precondition_state_collection: Dictionary;
## Action's  post effects
@export var  post_action_state_collection: Dictionary;
## Action's  base cost
@export var       cost: float = 0.0;

@export_group("References")
@export var    npc_state : NPCState;

func              is_precondition_state_collection_met () -> bool:
	return npc_state. is_required_state_collection_met (
				self.precondition_state_collection     );

func            apply_post_action_state_collection     () -> void:
	for key   in      post_action_state_collection.keys():
		if (npc_state.state_collection.has(key)):
			npc_state.state_collection    [key] =      (
					  post_action_state_collection[key]);
	pass;

func     _perform     ()         :
	pass;

func _get_dynamic_cost() -> float:
	return 0.0;

func    get_total_cost() -> float:
	return        cost + _get_dynamic_cost();
























