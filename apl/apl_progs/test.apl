decl
integer status;
enddecl
integer main(){
	status=Create("name1.dat");
	print(status);
	status=Open("name1.dat");
	print(status);
	status=Seek(0,256);
	print(status);
	string a;
	a="aashish";
	status=Write(0,a);
	print(status);
	status=Delete("name1.dat");
	print(status);
	status=Seek(0,256);
	print(status);
	string b;
	status=Read(0,b);
	print(status);
	print(b);
	status=Close(0);
	print(status);
	status=Delete("name1.dat");
	print(status);
	status=Delete("sample.dat");
	print(status);
	return 0;
}
