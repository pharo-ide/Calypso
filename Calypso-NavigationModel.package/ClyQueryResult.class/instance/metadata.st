accessing
metadata
	^metadata ifNil: [ self collectMetadata. metadata ]