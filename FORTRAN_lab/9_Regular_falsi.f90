
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
! Program to find root by regular falsi method
!                    
! 
!      Basic FORTRAN Lab By Samsuzz
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

program regulaFalsi

    implicit none

    real :: xL,xH,diff,tolerance
    real :: xMid,prevXMid,f,Approx_new
    write(*,*)'Enter the two numbers xL and xH between which root is to be found'
    read(*,*) xL,xH
    write(*,*)'Enter the tolerance'
    read(*,*)tolerance
    if (f(xL)==0) then
        write(*,* )xL,' is the root'
        stop
    elseif (f(xH)==0) then
        write(*,*)xH,' is the root'
        stop
    elseif (f(xL)*f(xH)>0) then
        write(*,*)'f(xH) and f(xL) must be of opposite sign'
        stop
    end if
    xMid = Approx_new(xL,xH)

    DO
        prevXMid = xMid;
        if(f(xMid)*f(xH)<0) then
            xL = xMid
        elseif (f(xMid)*f(xL)<0) then
            xH = xMid
        end if
        xMid = Approx_new(xL,xH)
        diff=ABS((xMid-prevXMid)/xMid)
        write(*,*) 'xL =',xL,'  ','xH =',xH,' ','xMId =',xMid
        if (diff < tolerance) EXIT
    end DO
    write(*,*)'solution is',xMid
    
    
end program


        real function f(y)
            real :: y
            f = y*exp(y)-1
            return
        end function f

        real function Approx_new(yL,yH)
            real :: yL,yH
            Approx_new = yL-f(yL)*(yH-yL)/(f(yH)-f(yL))
            return
        end function Approx_new
