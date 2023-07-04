# naive `wc` clone, counts the number of 
#   lines, words and characters of a file.
# note: 1 is added to length since $0 does not 
#        include newline character.
{ 
  nc = nc + length($0) + 1;
  nw = nw + NF
}
END { print NR, "lines,", nw, "words,", nc, "characters" }
