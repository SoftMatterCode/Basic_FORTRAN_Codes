!======================================================================!
!Progaram to find solutions to equations of the form f(x)=0 using 
!                       bisection method                                     
!                    
! This program highlights how to use a function
! 
!      Basic FORTRAN Lab By Samsuzz
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

program bisection
    implicit none
    
    real :: xL,xH,tolerance,d,xMid,f
    integer :: iterations = 0
    
    write(*,*) 'Enter the two numbers between which root is  to be found'
    read(*,*) xL,xH
    write(*,*) 'The root should be correct upto how many decimal places?'
    read(*,*) tolerance

    if ((f(xL)*f(xH))== 0) then
        if ((f(xL)==0).and.(f(xH)==0)) then
            write(*,*) 'The desired roots are',xL,' and ',xH,' themselves'
        else if (f(xL)==0) then
            write(*,*) 'The desired root is',xL
        else if (f(xH)==0) then
            write(*,*) 'The desired root is',xH
        end if
    else if ((f(xL)*f(xH))>0) then
        write(*,*) 'The root does not lie between ',xL,' and ',xH
    else if ((f(xL)*f(xH))<0) then
        do
            xMid=(xL+xH)/2
            if (f(xMid)==0) exit
            d=abs((xMid-xL)/xMid)
            if (d<((0.1)**tolerance)) exit         !accuracy
            if ((f(xMid)*f(xL))<0) then            !root lies between xMid and xL
                xH=xL
                xL=xMid

            else if ((f(xMid)*f(xH))<0) then       !root lies between xMid and xH
                xL=xMid
                xH=xH
            end if
            iterations = iterations + 1
        end do
        write(*,*) 'The root is',xMid
        write(*,*) 'Total iterations =',iterations
   end if


end program bisection

		function f(y)
			real :: f
			real::y
			f= y*exp(y)-1
		end function f
