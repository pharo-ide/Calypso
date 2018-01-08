execution
executeBy: aClass

	| sample |
	sample := super executeBy: aClass.
	sample inspect