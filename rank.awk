BEGIN { BIG=1E32 }

function read(file,  names,lo,hi,y,rows,data,freq,      col,row) {
  while((getline < (f ? file : "/dev/stdin")) > 0) {
    gsub(/[ \t]*/,$0,"")
    for(col=1;col<=NF;col++) 
      row++ ? cell(row,col,$col,lo,hi,freq) : header(names,col,lo,hi,y) }}
  
function header(names,col,lo,hi,y) {
  names[i]=$col
  if ($col ~ /^[A-Z]*/) {lo[col] = Big; hi[col] = -Big}
  if ($col ~ /[!\+-]$/) y[col] = $col  ~ /-$/ ? -1 : 1 }}

function cell(row,col,x,lo,hi,data,freq) {
  if (x != "?") 
    if (col in lo) {
      x = x + 0
      lo[col] = x < lo[col] ? x : lo[col]
      hi[col] = x > hi[col] ? x : hi[col] 
    } else 
       freq[col][x]++ 
  data[row][col] = x }

function join(a,sep,     s,_sep) {
  for(i in a) { s = s _sep a[i]; _sep=sep }
  return s }

