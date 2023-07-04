# naive tail clone. print the last line of a file
{ last = $0 }
END { print last }
