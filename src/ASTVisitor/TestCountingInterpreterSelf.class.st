Class {
	#name : #TestCountingInterpreterSelf,
	#superclass : #TestCase,
	#instVars : [
		'count'
	],
	#category : #ASTVisitor
}

{ #category : #tests }
TestCountingInterpreterSelf >> testMessageCount [ 
	| ast counting |   
ast := RBParser parseMethod: (Point >> #sideOf:) sourceCode.  
counting := CountingManualInterpreterSelf  new.  
ast acceptVisitor: counting.  
self assert: counting numberOfMessages  equals: 1
]
