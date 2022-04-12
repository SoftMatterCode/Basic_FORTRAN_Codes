!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
!          Hands on FORTRAN
!         Mohammad Samsuzzman 
! 
! To demonstrate how to use a subroutine 
!     Program to swap two numbers
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

program what_is_subroutine
implicit none

   real :: a, b
   a = 2.0
   b = 3.0
   
   write(*,*)"Before calling swap"
   write(*,*)"a = ", a
   write(*,*)"b = ", b
   
   call swap(a, b)
   
   write(*,*)"After calling swap"
   write(*,*)"a = ", a
   write(*,*)"b = ", b
   
end program what_is_subroutine

! i have not mentioned any type of subroutine , integer ,real etc

subroutine swap(x, y) 
implicit none

   real :: x, y, temp   
   
   temp = x  
   x = y 
   y = temp  
   
end subroutine swap
