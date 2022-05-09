!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
!    program to find root by Secant Method
!                    
! 
!      Basic FORTRAN Lab By Samsuzz
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   program secant
   implicit none
   
     real::f,initial_tolerance=6,tolerance=0.1,x0,x1,x2
     integer::c=0

     write(*,*)'Enter two initial  approximation x0 and x1'
     read(*,*)x0,x1

     do while(initial_tolerance>tolerance)
     
     x2=x1-((x1-x0)/((f(x1))-(f(x0))))*f(x1)
     
     initial_tolerance=abs(((x1-x0)/x1)*100)

     x0=x1
     x1=x2
     c=c+1

     IF(c>50)exit
 
     write(*,*)'Current root is',x1
     write(1,*) x1
     END do

     if(x1 > 3E+38 .or. x1 < -3E+38) then
       write(*,*)'Wrong initial approximation of x0 and x1'
      else
       write(*,*)'Final root is = ',x1
     end if

    end program


    function f(x1)
      real::x1,f
      f=(x1**2)-3
      return
    end function
