context('check numbers')
test_that("even numbers",
          expect_that(is.even(2), equals(TRUE))
          )
test_that("odd numbers",
          expect_that(is.odd(1), equals(TRUE))
)