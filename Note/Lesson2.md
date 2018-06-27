## Lesson2 - MVC

### MVC简介
MVC是一种用于项目解耦的设计架构，它是Model、View、Controller的简称。运用MVC可以使你的代码可读性和可扩展性更高。

### MVC 分别代表什么
MVC代表将项目分解成3个阵营（Divide objects in your program into 3 camps）

* Model:你的应用依赖的数据是什么，但是不包含它如何显示。（What your application is（but not how it is displayed））
* View:
* Controller:你的model是怎样呈现给用户的,主要用来处理UI逻辑。（How your model is presented to your user(UI Logic)）
* 你的Controller的‘小弟’ 。（your controller minions）

ok，现在我们知道了MVC分别代表的什么，接下来我们看一下，这三个阵营是如何通信的。

### MVC之间如何通信
* Controller可以直接和自己的model通信。（controller can always talk directly to their model）
* Controller也可以和自己的View直接通信。（controller can also talk directly to their View）
* Model 和 View永远不应该互相通信，Model 和 View永远不应该互相通信，Model 和 View永远不应该互相通信。(The Model and View should never speak to each other)
* View 不可以直接和Controller通信。它可以通过将Controller为target来进行通信（UIButton、UITextField等），也可以通过设置Controller为delegate来进行通讯（UIScrollView、UITableView等）。需要注意的是：View不应该拥有它们显示data，这是Controller的职责（可以将Controller设置为它的DataSource）。
* Model也不可以直接和Controller通信。Model应该是和UI分离的。如果model发生改变它可以通过KVO和Notification来通知Controller

### 总结
* Controller可以直接和Model和View通信
* View、Model不可以互相通信也不可以直接和Controller通信