decl
	integer status,pid;
enddecl
integer main(){
	integer i;
	i=1;
	status=Fork();
        if(status==-2)then
     	        status=Exec("wait2.xsm");
        endif;
	while(i<21)do
		if(i==10)then
			status=Wait(1);
			print("/////////");
			print(status);
		endif;
		print(i);
		i=i+1;
	endwhile;
	return 0;
}
