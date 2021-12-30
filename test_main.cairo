# external IO
%builtins output

# similar to python's import style
from starkware.cairo.common.serialize import serialize_word


# wonder why it's not just main(output_ptr: felt*) like a regular fn
func main{output_ptr: felt*}():
    serialize_word(121231w2)
    serialize_word(4321)

    # test out division
    serialize_word(6/3)

    # confirm 7/3 result
    [ap] = 7/3; ap++

    # serialize_word([ap])
    [ap] = 3; ap++
    [ap] = [ap-1]*[ap-2]

    serialize_word([ap])

    # ret vs return?
    return ()
end



