# 修改Int表示地址为baseOffset(Int, List)形式或者baseMapIdx(Int, ValueRef)的形式

- runtime
    - [X] GOLLVM-RUNTIME
      - [X] newobject
      - [X] makemap
- mem
  - [X] OBJECT-SYNTAX
    - [X] lookUpMem -> searchObjAtBase
    - [X] updateObjList
    - [X] updateObjMap
    - [X] getValAtIdxOfObject -> readObjList
    - [X] getValAtIdxOfLocalV -> readObjAtLocalV
    - [X] 添加getValAtBaseMapIdx
    - [X] isValidBaseMapIdxCtor -> isValidbaseMapIdx
    - [X] Address ::= readObjMap
    - [X] updateRefInMap
  - [X] GOLLVM-MEM-SYNTAX
    - [X] Address +BaseMapIdx
    - [X] addrAlias
    - [X] addrMapInsert(LocalName, Address)
    - [X] storeAddress
    - [X] storeNonAddr
    - [X] fillIdx
    - [X] lookUpBase() -> addressValOf
    - [X] deref
- [X] dynamic-syntax
- [X] dyn-insts
  - [X] GOLLVM-NORMAL-INSTS
    - [X] Tload
    - [X] Talloc
    - [X] Tgep
- [X] call

# 修改类型系统的分配，为精确的地址值做铺垫

- [X] makeNestListOfType -> initForType
- [X] allocType套上一层指针
- [X] cntDepthOf1stUnderlyingType

# 5-6

Constant也放入mem中

- [X] 从globalRegisters改变为到mem地址的映射
  - [X] static部分添加根据类型分配空间的规则
    - [X] 通过nextId进行分配地址空间,通过object进行分配。通过allocObj实现
      - [X] 仿照addrMapInsert添加`globalAddrMapInsert(GlobalName, Address)`
    - [X] 添加const属性
    - [X] content用现有api直接替换实现
  - [X] constant.k
    - [X] 修改isConst
      - [X] searchObjAtGlobalV搜索对象
    - [X] 查看getGlobalReg使用的地方
      - [X] getTypeOfGlobalV通过
      - [X] getValOfGlobalV通过readObjAtGlobalVWithIdxList实现
        - [X] 均可以通过object实现
      - [X] 其他东西能否转化为Ints语法结构

- [ ] constant
  - [X] zeroinitializer
    - [ ] 在读取时获取相应0值
  
- [ ] GoLLVM的类型描述符ValueRef不能在Type子类之下
  - 由于$\epsilon$的出现导致文法有问题，对于`%localv = type {}`会有多种预测路径


- [ ] 需要一个cell标记当前栈使用了哪些寄存器

过程间分析

- [ ] 栈
  - [X] 对象生命期映射，堆和全局变量为0，开始栈为1，调用返回会增减id。
    - [X] Object添加lifetime属性
      - [X] 将合适的object()替换为createObjWithSuitableLifeTime
    - [X] 添加全局寄存器的初始化等操作
    - [X] 添加lifetime cell表示生命期
  - [ ] 需要记录哪些栈对象是该次栈帧分配的
    - [X] 在分配对象时需要记录哪些基址是当前栈帧分配的，退出时需要回收。stackAllocs cell表示栈分配的对象基址集合
      - [ ] 似乎并不需要回收，直接按照lifetime进行判断即可
    - [X] 需要栈帧结构callStack cell记录保存调用者信息
      - [X] 局部寄存器映射local2Base, local2prim
      - [X] stackAllocs cell
- 生命期处理问题
  - [X] store时根据生命期进行处理。
    - [X] 如果dst的生命期 < src地址生命期，则出现问题。
    - [ ] 寻找所有包含更改引用关系意图的操作
  - [X] ret时将也有生命期问题。
    - 通过checkReturnLifeTime解决
  - [ ] unsafe.Pointer和uintptr会栈地址被返回被允许。不考虑unsafe和uintptr引入的不安全性。
