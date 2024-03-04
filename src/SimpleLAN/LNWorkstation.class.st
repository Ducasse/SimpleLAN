Class {
	#name : #LNWorkstation,
	#superclass : #LNNode,
	#category : #SimpleLAN
}

{ #category : #examples }
LNWorkstation class >> example [

	<script>
	(LNWorkstation new
		 name: 'Mac';
		 nextNode: (LNNode new name: 'PC1'; nextNode: (LNWorkstation new
		 name: 'Mac2'; yourself); yourself)) 
		accept:
		(LNPacket new addresseeName: 'Mac')
]

{ #category : #examples }
LNWorkstation class >> example2 [

	<script>
	(LNWorkstation new
		 name: 'Mac';
		 nextNode: (LNNode new
				  name: 'PC1';
				  nextNode: (LNWorkstation new
						   name: 'Mac2';
						   yourself);
				  yourself)) accept: (LNPacket new addresseeName: 'Mac2')
]

{ #category : #examples }
LNWorkstation class >> example3 [

	<script>
	(LNWorkstation new
		 name: 'Mac';
		 nextNode: (LNNode new
				  name: 'PC1';
				  nextNode: (LNWorkstation new
						   name: 'Mac2';
						   yourself);
				  yourself)) emit: (LNPacket new addresseeName: 'Mac2')
]

{ #category : #testing }
LNWorkstation >> accept: aPacket [

	(aPacket isAddressedTo: self name)
		ifTrue: [ (self name , ' accepted packet') traceCr ]
		ifFalse: [ super accept: aPacket ]
]

{ #category : #testing }
LNWorkstation >> emit: aPacket [

	self send: aPacket
]
