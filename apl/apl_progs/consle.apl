decl
	integer status,pid;
enddecl
integer main(){
	integer i;
	string a;
	while(i==0)do
		print("/////////SHELL\\\\\\\\");
		read(a);
		if(a=="shutdown")then
			i=1;
			break;
		endif;
		pid=Fork();
		if(pid==-1)then
			print("ERROR max proc");
		endif;
		if(pid==-3)then
			print("ERROR no mem");
		endif;
		if(pid==-2)then
			status=Exec(a);
			if(status==-1)then
				print("ERROR file no exhist");
				Exit();
			endif;
			if(status==-2)then
				print("File too big");
				Exit();
	        	endif;
			if(status==-3)then
				print("ERROR no mem");
				Exit();
        		endif;
       	 	endif;
		status=Wait(pid);
		if(status==-1||status==-2)then
                	print("ERROR illegal pid");
        	endif;
	endwhile;
	Exit();
	return 0;
}
