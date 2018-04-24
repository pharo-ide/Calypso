instance creation
from: anInterval

	anInterval ifEmpty: [ ^ self new start: 0; stop: 0 ].

	^self new 
		start: anInterval first;
		stop: anInterval last