This class represent the GRIDs instances in Orbeon Forms. GRID's fields are repeatable.

name 				- name of the grid
section 			- section where the receiver belongs
gridDefinition	- definition of the receiver
gridIterations	- iterations of the grid.

Grid Iterations is a collection of Dictionary, where each Dictionary represent an iteration.

Dictionary's keys are the fieldsName and the each value is an instance of FormFieldValue.