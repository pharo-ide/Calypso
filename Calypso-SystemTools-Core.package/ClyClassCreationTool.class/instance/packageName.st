accessing
packageName

	package ifNil: [ ^'' ].

	classTag ifNil: [ ^package name ].

	^package name , '-' , classTag