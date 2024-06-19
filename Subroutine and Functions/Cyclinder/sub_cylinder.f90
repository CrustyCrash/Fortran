module pi
    implicit none
    REAL :: p = 3.14
contains
    
end module pi
program cylinder
    REAL RADIUS
    REAL HEIGHT
    REAL PARAM
    REAL VOL

    print*, "Enter Radius: "
    read*, RADIUS
    print*, "Enter Height: "
    read*, HEIGHT

    call AREA(RADIUS, HEIGHT, PARAM)
    print*, "Area is : ", PARAM
    
    call VOLUME(RADIUS,HEIGHT,VOL)
    print*, "Volume is: ",VOL

end program cylinder

subroutine AREA(RADIUS, HEIGHT, PARAM)
    REAL, intent(in) :: RADIUS
    REAL, intent(in) ::  HEIGHT

    PARAM = 2 * p * RADIUS * (HEIGHT + RADIUS)

end subroutine AREA

subroutine VOLUME(RADIUS,  HEIGHT, VOL)
    REAL, intent(in) :: RADIUS
    REAL, intent(in) ::  HEIGHT

    VOL = P * RADIUS * RADIUS * HEIGHT

end subroutine VOLUME