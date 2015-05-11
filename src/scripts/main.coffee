(Main = () ->
  
  list = [2, 3, 5, 7, 12, 88]
  list2 = ['a', 'b', 'c', 'd', 'e', 'f']



  addRecursive = (list) ->
    
    if(list == parseInt(list, 10)) 
      return list
    else
      answer = 0
      $.each(list, (item)->
        answer = answer + add(list[item])
      )
      return answer

  combine = (list, list2) ->
    if ! list.length == list2.length
      return 'mismatched lengths'

    newArr = []

    $.each(list, (item)->
      newArr.push(list[item].toString().concat(list2[item].toString()))
    )
    return newArr


)()
