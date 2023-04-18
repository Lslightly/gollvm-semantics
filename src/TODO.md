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