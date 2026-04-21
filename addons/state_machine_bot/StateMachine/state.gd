extends Node
class_name State

@onready var state_machine:StateMachine = get_parent() as StateMachine

func enter() -> void: pass
func update(_delta:float) -> void: pass
func update_physics(_delta:float) -> void: pass
func exit() -> void: pass
