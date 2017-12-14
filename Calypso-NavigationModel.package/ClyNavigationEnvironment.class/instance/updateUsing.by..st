system changes
updateUsing: newUpdateStrategy by: updateBlock
	"here is special logic to break current mutex when any error is signalled.
	Without this logic fixing code inside spawned debugger will lead to deadlock
	because applying method changes will blocked at this accessGuard.
	Breaking mutex is done by creating new one which meand that current process
	is not guarded any more and proceeding execution in debugger can lead to some errors in rare cases. But it is less problem than locked UI"
	| oldStrategy |
	[updateGuard critical: [ 
		oldStrategy := updateStrategy.
		updateStrategy := newUpdateStrategy.
		updateBlock on: Exception do: [ :err |
				updateGuard := Mutex new.
				err pass]]
	] ensure: [ 			
			oldStrategy ifNotNil: [
				newUpdateStrategy publishCollectedChanges.
				updateStrategy := oldStrategy]]