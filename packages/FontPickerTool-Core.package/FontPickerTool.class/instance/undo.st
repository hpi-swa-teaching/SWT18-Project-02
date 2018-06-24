as yet unclassified
undo

	self setFontTypeWith: self lastFontType top To: self lastFont top.
	self lastFontType pop.
	self lastFont pop.
	self changed: #stackNotEmpty.
	self changed: #contents