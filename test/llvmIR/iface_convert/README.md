包含两串print

有逃逸分析的例子同时有两个call为true，指向相同地址，包含4个栈对象，分别为eface, x, iface, y。s在转换过程中被优化掉了

no_escape应该包含较多的相同地址，包含6个堆对象