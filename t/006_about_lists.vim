
describe 'About Lists'

  it 'lists are created with [] notation'
    " Refer to :help type()
    let empty_list = []
    Expect 3 ==# type(empty_list)
  end

  it 'list elements can be accessed by index'
    let letters = ['a', 'b', 'c', 'd', 'e']
    Expect 'a' ==# letters[0]
    Expect 'b' ==# letters[1]
    Expect 'e' ==# letters[-1]
    Expect 'd' ==# letters[-2]
  end

  it 'lists can be sliced into a sublist by [n:m] notation'
    let letters = ['a', 'b', 'c', 'd', 'e']
    Expect ['a', 'b'] ==# letters[0:1]
    Expect ['c', 'd', 'e'] ==# letters[2:4]
    Expect ['a', 'b', 'c', 'd', 'e'] ==# letters[0:-1]
    Expect ['a', 'b', 'c', 'd'] ==# letters[:3]
    Expect ['b', 'c', 'd', 'e'] ==# letters[1:]
    Expect ['a', 'b', 'c', 'd', 'e'] ==# letters[:]
  end

  it 'lists can concatenated with the + operator'
    let new_list = ['a', 'b'] + ['c']
    Expect ['a', 'b', 'c'] ==# new_list
  end

  it 'list concatenation requires LHS and RHS of + to be lists'
    let caught = 'no'
    try
      let disallowed = ['a', 'b'] + 'c'
    catch /Using a List as a Number/
      let caught = 'yes'
    endtry
    Expect 'yes' ==# caught
  end

  it 'list elements can be unpacked to variables'
    let [a, b, c; d] = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    Expect 1 ==# a
    Expect 2 ==# b
    Expect 3 ==# c
    Expect [4, 5, 6, 7, 8, 9] ==# d
  end

  it 'insert()'
    let list = [1, 2, 3, 4, 5]
    call insert(list, 0)
    Expect [0, 1, 2, 3, 4, 5] ==# list
  end

  " You're on your own for these...
  " Write some tests to explore the behavior of these list functions
  it 'add()'
    let list = [1, 2, 3, 4, 5]
    call add(list, 6)
    Expect [1, 2, 3, 4, 5, 6] ==# list
  end

  it 'extend()'
    let list1 = [1, 2, 3]
    let list2 = [4, 5, 6]
    let res = extend(list1, list2, 1)
    Expect [1, 4, 5, 6, 2, 3] ==# res
  end

  it 'get()'
    let list = [1, 2, 3, 4, 5]
    let res = get(list, 5, 'not found')
    Expect 'not found' ==# res
  end

  it 'remove()'
    let list = [1, 2, 3, 4, 5]
    let res = remove(list, 2, 4)
    Expect [1, 2] ==# list
    Expect [3, 4, 5] ==# res
  end

  it 'index()'
    let list = ['A', 'a', 'B', 'b', 'C', 'c']
    let res = index(list, 'b')
    Expect 3 ==# res
  end

end
