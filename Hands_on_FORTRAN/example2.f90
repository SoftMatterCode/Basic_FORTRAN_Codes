!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
!          Hands on FORTRAN
!         Mohammad Samsuzzman 
!  
!  Program to add two numbers by taking user input
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    program abc
    implicit none
    
    integer :: a,b,c
    
    write(*,*)"Please enter the value for a"
    read(*,*)a
    
    write(*,*)"Please enter the value for b"
    read(*,*)b 
        
    c = a + b
    
    write(*,*)"The sum of a & b is = ", c
        
    end program abc
