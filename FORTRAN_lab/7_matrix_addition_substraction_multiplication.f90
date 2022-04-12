!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
! Program to multiply and add any two given matrix
!                    
! 
!      Basic FORTRAN Lab By Samsuzz
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    program matrix_mul
    implicit none
    
    integer, dimension (1:1000,1:1000) :: matrixA
    integer, dimension (1:1000,1:1000) :: matrixB
    integer, dimension (1:1000,1:1000) :: matrixC
    integer, dimension (1:1000,1:1000) :: matrixAB
    integer :: i,j,k
    real :: sum_mat
      
    write(*,*)"Please enter the values for a 3*3 matrix"

    do i = 1,3
       do j = 1,3
       write(*,*)"enter the matrix element",i,j," of matrix A"
       read(*,*)matrixA(i,j)
       write(*,*)"enter the matrix element",i,j," of matrix B"
       read(*,*)matrixB(i,j)
       end do
    end do 
    
    do i = 1,3
       do j = 1,3  
         matrixC(i,j) = matrixA(i,j) + matrixB(i,j) 
       end do
    end do 
    
    write(*,*)"The addition of matrix A & B is"
    
    do i = 1,3
      write(*,*)(matrixC(i,j),j=1,3)
    end do  
    
    
    ! to multiply a matrix
    
        do i = 1,3
          do j = 1,3
    
            sum_mat = 0
              
              do k = 1,3
              
                sum_mat = sum_mat + matrixA(i,k)*matrixB(k,j)
                
              end do
              
              matrixAB(i,j) = sum_mat
           end do
          end do         
    
            write(*,*)"The multiplication of matrix A & B is"
    
            do i = 1,3
             write(*,*)(matrixAB(i,j),j=1,3)
            end do

    
  end program matrix_mul

