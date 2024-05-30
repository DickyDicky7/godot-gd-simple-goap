class_name NpcPlanner;
extends          Node;

@export_group("References")
@export var npc_goals   : Array[NpcGoal  ];
@export var npc_actions : Array[NpcAction];

func   plan()                                          ->       NpcAction:
	var                     valid_npc_action_collection : Array[NpcAction];
	for     npc_action in         npc_actions           :
		if (npc_action.is_precondition_state_collection_met()) :
							valid_npc_action_collection.append(
			npc_action                                        );
			
	var     chosen_npc_goal : NpcGoal = null ;
	for            npc_goal in     npc_goals :
		if (       npc_goal.is_desired_state_collection_met()):
			continue;
		if (chosen_npc_goal == null
		or         npc_goal.get_totally_priority()
		 >  chosen_npc_goal.get_totally_priority()           ):
			chosen_npc_goal =  npc_goal ;
	
	if     (chosen_npc_goal == null    ):
		return null;
	
	var            best_npc_action =      null;
	if (not chosen_npc_goal.is_desired_state_collection_met()):
		var   cost_npc_lowest      =                    INF   ;
		for        npc_action                               in   valid_npc_action_collection       :
			if (   npc_action                              .is_precondition_state_collection_met()):
				var      npc_action_total_cost = npc_action.            get_total_cost          () ;
				if (best_npc_action ==    null
				or       npc_action_total_cost
				<   cost_npc_lowest           ):
					best_npc_action =            npc_action;
					cost_npc_lowest =            npc_action_total_cost;
					
	return          best_npc_action ;










