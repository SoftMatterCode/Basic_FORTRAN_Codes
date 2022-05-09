!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! program to find the unknown y given x using lagrange interpolation
!                    
!    the name of the data file is data1.txt
! 
!      Basic FORTRAN Lab By Samsuzz
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 program lagrangian_polynomial
 implicit none
    real::x(100),y(100),s=0.0,polynomial,k
    integer::i,j,n

    open(unit=1, file='data1.txt')
    ! here we have 4 data points in the file (you can add more data points)
    ! do not enter n greater than 4, as number of data points are 4 
    write(*,*)'Number of terms( or n, 4 or less in this example)?'
    read(*,*)n

    read(unit=1,fmt=*)(x(i),y(i),i=1,n)

    write(*,*)'Enter the x value where you want to know the value of the polynomial'
    read(*,*)k

    do i=1,n
       polynomial=1.0
       do j=1,n
          if(i .ne. j) then
           polynomial = polynomial*((k-x(j))/(x(i)-x(j)))
          end if
      end do

      s = s + (polynomial*y(i)) 
      
    end do
    
    write(*,*)"The calculated value of the polynomial is = ",s

  end program
