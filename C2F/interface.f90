program inter
    implicit none
    INTEGER, allocatable, dimension(:) :: width, height, area, perimeter
    INTEGER :: size, i

    interface
        subroutine calc(width, height, area, perimeter)
            implicit none
            INTEGER, intent(in), dimension(:) :: width, height
            INTEGER, intent(out), dimension(:) ::  area, perimeter
        end subroutine calc
    end interface

    print*, "Enter the size of the array"
    read*, size

    allocate(width(size),height(size), area(size), perimeter(size))
    do i = 1, size
        width(i) = i
        height(i) = i
    end do

    call calc(width, height, area, perimeter)

    do i = 1, size
        print*, "Area = ", area(i), "Perimeter = ", perimeter(i)
    end do

    deallocate(width,height,area,perimeter)
end program inter

subroutine calc(width, height, area, perimeter)

    INTEGER, intent(in), dimension(:) ::  width, height
    INTEGER, intent(out), dimension(:) :: area, perimeter
    INTEGER :: arr_size, i
    arr_size = size(width)

    do i = 1,arr_size
        area(i) = width(i) * height(i)
        perimeter(i) = 2* (width(i) + height(i))
    end do     
    end subroutine calc
