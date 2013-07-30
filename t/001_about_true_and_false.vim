
function! TruthValue(condition)
  if a:condition
    return 'truthy'
  else
    return 'falsey'
  endif
endfunction

describe 'About True and False'

  it 'number 1 is treated as true'
    Expect 'truthy' ==# TruthValue(1)
  end

  it 'number 0 is treated as false'
    Expect 'falsey' ==# TruthValue(0)
  end

  it '! operator can be used to negate'
    Expect 'truthy' ==# TruthValue(!0)
    Expect 'falsey' ==# TruthValue(!!0)
  end

  it 'non-zero numbers are always true'
    Expect 'truthy' ==# TruthValue(-1)
    Expect 'truthy' ==# TruthValue(010)
    Expect 'truthy' ==# TruthValue(0x10)
  end

  it 'strings are false'
    Expect 'falsey' ==# TruthValue('')
    Expect 'falsey' ==# TruthValue("")
    Expect 'falsey' ==# TruthValue('Hello, World!')
    Expect 'falsey' ==# TruthValue('Room 101')
    Expect 'falsey' ==# TruthValue('0 day exploit')
  end

  it 'strings beginning with a non-zero number are true (Doh!)'
    Expect 'truthy' ==# TruthValue('101 Dalmations')
    Expect 'truthy' ==# TruthValue('-1 offset')
  end

  " Notes:
  " TruthValue(0.1) error: Using Float as a Number
  " TruthValue([]) error: Using List as a Number
  " TruthValue({}) error: Using Dictionary as a Number
  " TODO: write specs to describe these exceptions.

end
