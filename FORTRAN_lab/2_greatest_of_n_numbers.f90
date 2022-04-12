!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
!Program to find greatest of three numbers
!      Basic FORTRAN Lab By Samsuzz           
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    program greatest3
    implicit none
    
    integer :: i,n
    real :: c,big
     
    write(*,*) "Enter the number of elements"
    read(*,*) n 
    
    write(*,*) "Enter the",1," element"
    read(*,*) big
    
    do i = 2,n
      write(*,*) "Enter the",i," element"
      read(*,*) c
      if(big < c) big = c    
    end do
    
    write(*,*)"The largest of the",n,"numbers is = ", big
        
    end program greatest3

