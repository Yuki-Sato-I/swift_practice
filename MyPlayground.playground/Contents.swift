import UIKit

/*
var str = "Hello, playground"


let hoge = -12345
let fuga = 1.2

print(hoge)
print(fuga)

if let hoge = hoge as? Int {
    print("hogeはInt \(hoge)")
}
var a = UIApplication
if let fuga = fuga as? Int {
    print("fugaはIntかな？ \(fuga)")
} else if let fuga = fuga as? String {
    print("fugaはString \(fuga)")
} else {
    print("fugaはIntでもStringでもない? \(fuga)")
}

if hoge is Int {
    print("これでも同じ結果だよ。 \(hoge)")
}
/*
var labelText:String? = "0"
let countOK:Int? = Int(labelText!)
labelText = String(countOK! + 1)

print(labelText)

labelText = nil
let countNG:Int? = Int(labelText!)
labelText = String(countNG! + 1)
*/
/*
var a:Double? = 0

a = 3.1415

a = nil

var ho:Int! = 0

ho = nil
*/


let countLabel = UILabel()
countLabel.text = "100"
if let count = Int(countLabel.text!){
    countLabel.text = "\(count + 1)"
}
print(countLabel)


var array: [String] = ["hoge", "fuga", "piyo"]
array[0]

var dictionary: [String: String] = ["hoge": "ほげ", "fuga": "ふが", "hiyo": "ひよ"]
dictionary["hoge"]

for i in 0..<10 {
    print(i)
}

for element in array {
    print(element)
}

for element in dictionary {
    print(element)
}

*/
/*
var x: Int = 101;

if(10 <= x && x < 100){
    print("やあ")
}

if(10 > x || 100 <= x){
    print("hello")
}
*/
for i in 1...100 {
    if(i % 15 == 0){
        print("fizzbuzz")
    }else if(i % 3 == 0){
        print("fizz")
    }else if(i % 5 == 0){
        print("buzz")
    }else{
        print(i)
    }
}
var a = UIApplication.init()
