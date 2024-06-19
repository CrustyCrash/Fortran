program area
    implicit none
    REAL LENGTH
    REAL WIDTH
    REAL A
    REAL RECT

    print*, "Enter length: "
    read*, LENGTH
    print*, "Enter width: "
    read*, WIDTH

    A = RECT(LENGTH , WIDTH)
    print*, "Area is: ", A

end program area

FUNCTION RECT(LENGTH, WIDTH)
    implicit none
    real LENGTH, WIDTH, RECT
    RECT = LENGTH * WIDTH
end FUNCTION RECT
