decl 
	integer status;
enddecl
integer main(){
	integer i;
	i=30;
	while(i<51)do
		if(i==48)then
			status=Signal();
			print("////////////");
			print(status);
		endif;
		print(i);
		i=i+1;
	endwhile;
	return 0;
}
