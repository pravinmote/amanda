BEGIN{o=substr(f,length(f)-1,2);
if(substr(o,1,1)==".") o=substr(o,2,1);
if(o=="gz")print "/bin/gzip -dc"; else


print "cat"; exit; }
