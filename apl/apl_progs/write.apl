decl
integer status;
enddecl
integer main(){
	status=Create("sample.dat");
	print(status);
	status=Open("sample.dat");
	print(status);
	print("// seek 512");
	status=Seek(0,512);
        print(status);
	string a;
	a="aashish";
	print("// write aashish");
	status=Write(0,a);
	print(status);
	print("//seek back");
	status=Seek(0,512);
	print(status);
	print("//read what we wrote");
	string b;
	status=Read(0,b);
	print(b);
	print(status);
	return 0;
}
