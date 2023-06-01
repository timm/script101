BEGIN { FS="\n"; RS="" } 
      { print  $0 "\n"; exit}  
