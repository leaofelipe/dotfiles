#!/bin/bash

# Add '~/bin' to the '$PATH'
export PATH="$HOME/bin:$PATH";

for file in ~/.{exports,aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
