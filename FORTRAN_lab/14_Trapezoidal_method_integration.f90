!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! program to integrate a function using trapezoidal method
!                    
! 
!      Basic FORTRAN Lab By Samsuzz
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 program trapezoidal
  implicit none

  integer::i,n
  real::x0,xn,h,s,f


  write(*,*)'Enter value of x_0 or lower limit?'
  read(*,*)x0

  write(*,*)'Enter value of x_n or upper limit?'
  read(*,*)xn

  write(*,*)'Enter the number of intervals (n)?'
  read(*,*)n

  h=(xn-x0)/n
  
  s=f(x0)+f(xn)

  do i=1,n-1
    s=s+(2*f(x0+(i*h)))
  end do
  s=(h*s)/2

  write(*,*)"Value of integral is",s

 end program

  real function f(x1)
   real::x1
    f=0.2+(25*x1)-200*(x1**2)+675*(x1**3)-900*(x1**4)+400*(x1**5)
   return
  end function
