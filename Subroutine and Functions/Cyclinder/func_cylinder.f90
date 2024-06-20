module name
    implicit none
    real :: P = 3.14
    
contains
    
end module name

program cyc
    
    implicit none
    real RADIUS, HEIGHT, A
    real :: AREA

    print*, "Enter radius"
    read*, RADIUS
    print*, "Enter height"
    read*, HEIGHT

    A = AREA(RADIUS, HEIGHT)
    print*, "Area is : ", A

end program cyc

function AREA(RADIUS, HEIGHT)
    use name
    real, intent(in) :: RADIUS
    real, intent(in) :: HEIGHT
    real :: AREA

    AREA = 2 * P * RADIUS * (RADIUS + HEIGHT)

end function AREA