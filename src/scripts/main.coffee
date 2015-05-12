(Main = () ->
  
  list = [2, 3, 5, 7, 12, 88]
  list2 = ['a', 'b', 'c', 'd', 'e', 'f']

  #question 1.c 
  addRecursive = (list) ->
    
    if(list == parseInt(list, 10)) 
      return list
    else
      answer = 0
      $.each(list, (item)->
        answer = answer + add(list[item])
      )
      return answer

  #question 2
  combine = (list, list2) ->
    if ! list.length == list2.length
      return 'mismatched lengths'

    newArr = []

    $.each(list, (item)->
      newArr.push(list[item].toString().concat(list2[item].toString()))
    )
    return newArr


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
