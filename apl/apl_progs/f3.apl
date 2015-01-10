decl
	integer status;
enddecl
integer main(){
	status=Fork();
	if(status==-2)then
		status=Exec("f1.xsm");
	endif;
	status=Create("a");
	status=Fork();
        if(status==-2)then
                status=Exec("f2.xsm");
        endif;
	integer s,i,j;
	i=1;
	j=1;
	s=2000;
	while(i<11)do
		status=Open("a");
		status=Delete("a");
		print(status);
		while(j<11)do
			print(s);
			s=s+1;
			j=j+1;
		endwhile;
		status=Close(status);
		j=1;
		i=i+1;
	endwhile;
	return 0;
}
