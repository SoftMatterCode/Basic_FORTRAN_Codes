!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! program to integrate a function using simpson's 1/3rd rule
!                    
! 
!      Basic FORTRAN Lab By Samsuzz
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  program simpson13
   implicit none

   integer::i,n
   real::x0,xn,h,s,f

   write(*,*)'Enter value of lower limit a?'
   read(*,*)x0

   write(*,*)'Enter value of upper limit b?'
   read(*,*)xn

   write(*,*)'Number of subintervals?'
   read(*,*)n

   if (mod(n,2)==0) THEN
      h=(xn-x0)/n
      s=f(x0)+f(xn)+4*f(x0+h)
      do i=3,n-1,2
        s=s+(4*f(x0+(i*h)))+(2*f(x0+(i-1)*h))
      end do

      s=(h*s)/3

      write(*,*)"Value of integral is",s
   else
      write(*,*)"Number of interval is not even"
   end if
  
  end program simpson13

  real function f(x1)
  real::x1

   ! please check with other functions
   f=0.2+(25*x1)-200*(x1**2)+675*(x1**3)-900*(x1**4)+400*(x1**5)

   return
   end function
