Class {
	#name : #ClyActiveContextOfProcessesQuery,
	#superclass : #ClyTypedQuery,
	#category : #'Calypso-ProcessQueries'
}

{ #category : #'items type' }
ClyActiveContextOfProcessesQuery class >> resultItemsType [
	^Context
]

{ #category : #execution }
ClyActiveContextOfProcessesQuery >> buildResult: aQueryResult [
	
	| contexts activeContext |
	contexts := OrderedCollection new.
	scope processesDo: [ :each | 
		activeContext := each suspendedContext ifNil: [
			each == Processor activeProcess 
				ifTrue: [thisContext sender]
				ifFalse: [ self error: 'should not happen' ]].
		contexts add: activeContext	].
		
	aQueryResult fillWith: contexts
]

{ #category : #execution }
ClyActiveContextOfProcessesQuery >> checkEmptyResult [
	scope processesDo: [ :each | ^false].
	^true
]

{ #category : #execution }
ClyActiveContextOfProcessesQuery >> collectMetadataOf: aQueryResult by: anEnvironmentPlugin [
	anEnvironmentPlugin collectMetadataOfContexts: aQueryResult
]

{ #category : #printing }
ClyActiveContextOfProcessesQuery >> description [

	^'active contexts'
]

{ #category : #'system changes' }
ClyActiveContextOfProcessesQuery >> isResult: aQueryResult affectedBy: aSystemAnnouncement [
	self flag: #todo.
	^false
]

{ #category : #testing }
ClyActiveContextOfProcessesQuery >> retrievesItem: aContext [
	^true
]
