as yet unclassified
fontTypesList

	|typesList|
	typesList := Array new: 12.
	typesList
		at: 1 put: 'default Text Font';
		at: 2 put:  'default fixed font';
		at: 3 put: 'list font';
		at: 4 put: 'flaps font';
		at: 5 put: 'etoys font';
		at: 6 put: 'etoys title font';
		at: 7 put: 'halo label font'; 
		at: 8 put: 'menu font';
		at: 9 put: 'window title font';
		at: 10 put: 'balloon help font';
		at: 11 put: 'code font';
		at: 12 put: 'button font'.
		
	^typesList 