Extension { #name : #Duration }

{ #category : #'*StellarCartography' }
Duration >> raisedTo: aNumber [

	^ SCQuantity new
		  value: (self seconds raisedTo: aNumber)
		  units: (Dictionary newFrom: { ('seconds' -> aNumber) })
]
