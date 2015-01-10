decl
integer status;
enddecl
integer main(){
	status=Create("name1.dat");
	print(status);
	integer i;
	i=0;
	while(i<8)do	
		status=Open("name1.dat");
		print(status);
		i=i+1;
	endwhile;
	status=Open("name1.dat");
        print(status);
	print("///////");
	status=Close(0);
	print(status);
	print("///////");
	status=Open("name1.dat");
        print(status);
	status=Open("name1.dat");
        print(status);
	return 0;
}
