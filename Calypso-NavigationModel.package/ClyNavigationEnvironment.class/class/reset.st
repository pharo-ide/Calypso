default
reset
	"It will reset all caches and unsubscribe from system environment"
	<script>
	defaultGlobalEnvironments ifNil: [ ^self ].
	defaultGlobalEnvironments do: #detachFromSystem.
	defaultGlobalEnvironments := nil