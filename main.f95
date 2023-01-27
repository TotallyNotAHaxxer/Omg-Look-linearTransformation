program linear_transformation
! property of ArkAngeL43
    implicit none

    ! Declare variables
    real :: input_matrix(3,3)
    real :: output_matrix(3,3)
    real :: transformation_matrix(3,3) = [2.0, 0.0, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0, 2.0]

    ! Get input matrix
    print *, "Enter the input matrix (3x3):"
    do i = 1,3
        do j = 1,3
            read *, input_matrix(i,j)
        end do
    end do

    ! Perform linear transformation
    do i = 1,3
        do j = 1,3
            output_matrix(i,j) = 0.0
            do k = 1,3
                output_matrix(i,j) = output_matrix(i,j) + input_matrix(i,k) * transformation_matrix(k,j)
            end do
        end do
    end do

    ! Print output matrix
    print *, "Output matrix:"
    do i = 1,3
        do j = 1,3
            write (*, '(F4.2)') output_matrix(i,j)
        end do
        print *
    end do

end program linear_transformation
