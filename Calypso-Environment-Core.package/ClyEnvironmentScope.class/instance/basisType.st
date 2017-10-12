accessing
basisType
	^ basisObjects 
			ifEmpty: [ Object ]
			ifNotEmpty: [ basisObjects anyOne calypsoEnvironmentType ]