decl
integer status;
enddecl
integer main(){
	status=Open("sample.dat");
	print(status);
	string a;
	status=Read(0,a);
	print(a);
	print(status);
	status=Read(0,a);
        print(a);
        print(status);
	status=Read(0,a);
        print(a);
        print(status);
	status=Read(1,a);
        print(status);
	status=Read(9,a);
	print(status);
	return 0;
}
