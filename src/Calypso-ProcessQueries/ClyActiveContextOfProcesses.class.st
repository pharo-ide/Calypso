Class {
	#name : #ClyActiveContextOfProcesses,
	#superclass : #ClyTypedQuery,
	#category : 'Calypso-ProcessQueries'
}

{ #category : #'items type' }
ClyActiveContextOfProcesses class >> resultItemsType [
	^Context
]

{ #category : #execution }
ClyActiveContextOfProcesses >> buildResult: aQueryResult [
	
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
ClyActiveContextOfProcesses >> checkEmptyResult [
	scope processesDo: [ :each | ^false].
	^true
]

{ #category : #execution }
ClyActiveContextOfProcesses >> collectMetadataOf: aQueryResult by: anEnvironmentPlugin [
	anEnvironmentPlugin collectMetadataOfContexts: aQueryResult
]

{ #category : #printing }
ClyActiveContextOfProcesses >> description [

	^'active contexts'
]

{ #category : #'system changes' }
ClyActiveContextOfProcesses >> isResult: aQueryResult affectedBy: aSystemAnnouncement [
	self flag: #todo.
	^false
]

{ #category : #testing }
ClyActiveContextOfProcesses >> retrievesItem: aContext [
	^true
]
