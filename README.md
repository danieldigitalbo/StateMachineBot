In Godot, a Finite State Machine (FSM) is a design pattern used to manage the behavior of characters or entities by dividing their logic into discrete states (such as "Idle", "Run", "Jump") and transitions between them. This avoids the use of large blocks of nested conditional code, making the code more modular, scalable, and easy to maintain.

How to use:
1. Create an empty node within your scene that you want your state machine
2. Add an empty node as a child of the node you just created and give it a state name you like
3. Search the following route: addons\state_machine_bot\StateMachine
4. With left click drag state.gd to your state.
5. With left click drag state_machine.gd to you state machine node
6. Select the node that contains your state. For example: "Idle"
7. With right click you click extend_node and create the code for your custom state. That's all
