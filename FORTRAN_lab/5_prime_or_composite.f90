!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
!Program to find whether a number is a prime 
!       number or a composite number
! 
!      Basic FORTRAN Lab By Samsuzz
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    program prime_composite
    implicit none
    
    integer :: i,n,c
    c=0
    write(*,*)"Enter a number"
    read(*,*)n
    
    do i = 1,n
      if(mod(n,i) == 0) c = c + 1
    end do
    
    if (c==2) then
      write(*,*)"The number is a prime number"
    else
      write(*,*)"The number is a composite number"  
    end if
    
    end program prime_composite

