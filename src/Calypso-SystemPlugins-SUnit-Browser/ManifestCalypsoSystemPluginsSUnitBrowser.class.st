"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestCalypsoSystemPluginsSUnitBrowser,
	#superclass : #PackageManifest,
	#category : #'Calypso-SystemPlugins-SUnit-Browser-Manifest'
}

{ #category : #'code-critics' }
ManifestCalypsoSystemPluginsSUnitBrowser class >> ruleRBTempsReadBeforeWrittenRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#ClyJumpToTestClassCommand #testClassFor: #false)) #'2018-11-12T12:01:41.480729+01:00') )
]
