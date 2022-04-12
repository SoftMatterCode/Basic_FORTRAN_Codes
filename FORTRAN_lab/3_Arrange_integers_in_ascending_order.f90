!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
!Program to arrange integers in ascending order
! 
!      Basic FORTRAN Lab By Samsuzz           
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    program ascending_order
    implicit none
    
    integer :: i,j,k,temp,n
    integer, allocatable,dimension(:) :: element

     write(*,*)"Enter how many element you are going to enter"
     read(*,*)n
     
     allocate(element(1:n))
     
     do i = 1,n
      write(*,*) "Enter the",i," element"
      read(*,*) element(i)
     end do
     
     do j = 1 , n
       do k = j + 1 , n
         
          if(element(j) > element(k)) then
             temp = element(j)
             element(j)=element(k)
             element(k)=temp
          end if
       end do
    end do
    write(*,*) "element in accending order"
    do i = 1,n
      write(*,*)element(i)
     end do           
    
end program ascending_order
