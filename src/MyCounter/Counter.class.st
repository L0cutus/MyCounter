"
Counter is a simple concrete class which supports incrementing and decrementing a counter.
Its API is
- decrement, increment
- count
Its creation API is message withValue:
"
Class {
	#name : 'Counter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'accessing' }
Counter >> count [
	"return the current value of the value instance variable"
	^ count
]

{ #category : 'accessing' }
Counter >> count: anInteger [

	count := anInteger
]

{ #category : 'operation' }
Counter >> decrement [ 
	count := count - 1
]

{ #category : 'operation' }
Counter >> increment [ 
	count := count + 1
]

{ #category : 'initialization' }
Counter >> initialize [ 
	"set the initial value of count to 0"
	count := 0
]

{ #category : 'printing' }
Counter >> printOn: aStream [

	super printOn: aStream .
	aStream nextPutAll: ' with value: ', self count printString .
]
