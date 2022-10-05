def recursive_binary(list, target):
    if len(list) == 0:
        return False
    else:
        mid = (len(list))//2

        if list[mid] == target:
            return True
        else:
            if list[mid] < target:
                return recursive_binary(list[mid+1:], target)
            else:
                return recursive_binary(list[:mid], target)

def verify(result):
    print("found")

numbers = [1,2,3,4,5,6,7,8,9,10]
result = recursive_binary(numbers, 6)
verify(result)