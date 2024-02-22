#!/bin/bash
# mocha lightjava compiler script v1.0
# usage: lj (option) (main class for jar)
compile () {
	echo "Compiling..."
	javac *.java
}
makejar () {
	echo "Jarring..."
	jar cvfe out.jar $1 *
}
clean () {
	echo "Cleaning..."
	rm -rf *.class
}
wipe () {
	clean
	rm -rf *.jar
}

if [ "$1" = "c" ]; then
	# compile only
	compile
elif [ "$1" = "j" ]; then
	# jar only
	makejar $2
elif [ "$1" = "b" ]; then
	# both is good
	compile
	makejar $2
elif [ "$1" = "cl" ]; then
	# clean up
	clean
elif [ "$1" = "w" ]; then
	# wipe everything including jars
	wipe
fi
