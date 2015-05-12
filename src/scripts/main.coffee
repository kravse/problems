(Main = () ->
  
  list = [2, 3, 5, 7, 12, 88]
  list2 = ['a', 'b', 'c', 'd', 'e', 'f']

  #Write a function that computes the sum of the numbers in a given list using recursion.
  addRecursive = (list) ->
    
    if(list == parseInt(list, 10)) 
      return list
    else
      answer = 0
      $.each(list, (item)->
        answer = answer + add(list[item])
      )
      return answer

  #Write a function that combines two lists by alternatingly taking elements. For example: given the two lists [a, b, c] and [1, 2, 3], the function should return [a, 1, b, 2, c, 3].
  combine = (list, list2) ->
    if ! list.length == list2.length
      return 'mismatched lengths'

    newArr = []

    $.each(list, (item)->
      newArr.push(list[item].toString().concat(list2[item].toString()))
    )
    return newArr

  #Write a function that computes the list of the first 100 Fibonacci numbers. By definition, the first two numbers in the Fibonacci sequence are 0 and 1, and each subsequent number is the sum of the previous two. As an example, here are the first 10 Fibonnaci numbers: 0, 1, 1, 2, 3, 5, 8, 13, 21, and 34.
  fibonacci = () ->
    newArr = []

    while(newArr.length < 101)
      console.log(newArr.length)
      if newArr.length == 0 
        newArr.push(0)
        newArr.push(1)
      else 
        newArr.push(newArr[newArr.length-1] + newArr[newArr.length-2])

    return newArr
  #Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.
  fizzBuzz = () ->
    x = 0
    Arr = []
    while x < 30
      x++
      if x % 3 == 0 and x % 5 == 0
        Arr.push('FizzBuzz')
      else if x % 3 == 0
        Arr.push('Fizz')
      else if x % 5 == 0
        Arr.push('Buzz')
      else
        Arr.push(x)
    
    return Arr

  console.log(fizzBuzz())


)()
