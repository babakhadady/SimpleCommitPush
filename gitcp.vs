#!/bin/sh

function usage() {
	echo "Invalid Number of Parameters"
	exit 2 
}

function main() {
	if [[ $# -eq 1 ]]; 
	then
		dir=.
		mes=$1
    else 
		dir=$1
		mes=$2
	fi

	git add $dir
	git commit -m "$mes"
	git push
	exit 0

}

if [[ $# -eq 0 ]]; then
	usage
fi
main "$@"
