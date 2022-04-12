!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~! 
!  Program to find greatest of three numbers  !
!                                             !
!      Basic FORTRAN Lab By Samsuzz           !
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!

    program greatest
    implicit none
    
    integer :: a,b,c 
    
    write(*,*) "enter the values of a,b,c"
    read(*,*) a,b,c 

    if (a>b .and. a>c) then 
      write(*,*)"The largest number is ",a
    elseif (b>a .and. b>c) then 
      write(*,*)"The largest number is ",b
    else 
      write(*,*)"The largest number is",c 
    endif
        
    end program greatest
