decl
integer status;
enddecl
integer main(){
	status=Create("name1.dat");
	print(status);
	status=Create("name2.dat");
        print(status);
	status=Delete("name1.dat");
	print(status);
	status=Open("name2.dat");
	print(status);
	status=Delete("name6.dat");
        print(status);
	status=Close(0);
	print(status);
	status=Delete("name2.dat");
        print(status);
	return 0;
}
