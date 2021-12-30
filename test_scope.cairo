%builtins output

from starkware.cairo.common.serialize import serialize_word


func main{output_ptr: felt*}():
    let a = 4

    # need to figure out how divisibility works with cairo

    if a%2 == 0:
        serialize_word(1)
    else:
        serialize_word(0)
    end 
    return ()
end