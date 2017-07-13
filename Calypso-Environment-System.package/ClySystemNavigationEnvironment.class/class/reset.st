current image
reset
	"It will reset all caches and unsubscribe from system environment"
	<script>
	currentImage ifNil: [ ^self ].
	currentImage detachFromSystem.
	currentImage := nil