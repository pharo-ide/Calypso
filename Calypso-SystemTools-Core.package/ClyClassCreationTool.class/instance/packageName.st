accessing
packageName

	^ classGroup ifNil: [ '' ] ifNotNil: [ classGroup asPackageName ]