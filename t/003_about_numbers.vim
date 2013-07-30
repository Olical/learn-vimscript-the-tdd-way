" http://learnvimscriptthehardway.stevelosh.com/chapters/25.html


describe 'numbers'

  it 'assume decimal format'
    Expect 9 ==# 9
    Expect 10 ==# 5 + 5
  end

  it 'numbers prefixed with 0 are interpreted as octal'
    Expect 1 ==# 001
    Expect 8 ==# 010
    Expect 15 ==# 017
    Expect 19 ==# 019
    Expect 16 ==# 020
    " NOTE: 019 is not a valid octal number, so Vim coerces it to decimal 19
  end

  it 'numbers prefixed with 0x are interpreted as hexadecimal'
    Expect 1 ==# 0x1
    Expect 15 ==# 0xf
    Expect 16 ==# 0x10
  end

  it 'scientific notation can be used to represent floats'
    Expect 0.00001 ==# 1.0e-5
    Expect 100000.0 ==# 1.0e+5
    Expect 1230.0 ==# 12.3e2
  end

end

describe 'mixing integers and floats'

  it 'integers are coerced to floats'
    Expect 2.0 ==# 1 + 1.0
    Expect 4.0 ==# 2 * 2.0
    Expect 2.0 ==# 4 / 2.0
  end

end
