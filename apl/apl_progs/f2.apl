decl
	integer status;
enddecl
integer main(){
	integer s,i,j;
	i=1;
	j=1;
	s=1000;
	while(i<11)do
		status=Open("a");
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
