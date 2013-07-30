" http://learnvimscriptthehardway.stevelosh.com/chapters/20.html

describe 'About Scopes'
  " :h internal-variable

  it 'the b: scope attaches a variable to the current buffer'
    " :h b:var
    tabnew
    let b:hello = 'Howdy!'
    Expect 1 ==# exists("b:hello")
    Expect 'Howdy!' ==# b:hello

    new
    Expect 0 ==# exists("b:hello")
    tabclose!
  end

  " Vimscript has several different kinds of scope. For more info, read:
  " :h internal-variable
  "
  " Write tests to explore each of those scopes.

end
