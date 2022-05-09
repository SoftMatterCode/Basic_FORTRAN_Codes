!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! program to fit a straight line for a given set of data
!                    
!    the name of the data file is data.txt
! 
!      Basic FORTRAN Lab By Samsuzz
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

program least_square
implicit none
 integer::ierror,n,i
 real::m,x(100),y(100),x_avg,y_avg
 real::sum_x=0.0,sum_x2=0.0,sum_y=0.0,sum_xy=0.0,c 

 open(unit=1, file='data.txt')

 ! do not enter n greater than number of data points
 write(*,*)'Enter the number of data points you have in your data file ?'
 read(*,*)n

 write(*,*)'Storing values in x and y arrays from the file....'

 read(unit=1,fmt=*)(x(i),y(i),i=1,n)

 do i=1,n
   sum_x = sum_x + x(i)
   sum_y = sum_y + y(i)
   sum_xy = sum_xy + (x(i)*y(i))
   sum_x2 = sum_x2 + (x(i)**2)
 end do

 x_avg = sum_x/n
 y_avg = sum_y/n
 m = ((n*sum_xy)-(sum_x*sum_y))/((n*sum_x2)-(sum_x**2))
 c = y_avg-(m*x_avg)

 write(*,*)'Slope is -',m
 write(*,*)'Constant is -',c

 write(*,*)'Values at different data points:'
 
 do i=1,n 
   y(i)=(m*x(i))+c
   write(*,*) x(i),y(i)
 end do

end program least_square
