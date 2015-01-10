decl
	integer status;
enddecl
integer main(){
	integer a;
	a=0;
	while(a<21)do
		print (a);
		a=a+2;
	endwhile;
	status=Open("lol");
	print(status);
	return 0;
}
