# Implementation of try-catch-finally cmd for Tcl 8.5

if {[info procs try] ne "try"} {
    proc try {script args} {
        upvar 1 try___msg msg try___opts opts
        if {[llength $args]!=0 && [llength $args]!=2} {
           return -code error "wrong \# args: should be \"try script ?finally script?\""
        }
        if {[llength $args] == 2} {
           if {[lindex $args 0] ne "finally"} {
              return -code error "mis-spelt \"finally\" keyword"
           }
        }
        set code [uplevel 1 [list catch $script try___msg try___opts]]
        if {[llength $args] == 2} {
           uplevel 1 [lindex $args 1]
        }
        if {$code} {
           dict incr opts -level 1
           return -options $opts $msg
        }
        return $msg
    }
}