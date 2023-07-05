# A handful of usefulone-liners

### Print the total number of input lines
```awk
END { print NR }
```

### Print the tenth input line
```awk
NR == 10
```

### Print the last field of every input line
```awk
{ print $NF }
```

### Print the last field of the last input line
```awk
{ field = $NF }
END { print field }
```

### Print every input line with more than four fields
```awk
NF > 4 
```

### Print every input line in which the last field is more than 4
```awk
{ nf = nf + NF }
END { print nf }
```

### Print the total number fo lines that contain `Beth`
```awk
/Beth/ { nlines = nlines + 1 }
END { print nlines }
```

### Print the largest first field and the line that contains it (assumes `$1` is positive)
```awk
$1 > max { max = $1; maxline = $0 }
END { print max; maxline }
```

### Print every line that has at least one field
```awk
NF > 0
```

### Print every line longer than 80 characters
```awk
length($0) > 80
```

### Print the number of fields in every line followed by the line itself
```awk
{ print NF, $0}
```

### Print the first two fields, in opposite order, of every line
```awk
{ print $2, $1 }
```

### Exchange the first two fields of every line and then print the line
```awk
{ temp = $1; $1 = $2; $2 = temp; print }
```

### Print every line with the first field replaced by the line number
```awk
{ $1 = NR; print }
```

### Print every line after erading the second field
```awk
{ $2 = ""; print }
```

### Print the sums of the fields of every line
```awk
{
  sum = 0
  for (i = 1; i <= NF; i = i + 1)
    sum = sum + $i
  print sum
}
```

### Add up all the fields in all lines and print the sum
```awk
{ 
  for (i = 1; i <= NF; i = i +1 )
    sum = sum + $i 
}
END {
  print sum
}
```

### Print every line after replacing each field by its absolute value
```awk
{
  for (i = 1; i <= NF; i = i + 1)
    if ($i < 0)
      $i = -$i 
  print
}
```
