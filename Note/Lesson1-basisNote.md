
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
* 使用`indices`for-in(带下标)一个数组
```
let students = ["hack", "green", "jack"]
//循环访问元素
for element in students {
    print(element)
}
//第一种带下标的循环
for idx in 0..<students.count {
    print("index: \(idx)")
}
//第二种带下标的循环
for idx in students.indices {
    print(students[idx])
}

```

### Dictdory

### Access Control
* internal:默认为internal，APP或者framework中任何对象都能使用
* private:只能内部对象使用
* private(set):外面的对象可以访问该属性，但是不能设置它的值
* fileprivate:源文件中任何代码都可以访问
* public(仅用于framework):你的framework外的对象也可以调用，如pod引用的框架可用的方法和类一般都是定义为public
* open(仅用于framework):你的framework之外的对象可以继承该类
* 一个比较好的方法是把所有的默认为private，当想给其他人用的时候在修改访问权限


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

### Extension

#### 可以扩展现有的数据结构
* 你可以给一个enum/struct/class添加属性或者方法，即使你不知道它的源码

#### 使用限制
* 不能重写已经存在的属性或者方法，你只能增加新的
* 你添加的属性不能storage associated，只能添加computed

#### 它很容易被滥用
* 当它被使用时，应该是简单易读的，不应该把它设计的晦涩难懂
* 不要将它变成一个好的面向对象设计模式的替代品
* 在使用的时候最好写一些精炼，通用性高的function

### Optional
* 它是一个普通的swift类型，如Int、String等
* 它是一个enumeration
* 

### enum
* enum是一个值类型，所以当它传递的时候会值拷贝
* 它只能有离散的状态
* 每个状态都可以有一个自己的关联值（这个关联值不是必须的，也可以没有）
* case的判断使用switch

```
//两种命名方式
var item = FastFoodMenuItem.cookie
var otherItem: FastFoodMenuItem = .cookie
//var item = .cookie: 这种是不行的，Swift无法推断出它的类型
```
