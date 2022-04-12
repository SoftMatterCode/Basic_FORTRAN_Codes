!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
!          Hands on FORTRAN
!         Mohammad Samsuzzman 
!  
! Program to add two numbers by taking user input and saving it in a file
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


    program abc
    implicit none
    
    real :: a,b,c
    open(unit=1,file="addition.txt")
    
    write(*,*)"Please enter the value for a"
    read(*,*)a
    
    write(*,*)"Please enter the value for b"
    read(*,*)b 
        
    c = a + b
    
    write(unit=1,fmt=*)"The sum of a & b is = ", c
        
    end program abc
