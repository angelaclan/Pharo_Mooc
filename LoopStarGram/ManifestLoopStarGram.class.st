"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestLoopStarGram,
	#superclass : #PackageManifest,
	#category : #'LoopStarGram-Manifest'
}

{ #category : #'code-critics' }
ManifestLoopStarGram class >> ruleRBLiteralArrayCharactersRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#GramCheckerTest #testDetectAllMissingLetter #false)) #'2020-01-08T18:49:51.022476+01:00') )
]
