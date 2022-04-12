!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
!          Hands on FORTRAN
!         Mohammad Samsuzzman 
!  
! Program to add two numbers and checking format specifier
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


    program abc
    implicit none
    
    real :: a,b,c
    real :: pi
    
    pi = 4.0d0*atan(1.0d0)

    
    100 format(A10,10X,F12.8)
    write(unit=*,fmt=100)"The sum of a & b is = ", pi
    
        
    end program abc
