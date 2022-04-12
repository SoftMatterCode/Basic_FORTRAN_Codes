!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
! Program to Find Roots of a Quadratic Equation       
!         ax2 + bx + c = 0
!                where
!        a, b and c are real numbers and
!                 a != 0
! 
!      Basic FORTRAN Lab By Samsuzz
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

program roots
    implicit none
    
    real :: a, b, c, discriminant, root1, root2, realPart, imagPart;
    write(*,*)"Enter coefficients a, b and c: "
    read(*,*)a, b, c
    
    discriminant = b * b - 4 * a * c
    
    
    !  condition for real and different roots
    
    if (discriminant > 0) then
        write(*,*)"condition for real and different roots"
        root1 = (-b + sqrt(discriminant)) / (2 * a)
        root2 = (-b - sqrt(discriminant)) / (2 * a)
        write(*,*)"root1 =", root1," and root2 = ", root2
        
    ! condition for real and equal roots
        
    else if (discriminant == 0) then
        write(*,*)"condition for real and equal roots"
        root1 = -b / (2 * a)
        root2 = -b / (2 * a)
        write(*,*)"root1 = root2 = ", root1
    ! if roots are not real
    
    else 
        write(*,*)"Roots are not real"
        realPart = -b / (2 * a)
        imagPart = sqrt(-discriminant) / (2 * a)
        write(*,*)"Root 1 :: realPart =", realPart," and imagPart = ", imagPart
        write(*,*)"Root 2 :: realPart =", realPart," and imagPart = ", -imagPart
    
    end if 
    
    end program roots
