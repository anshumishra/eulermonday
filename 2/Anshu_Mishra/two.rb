#Each new term in the Fibonacci sequence is generated by adding the previous two terms.
#By starting with 1 and 2, the first 10 terms will be:
#
#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
#Find the sum of all the even-valued terms in the sequence which do not exceed four million.
#
#Obersevations : starting with 2 every 3rd number is even (it must be, as to make an even number
#one needs to add two odds (or two even unlikely here))
#So, lets try to decompose the fibonacci series in terms of n-3,n-6,n-9, etc...as it make us do
#less iteration while adding
#
# F(n) = F(n-1)+F(n-2) = F(n-2)+F(n-3)+F(n-2) = F(n-3)+2(F(n-2)) = F(n-3) + 2(F(n-3)+ F(n-4))
#      = 3F(n-3) + 2F(n-4)
#      = 3F(n-3) + F(n-4)+F(n-5)+F(n-6) = 4F(n-3) + F(n-6)
#
#


def find_sum_of_even_terms(limit)
  second_last_even_number = 2
  last_even_number = 8
  current_number = 4*last_even_number+second_last_even_number
  sum=second_last_even_number+last_even_number

  while current_number<=limit
    sum+=current_number
    second_last_even_number = last_even_number
    last_even_number = current_number
    current_number = 4*last_even_number+second_last_even_number
  end
  sum
end

puts find_sum_of_even_terms(4000000)