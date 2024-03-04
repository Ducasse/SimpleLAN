Class {
	#name : #LNPrinter,
	#superclass : #LNNode,
	#category : #SimpleLAN
}

{ #category : #examples }
LNPrinter class >> example [

	<script>
	(LNWorkstation new
		 name: 'Mac';
		 nextNode: (LNNode new
				  name: 'PC1';
				  nextNode: (LNWorkstation new
						   name: 'Mac2';
						   nextNode: (LNPrinter new
								    name: 'Printer1';
								    yourself);
						   yourself))) emit: (LNPacket new
			 addresseeName: 'Printer1';
			 contents: 'Pharo is cool';
			 yourself)
]

{ #category : #testing }
LNPrinter >> accept: aPacket [

	(aPacket isAddressedTo: self)
		ifTrue: [
			self print: aPacket ]
		ifFalse: [ super accept: aPacket ]
]

{ #category : #testing }
LNPrinter >> print: aPacket [

			'Node ' , aPacket originatorName , ' sent to printer: '
			, aPacket contents traceCr 
]
