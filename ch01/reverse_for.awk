# reverse  - print input in reverse order by line
# for loop implementation
{ line[NR] = $0 }
END {
  for (i = NR; i > 0; i = i - 1)
    print line[i]
}
