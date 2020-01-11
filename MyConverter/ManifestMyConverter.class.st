"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestMyConverter,
	#superclass : #PackageManifest,
	#category : #'MyConverter-Manifest'
}

{ #category : #'code-critics' }
ManifestMyConverter class >> ruleReTestClassNotInPackageWithTestEndingNameV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#TemperatureConverterTest)) #'2020-01-09T10:53:29.664476+01:00') )
]
