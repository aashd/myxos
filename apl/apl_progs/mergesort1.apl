decl
	integer mergesort(integer p,r),input();	
	integer merge(integer p,q,r),status;
enddecl
integer merge(integer p,q,r){
	print(p);
	print(q);
	print(r);
	integer n1,n2,a,b,i,buffer1,buffer2,buffer;
	n1=q-p+1;
	n2=r-q;
	status=Create("left.dat");
	status=Create("right.dat");
	status=Open("msort.dat");
	status=Seek(0,p);
	status=Open("left.dat");
	i=0;
	while(i<n1)do
		print(i);
		status=Read(0,buffer);
		status=Write(1,buffer);
		i=i+1;
	endwhile;
	buffer =10000;
	status=Write(1,buffer);
	status=Open("right.dat");
	status=Seek(0,q+1);
	i=0;
	while(i<n2)do
		print(i);
		status=Read(0,buffer);
		status=Write(2,buffer);
		i=i+1;
	endwhile;
	buffer=10000;
	status=Write(2,buffer);
	a=0;
	b=0;
	i=p;
	while(i<=r)do
		status=Read(1,buffer1);
		status=Read(2,buffer2);
		if(buffer1<buffer2)then
			status=Write(0,buffer1);
			a=a+1;
			status=Seek(1,a);
			status=Seek(2,b);
			i=i+1;
		else	
			status=Write(0,buffer2);
			b=b+1;
			status=Seek(1,a);
			status=Seek(2,b);
			i=i+1;
		endif;
	endwhile;
	status=Close(1);
	status=Close(2);
	status=Delete("left.dat");
	status=Delete("right.dat");
	status=Close(0);
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
integer input(){
	integer i;
	i=3;
	status=Create("msort.dat");
	status=Open("msort.dat");
	while(i>=0)do
		status=Write(0,i);
		i=i-1;
	endwhile;
	status=Close(0);
	return 0;
}
integer main(){
	print("running");
	integer i;
	i=input();
	//i=mergesort(0,3);
	return 0;
}
