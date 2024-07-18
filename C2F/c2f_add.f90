program c2f
    use omp_lib
    implicit none
    INTEGER :: size = 400 
    INTEGER :: a(400), aa(400), i
    REAL(kind=8) :: start, end

    ! Initialize the array
    do i = 1,size
        a(i) = i
    end do

    call cpu_time(start)
    !$omp parallel do private(i) shared(aa,a)
    do i = 1, size
        aa(i) = a(i) + a(i)
    end do
    call cpu_time(end)

    do i = 1, size
        print*, a(i)
    end do

    print*, "Time taken: ", end-start, "sec"

    
end program c2f
