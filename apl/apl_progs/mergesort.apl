decl
	integer mergesort(integer p,r);	
	integer merge(integer p,q,r);
enddecl
integer merge(integer p,q,r){
	print(p);
	print(q);
	print(r);
	integer n1,n2,a,b,status,i,buffer1,buffer2,buffer;
	n1=q-p+1;
	n2=r-q;
	print("create left right");
	status=Create("left.dat");
	print(status);
	status=Create("right.dat");
	print(status);
	print("open merge.dat");
	status=Open("msort.dat");
	print(status);
	print("goto lseek pos p open left.dat");
	status=Seek(0,p);
	print(status);///access pth line
	status=Open("left.dat");
	print(status);
	i=0;
	print("write in left by reading main");
	while(i<n1)do
		print(i);
		status=Read(0,buffer);
		print(status);
		status=Write(1,buffer);
		print(status);
		i=i+1;
	endwhile;
	buffer =10000;
	status=Write(1,buffer);
	print(status);
	print("open right and seek");
	status=Open("right.dat");
	print(status);
	status=Seek(0,q+1);
	print(status);
	print("read main write to right");
	i=0;
	while(i<n2)do
		print(i);
		status=Read(0,buffer);
		print(status);
		status=Write(2,buffer);
		print(status);
		i=i+1;
	endwhile;
	buffer=10000;
	status=Write(2,buffer);
	print(status);
	print("Comparing two left and right");
	a=0;
	b=0;
	i=p;
	while(i<=r)do
		status=Read(1,buffer1);
		print(status);
		status=Read(2,buffer2);
		print(status);
		if(buffer1<buffer2)then
			status=Write(0,buffer1);
			print(status);
			a=a+1;
			status=Seek(1,a);
			print(status);
			status=Seek(2,b);
			print(status);
		else	
			status=Write(0,buffer2);
			print(status);
			b=b+1;
			status=Seek(1,a);
			print(status);
			status=Seek(2,b);
			print(status);
		endif;
		i=i+1;
	endwhile;
	print("Close Delete left right");
	status=Close(1);
	print(status);
	status=Close(2);
	print(status);
	status=Delete("left.dat");
	print(status);
	status=Delete("right.dat");
	print(status);
	status=Close(0);
	print(status);
	return 0;
}
integer mergesort(integer p,r){
	integer q,i;
	if(p<r)then
		q=(p+r)/2;
		i=mergesort(p,q);
		i=mergesort(q+1,r);
		i=merge(p,q,r);		
	endif;
	return 0;
}
integer main(){
	print("Running");
	integer i;
	i=mergesort(0,3);
	return 0;
}
