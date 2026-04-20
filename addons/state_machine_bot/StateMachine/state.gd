extends Node
class_name State

@onready var state_machine:StateMachine = owner.find_child("StateMachine")

func enter():pass
func update(_delta:float):pass
func update_physics(_delta:float):pass
func exit():pass
