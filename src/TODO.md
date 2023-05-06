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

- [ ] 从globalRegisters改变为到mem地址的映射
  - [X] static部分添加根据类型分配空间的规则
    - [X] 通过nextId进行分配地址空间,通过object进行分配。通过allocObj实现
      - [X] 仿照addrMapInsert添加`globalAddrMapInsert(GlobalName, Address)`
    - [X] 添加const属性
    - [X] content用现有api直接替换实现
  - [ ] constant.k
    - [X] 修改isConst
      - [X] searchObjAtGlobalV搜索对象
    - [ ] 查看getGlobalReg使用的地方
      - [X] getTypeOfGlobalV通过
      - [X] getValOfGlobalV通过readObjAtGlobalVWithIdxList实现
        - [X] 均可以通过object实现
      - 其他东西能否转化为Ints语法结构

- [ ] constant
  - [X] zeroinitializer
    - [ ] 在读取时获取相应0值


- [ ] 需要一个cell标记当前栈使用了哪些寄存器