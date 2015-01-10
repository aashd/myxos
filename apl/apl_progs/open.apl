decl
integer status;
enddecl
integer main(){
	status=Create("name1.dat");
	print(status);
	status=Create("name2.dat");
	print(status);
	status=Open("name3.dat");
	print(status);
	integer i;
	i=0;
	while(i<8)do
		status=Open("name1.dat");
		print(status);
		i=i+1;
	endwhile;
	status=Open("name3.dat");
	print(status);
	status=Open("name1.dat");
        print(status);
	return 0;
}
