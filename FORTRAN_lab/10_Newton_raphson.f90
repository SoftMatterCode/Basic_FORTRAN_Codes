!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
! Program to find root by Newton-Raphson Method
!                    
! 
!      Basic FORTRAN Lab By Samsuzz
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
program newtonRaphson
    implicit none
    integer :: i,n
    real :: x,x0,e,f,df
    write(*,*)'Enter the maximum number of iterations'
    read(*,*)n
    write(*,*)'Enter the trial value or x0'
    read(*,*)x0
    write(*,*)'Enter the tolerance'
    read(*,*)e
    write(*,*)'Iterations:'
    do i=1,n
        x=x0-f(x0)/df(x0)
        
        10  FORMAT(/,1x,'Iteration',I2,':',4X,'x=',F12.9,4X,'f(x)=',F12.8)
        write(unit=*,fmt=10)i,x,f(x)
        if (abs(x-x0)<=e) exit
        x0=x
    end do

    write(*,*)'The Approximate Solution Is',x
    stop
 end program newtonRaphson

 function f(x)
 real :: x,f
 f=x*x*x - 2*x*x -x + 1
 return
 end

function df(x)
real :: x,df
df=3*x*x - 4*x - 1
return
end


