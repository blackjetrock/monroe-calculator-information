#!/usr/bin/tclsh

set fn [lindex $argv 0]

set f [open $fn rb]
set txt [read $f]
close $f


foreach byte [split $txt ""] {
    scan $byte %c ascii
    
    #puts $ascii

    #set cd [expr $ascii ^ 0xff]
    set cd $ascii
    
    if { ($cd >=0) && ($cd <26)} {
        set ch [format "%c" [expr $cd+0x40]]
        puts -nonewline "$ch"
    } else {
        set ch [format "-%02X-" [expr $cd+0x0]]
        puts -nonewline "$ch"

    }
}

puts "---"

