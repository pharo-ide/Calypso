updating
browserContextWasChanged
	"We should ignore any notifications during applying changes 
	because applied changes can cause them which can lead to wrong recursive updates"
	applyingChanges ifFalse: [ super browserContextWasChanged ]