building
runBuildProcess
	"Idea is to look like sync query when it is fast enough.
	I wait half second maximum until background query will be done.
	If it will complete in time then users will not notice any progress indication
	and they will think that query was sync"
	| semaphore |
	"following flag is used to not trigger async build norifications
	when query was fast enough to be executed synchronously"
	asyncModeIsActive := false. 
	semaphore := Semaphore new.
	buildProcess := [self buildActualResult. semaphore signal] 
		forkAt: Processor userBackgroundPriority 
		named: 'Build result of ', buildingQuery printString.
	semaphore wait: 500 milliSeconds.
	asyncModeIsActive := buildProcess notNil