extends Node
class_name StateMachine

@export var initial_state:State
var current_state :State
var previous_state:State

func _ready() -> void:
	if owner != null:
		await owner.ready
	
	if initial_state:
		current_state  = initial_state
		current_state.enter()
		previous_state = current_state
	else:
		push_error("Add a state to [initial_state]")

func change_state_to(new_state:String) -> void:
	if new_state == previous_state.name:
		return
	
	previous_state.exit()
	current_state  = find_child(new_state) as State
	current_state.enter()
	previous_state = current_state

func _process(delta: float) -> void:
	if current_state:
		current_state.update(delta)

func _physics_process(delta: float) -> void:
	if current_state:
		current_state.update_physics(delta)
