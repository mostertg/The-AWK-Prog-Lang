# for each line, check if field 2 is bigger than `maxrate`.
# if matched, set `maxrate` to value in field 2,
#             set `maxemp` to value in field 1.
# note: 
#   `maxrate` is init to 0, 
#   `maxemp` is init to null string.
$2 > maxrate { maxrate = $2; maxemp = $1 }
END { print "highest hourly rate:", maxrate, "for", maxemp }
