decl
integer status;
enddecl
integer main(){
	status=Delete("msort2.dat");
	print(status);
	status=Delete("msort.dat");
	print(status);
	status=Create("msort.dat");
	print(status);
	status=Open("msort.dat");
	print(status);
	integer i;
	i=7;
	while(i>=1)do
		status=Write(0,i);
		print(status);
		print(i);
		i=i-1;
	endwhile;
	status=Close(0);
	print(status);
	status=Delete("left.dat");
	print(status);
	status=Delete("right.dat");
	print(status);
	return 0;
}
