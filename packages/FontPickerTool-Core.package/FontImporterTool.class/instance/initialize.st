initialize
initialize

	super initialize.
	searchString := ValueHolder new.
	searchString addDependent: self.
	self webFontResultArray: OrderedCollection new.
	
	emphasis := 0.
