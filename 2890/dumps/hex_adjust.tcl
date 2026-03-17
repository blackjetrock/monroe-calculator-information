#!/usr/bin/tclsh

set filename [lindex $argv 0]
puts "Opening $filename"

set f [open $filename]


set txt [read $f]
close $f


