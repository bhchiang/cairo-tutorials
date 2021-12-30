%builtins output

from starkware.cairo.common.alloc import alloc
from starkware.cairo.common.serialize import serialize_word



# assume size is even
# multiply 
func array_product(arr: felt*, size) -> (product):
    if size == 0:
        return (product=1)
    end

    let (product_of_rest) = array_sum(arr=arr+1, size=size-1)
    return (sum=[arr] + sum_of_rest)


   
end


func main{output_ptr:felt*}():
    const ARRAY_SIZE = 3
    let (ptr) = alloc()

    assert [ptr] = 2
    assert [ptr+1] = 3
    assert [ptr+2] = 4

    let (product) = array_product(arr=ptr, size=ARRAY_SIZE)

    serialize_word(product)
    return ()
end