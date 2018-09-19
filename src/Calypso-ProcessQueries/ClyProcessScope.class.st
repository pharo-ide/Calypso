Class {
	#name : #ClyProcessScope,
	#superclass : #ClyTypedScope,
	#category : 'Calypso-ProcessQueries'
}

{ #category : #queries }
ClyProcessScope >> processesDo: aBlock [

	basisObjects do: aBlock
]
