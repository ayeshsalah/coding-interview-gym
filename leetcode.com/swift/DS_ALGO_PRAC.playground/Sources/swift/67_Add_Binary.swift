class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        guard var x = Int(a, radix: 2), var y = Int(b, radix: 2) else {
            print("x: \(Int(a, radix: 2)), y: \(Int(b, radix: 2))")
            return "0"
        }
        print("x: \(x), y: \(y)")
        while y > 0 {
            let answer = x ^ y
            let carry = (x & y) << 1
            (x, y) = (answer, carry)
        }
        let answer = String(x, radix: 2)
        print(answer)
        print("x: \(x), y: \(y)")
        return answer
    }
}
/*
Input:
a = "11" >> 3
b = "1"  >> 1

Output: "100" >> 4



Input:
a = "1010" >> 10
b = "1011" >> 11

Output: "10101" >> 21
*/
