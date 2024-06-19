program area
    implicit none
    REAL LENGTH
    REAL BREADTH
    REAL A

    print*, "Enter Length"
    read*, LENGTH

    print*, "Enter Width"
    read*, BREADTH

    call routine(LENGTH, BREADTH, A)

    print*, "Area is: ", A

end program area

subroutine routine(LENGTH,  BREADTH, A)
    real, intent(in) :: LENGTH
    real, intent(in) :: BREADTH
    A = LENGTH * BREADTH

end subroutine routine
