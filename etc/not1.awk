BEGIN { FS="\n"; RS=""} 
NR==1 { print "\n\n"; next} 
      { print $0 "\n\n"}
