program vertical_acceleration
    implicit none
    REAL S
    REAL U
    REAL T
    REAL, PARAMETER :: g = 9.8 !! acceleration due to gravity

    print*, "Enter velocity(m/sec^2): "
    read*, U
    print*, "Enter time(sec): "
    read*, T

    S = U * T - 0.5*g*T**2

    print*, "Vertical displacement for velocity = ",U,", time =  ",T, "is :"
    print*, S

end program vertical_acceleration