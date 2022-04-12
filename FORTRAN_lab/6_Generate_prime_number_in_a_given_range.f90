!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
! Program to Generate prime number in a given range
! 
!      Basic FORTRAN Lab By Samsuzz
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    program prime_number
    implicit none
    
    integer :: a, b, i, j, flag

    write(*,*)"Enter lower bound of the interval: "
    read(*,*)a
    
    write(*,*)"Enter upper bound of the interval: "
    read(*,*)b
    
    write(*,*)"Prime numbers between",a,"and",b,"are"

   do i  = a,b
      if(i==1 .or. i==0) cycle
      flag = 1 ! // flag variable to tell if i is prime or not
    
      do j = 2, i/2
         if(mod(i,j)==0) then
           flag = 0
           exit
         end if
      end do      
   ! if flag = 1 means i is prime
   ! and flag = 0 means i is not prime
        if (flag == 1) write(*,*) i 
    end do
  end program prime_number

