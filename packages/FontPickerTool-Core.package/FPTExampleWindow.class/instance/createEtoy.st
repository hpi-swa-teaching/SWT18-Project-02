as yet unclassified
createEtoy

	| new_morph |
	new_morph := Morph new.
	self eToysMorphs push: new_morph openInWorld.
	self eToysMorphs top openViewerForArgument.
	self addDependent: new_morph.
	
	self changed: #stackNotEmpty