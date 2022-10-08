var list = [] as [String]
var line : String?
repeat {
    line = readLine()
    if line != nil {
        list.append(line!)
    }
} while line != nil


func quickSort(array:[String]) -> [String]{
    var less = [String]()
    var equal = [String]()
    var greater = [String]()

    //the Pivot is what the elements in the array compares to in order to find its place in the array
    if array.count > 1{
        let pivot = array[0]

        for x in array{
            if x < pivot{
                less.append(x)
            }
            if x == pivot{
                equal.append(x)
            }
            if x > pivot{
                greater.append(x)
            }
        }
        return (quickSort(array:less)+equal+quickSort(array:greater))
    } else {
        return array
    }

}
let sortedArray = quickSort(array: list)
for line in sortedArray {
    print(line)
}
