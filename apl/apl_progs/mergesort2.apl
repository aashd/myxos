decl
	integer mergesort(integer p,r);	
	integer merge(integer p,q,r),status;
enddecl
integer merge(integer p,q,r){
	integer n1,n2,a,b,i,buffer1,buffer2;
	n1=q-p+1;
	n2=r-q;
	status=Create("left.dat");
	status=Create("right.dat");
	status=Open("msort.dat");
	status=Seek(0,p);
	status=Open("left.dat");
	i=0;
	while(i<n1)do
		status=Read(0,buffer1);
		status=Write(1,buffer1);
		i=i+1;
	endwhile;
	buffer1 =10000;
	status=Write(1,buffer1);
	status=Open("right.dat");
	status=Seek(0,q+1);
	i=0;
	while(i<n2)do
		status=Read(0,buffer1);
		status=Write(2,buffer1);
		i=i+1;
	endwhile;
	buffer1=10000;
	status=Write(2,buffer1);
	status=Seek(0,p);
	a=0;
	b=0;
	i=p;
	status=Seek(1,a);
	status=Seek(2,b);
	while(i<=r)do
		status=Read(1,buffer1);
		status=Read(2,buffer2);
		if(buffer1<buffer2)then
			status=Write(0,buffer1);
			a=a+1;
		else	
			status=Write(0,buffer2);
			b=b+1;
		endif;
		status=Seek(1,a);
                status=Seek(2,b);
		i=i+1;
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
integer main(){
	integer i;
	print("running");
	i=mergesort(0,6);
	return 0;
}
