as yet unclassified
createEtoy

	| aMorph |
	aMorph := Morph new.
	aMorph 
		openInWorld;
		openViewerForArgument.
		
	self addDependent: aMorph.
	self eToysMorphs add: aMorph.

	
	self changed: #stackNotEmpty