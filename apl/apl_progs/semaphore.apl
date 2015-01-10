decl
	integer pid;
enddecl
integer main()
{
	
	pid=Create("lol");
	print(pid);
	print("/////////");
	pid=Open("lol");
        print(pid);
        print("/////////");
	pid=Open("lol");
        print(pid);
        print("/////////");
	pid=Delete("lol");
	print(pid);
	print("/////////");
        pid=Fork();
        print(pid);
	if(pid==-2)then
		pid=Exec("even.xsm");
	endif;
	print("/////////");
        pid=Open("lol");
        print(pid);
	return 0;
}
