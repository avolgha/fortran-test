! **Problem**: (https://leetcode.com/problems/two-sum/)
! Given an array of integers nums and an integer target, return indices of the
! two numbers such that they add up to target. You may assume that each input
! would have exactly one solution, and you may not use the same element twice.
! You can return the answer in any order.

! **Comment**:
! I think there is potential to improve this code.
! But hey, it's Fortran! What did you expect? A high level algorithm?
! I mean, the execution time on my machine is on around 18sec which
! is really fast and to be fair, I didn't think that it would be that fast.
!
! I could as well only test this on the 3 Test Cases LeetCode
! gave to me so I don't know if it would pass all of them.

program problem
  implicit none

  interface
    subroutine run(inputArray, target)
      integer, dimension(:) :: inputArray
      integer               :: target
    end subroutine run
  end interface

  call run ((/2, 7, 11, 15/), 9)
  call run ((/3, 2, 4/)     , 6)
  call run ((/3, 3/)        , 6)
end program problem

subroutine run(inputArray, target)
  integer, dimension(:) :: inputArray
  integer               :: target
  integer               :: len
  integer               :: x
  integer               :: y
  
  len = size(inputArray)

  do i = 0, len
    x = inputArray(i)
    do j = 0, len
      y = inputArray(j)
      if ( i .ne. j .and. x + y .eq. target ) then
        print *, "index: ", i - 1, " and ", j - 1
        return
      end if
    end do
  end do
end subroutine run
