program name
  
    implicit none
    INTEGER, allocatable, dimension(:) :: A, B, C
    INTEGER :: size, ok, i
    REAL :: start, end

    print*, "Enter size of array"
    read*, size

    print*, size

    allocate(A(size), B(size), C(size), stat=ok)
    if (ok /= 0) then
        print*, "failed to allocate memory"
        stop
    end if

    do i = 1, size
        A(i) = i
        B(i) = i + 1
    end do

    call cpu_time(start)
    
    do i = 1, size
        C(i) = A(i) + B(i)
    end do

    call cpu_time(end)

    do i = 1,10
        print*, C(i)
    end do

    print*, "Time taken to execute : ", end-start, "seconds"
    
end program name