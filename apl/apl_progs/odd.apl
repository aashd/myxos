decl
	integer pid;
enddecl
integer main(){
	integer a,count;
	a=1;
	pid=Fork();
	print(pid);
	if(pid==-2)then
		pid=Exec("even.xsm");
	endif;
	while(a<21)do
		if(a==15)then
			Exit();
		endif;
		print(a);
		a=a+2;
	endwhile;
	return 0;
}
