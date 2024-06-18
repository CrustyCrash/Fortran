! program to calculate energy stored in a condenser
program energy
    implicit none
    REAL CAPACITANCE
    REAL V
    REAL E

    print*,"Enter Capacitance(C): "
    read*,CAPACITANCE

    print*, "Enter Potential Difference(V): "
    read*, V

    E = (CAPACITANCE * V * V)/2

    print*,"Energy stored is: ",E

end program energy