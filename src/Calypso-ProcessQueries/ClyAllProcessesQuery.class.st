Class {
	#name : #ClyAllProcessesQuery,
	#superclass : #ClyTypedQuery,
	#category : #'Calypso-ProcessQueries'
}

{ #category : #'items type' }
ClyAllProcessesQuery class >> resultItemsType [
	^Process
]

{ #category : #execution }
ClyAllProcessesQuery >> buildResult: aQueryResult [
	
	| processes |
	processes := OrderedCollection new.
	scope processesDo: [ :each | 
		each isTerminated ifFalse: [ processes add: each ]].
	
	aQueryResult fillWith: processes
]

{ #category : #execution }
ClyAllProcessesQuery >> checkEmptyResult [
	scope processesDo: [ :each | ^false].
	^true
]

{ #category : #execution }
ClyAllProcessesQuery >> collectMetadataOf: aQueryResult by: anEnvironmentPlugin [
	anEnvironmentPlugin collectMetadataOfProcesses: aQueryResult
]

{ #category : #printing }
ClyAllProcessesQuery >> description [

	^'all processes'
]

{ #category : #'system changes' }
ClyAllProcessesQuery >> isResult: aQueryResult affectedBy: aSystemAnnouncement [
	self flag: #todo.
	^false
]

{ #category : #testing }
ClyAllProcessesQuery >> retrievesItem: aProcess [
	^true
]
