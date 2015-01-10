decl
integer status;
enddecl
integer main(){
	status=Create("msort2.dat");
	print(status);
	status=Open("msort.dat");
	print(status);
	status=Open("msort2.dat");
	print(status);
	integer buffer,i;
	i=0;
	while(i<2)do
		status=Read(0,buffer);
		status=Write(1,buffer);
		i=i+1;
	endwhile;
	status=Close(0);
	print(status);
	status=Close(1);
	print(status);
	return 0;
}
