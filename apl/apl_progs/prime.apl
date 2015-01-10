decl
	integer a[10];
enddecl
integer main(){
	integer n;
	read (n);
	integer count,b,c;
	count=2;
	b=2;
	while(b<n+1)do
		a[b]=1;
		b=b+1;
	endwhile;
	b=2;
	while(b<n+1)do
		if(b*b<=n)then
			if(a[b]==1)then
				c=count*b;
				while(c<n+1)do
					a[c]=0;
					count=count+1;
					c=count*b;
				endwhile;	
			endif;
		else
			b=n+1;
		endif;
		b=b+1;	
	endwhile;
	b=2;
	while(b<n+1)do
		if(a[b]==1)then
			print (b);
		endif;
		b=b+1;
	endwhile;
	return 0;
}
