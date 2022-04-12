!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
!          Hands on FORTRAN
!         Mohammad Samsuzzman 
!  
!      Program to add two numbers 
! 
!   To compile type : gfortran example1.f90
!      to run it :    ./a.out
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    program abc
    implicit none
    
    integer :: a,b,c 
    
    a = 2
    
    b = 3
    
    c = a + b
    
    write(*,*) c
        
    end program abc
