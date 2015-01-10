decl
	integer childpid;
enddecl
integer main()
{
	integer retval;
	childpid = Fork();
	if(childpid == -2) then
		retval = Exec("finale.xsm");
	else
		while(childpid != -1) do
			print(childpid);
		endwhile;
	endif;
	return 0;
}
