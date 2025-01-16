proc get_element {list index} {
  if {$index < 0 || $index >= [llength $list]} {
    return -code error "Index out of range"
  }
  return [lindex $list $index]
}

# Example usage:
set mylist {a b c d e}
puts [get_element $mylist 2]  ;# Output: c
puts [get_element $mylist 5]  ;# Output: Index out of range

#Improved error handling:
proc get_element_improved {list index} {
    if { [llength $list] == 0 } {return -code error "List is empty"} ;#Handle empty list
    if {$index < 0 || $index >= [llength $list]} {
        return -code error "Index out of range"
    }
    return [lindex $list $index]
}
puts [get_element_improved $mylist 2] # Output: c
puts [get_element_improved {} 0] # Output: List is empty
puts [get_element_improved $mylist 5] # Output: Index out of range