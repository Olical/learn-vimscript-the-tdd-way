
describe 'About Dictionaries'

  it 'dictionaries are created with {} notation'
    " Refer to :help type()
    let empty_dictionary = {}
    Expect 4 ==# type(empty_dictionary)
  end

  " You're on your own from here...

  " Helpful references:
  " :h Dictionary
  " http://vimdoc.sourceforge.net/htmldoc/eval.html#Dictionary
  " http://learnvimscriptthehardway.stevelosh.com/chapters/37.html

end
