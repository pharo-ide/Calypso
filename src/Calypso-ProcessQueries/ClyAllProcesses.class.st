Class {
	#name : #ClyAllProcesses,
	#superclass : #ClyTypedQuery,
	#category : 'Calypso-ProcessQueries'
}

{ #category : #'items type' }
ClyAllProcesses class >> resultItemsType [
	^Process
]

{ #category : #execution }
ClyAllProcesses >> buildResult: aQueryResult [
	
	| processes |
	processes := OrderedCollection new.
	scope processesDo: [ :each | 
		each isTerminated ifFalse: [ processes add: each ]].
	
	aQueryResult fillWith: processes
]

{ #category : #execution }
ClyAllProcesses >> checkEmptyResult [
	scope processesDo: [ :each | ^false].
	^true
]

{ #category : #execution }
ClyAllProcesses >> collectMetadataOf: aQueryResult by: anEnvironmentPlugin [
	anEnvironmentPlugin collectMetadataOfProcesses: aQueryResult
]

{ #category : #printing }
ClyAllProcesses >> description [

	^'all processes'
]

{ #category : #'system changes' }
ClyAllProcesses >> isResult: aQueryResult affectedBy: aSystemAnnouncement [
	self flag: #todo.
	^false
]

{ #category : #testing }
ClyAllProcesses >> retrievesItem: aProcess [
	^true
]
