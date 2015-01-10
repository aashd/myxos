decl
	integer pid;
enddecl
integer main()
{
	print("Before Fork");
	pid=Fork();
	print(pid);
	pid=Getppid();
	print(pid);
	print("After Fork");
	return 0;
}
