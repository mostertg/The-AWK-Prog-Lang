# interest2 - compute compound interest (for loop implementation)
#   input: amount rate years
#   output: compounded value at the end of each year 
{
  i = 1;
  for (i = 1; i <= $3; i = i + 1)
    printf("\t%.2f\n", $1 * (1 + $2) ^ i)
}
