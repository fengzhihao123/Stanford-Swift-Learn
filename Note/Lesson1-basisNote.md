
## 基础知识
### Property
```
var foo: Double //stored
var foo: Double {
    get {
        返回计算完的值
    }
    set(newValue) {

    }
}
```
* didSet (KVO)
* lazy property
* property不仅仅可以声明stored，它还可以声明为computed

#### Computed property
* `set`不是必须实现的，如果你实现的话，该属性为只读（read-only）
* 为什么要写成computed？因为很多时候某个值需要依赖别的值或者状态

### Array

### Dictdory

### Access Control


### Struct/Class

### Range

你如何使用Swift实现for(i = 0.5, i <= 3.5, i += 0.5)？
上面的0.5到3.5就是一个Range，它并不支持for-in。但是我们可以使用`stride`方法来实现
```
for num in stride(from: 0.5, to: 3.5, by: 0.5) {
    print(num)
    //0.5 1.0 1.5 2.0 2.5 3.0
}
```

* Range 和CountableRange 是不同的，CountableRange支持for-in
* 0.5...3.5是一个Range，而1...3是一个CountableRange
* CountableRange是一个泛型，并不是只支持Int,还支持String等
* stride返回的类型就是CountableRange

### Tuples

```
//基础使用
let x = ("God", 123, 123.0)
let (name, age, score) = x
print(name) //God
print(age)  //123
print(score) //123.0

print(x.0) //God 如果声明的时候没有变量名，可以使用index来使用
//声明了变量，可以通过变量名访问。注意：此处tuple对变量是强引用
let x1: (n: String, a: Int) = ("Coder", 123)
print(x1.n)
//你也可以在返回值里使用
func getSome() -> (String, Int) {
    return ("Code", 123)
}

print(getSome())
```
* 它是多个值的集合
* 它可以包含多个不同的类型
* 你可以把tuple赋值给某个变量，也可以直接使用点语法
* tuple对内部的值是强引用

