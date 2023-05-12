define void @main() {
entry:
    %a = alloca i8
    invoke void @foo()
        to label a unwind label b

a:
    %b = alloca i8
    ret void
}

define void @main() {
entry:
    ret void
}