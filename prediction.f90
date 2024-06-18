program prediction

    implicit none
    INTEGER T
    REAL A
    
    READ*, T
    A = 174.6 * (T - 1981.2)**3
    print*, A

end program prediction