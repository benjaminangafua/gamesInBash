#!/bin/bash

scopeVariable(){
	#Declare a local and global variable
	typeset localVal=23
	globalVal=47
	return $(($localVal+$globalVal))
}
localVal=8
globalVal=9
echo "We are getting these valuees outside of the function: $localVal, $globalVal"
scopeVariable
echo "This is return from the function: $?"

