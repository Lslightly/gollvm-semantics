; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "\09.section \22.go_export\22,\22e\22,@progbits"
module asm "\09.ascii \22v3;\\n\22"
module asm "\09.ascii \22package \22"
module asm "\09.ascii \22main\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22pkgpath \22"
module asm "\09.ascii \22main\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22import \22"
module asm "\09.ascii \22fmt\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22fmt\22"
module asm "\09.ascii \22 \\\22\22"
module asm "\09.ascii \22fmt\22"
module asm "\09.ascii \22\\\22\\n\22"
module asm "\09.ascii \22import \22"
module asm "\09.ascii \22runtime\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22runtime\22"
module asm "\09.ascii \22 \\\22\22"
module asm "\09.ascii \22runtime\22"
module asm "\09.ascii \22\\\22\\n\22"
module asm "\09.ascii \22import \22"
module asm "\09.ascii \22unsafe\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22unsafe\22"
module asm "\09.ascii \22 \\\22\22"
module asm "\09.ascii \22unsafe\22"
module asm "\09.ascii \22\\\22\\n\22"
module asm "\09.ascii \22init\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22errors\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22errors..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22fmt\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22fmt..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22cpu\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22internal_1cpu..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22oserror\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22internal_1oserror..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22poll\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22internal_1poll..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22reflectlite\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22internal_1reflectlite..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22testlog\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22internal_1testlog..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22io\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22io..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22fs\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22io_1fs..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22math\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22math..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22os\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22os..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22path\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22path..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22reflect\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22reflect..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22runtime\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22runtime..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22sort\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22sort..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22strconv\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22strconv..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22sync\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22sync..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22syscall\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22syscall..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22time\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22time..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22unicode\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22unicode..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22abi\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~internal_1abi\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22bytealg\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~internal_1bytealg\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22fmtsort\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~internal_1fmtsort\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22goarch\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~internal_1goarch\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22goexperiment\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~internal_1goexperiment\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22goos\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~internal_1goos\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22itoa\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~internal_1itoa\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22race\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~internal_1race\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22execenv\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~internal_1syscall_1execenv\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22unix\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~internal_1syscall_1unix\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22unsafeheader\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~internal_1unsafeheader\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22bits\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~math_1bits\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22atomic\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~runtime_1internal_1atomic\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22math\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~runtime_1internal_1math\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22sys\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~runtime_1internal_1sys\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22atomic\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~sync_1atomic\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22utf8\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~unicode_1utf8\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22init_graph\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \220\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \220\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \225\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \220\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \220\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \223\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \224\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \225\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \226\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \227\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \228\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \229\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2210\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2211\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2212\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2214\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2215\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2216\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2217\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2218\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2219\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \223\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \220\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \223\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \223\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \225\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \223\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \224\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \220\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \224\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \224\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \223\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \224\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \225\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \224\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \227\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \224\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \224\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2216\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \224\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2217\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \224\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2218\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \225\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \225\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \226\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \226\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \226\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2216\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \227\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \220\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \227\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \227\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \225\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \227\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \227\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2216\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \228\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \220\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \228\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \228\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \223\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \228\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \225\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \228\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \227\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \228\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2211\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \228\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \228\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2214\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \228\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2216\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \228\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2217\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \228\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2218\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \229\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2210\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \220\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2210\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2210\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \223\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2210\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \224\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2210\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \225\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2210\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \226\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2210\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \227\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2210\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \228\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2210\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2211\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2210\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2210\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2214\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2210\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2216\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2210\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2217\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2210\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2218\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2211\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \220\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2211\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2211\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \225\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2211\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2212\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \220\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2212\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2212\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \225\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2212\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \229\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2212\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2212\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2215\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2212\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2216\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2212\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2219\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2214\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2214\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \225\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2214\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2215\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \220\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2215\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2215\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \225\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2215\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \229\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2215\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2216\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2216\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2217\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \220\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2217\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2217\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \223\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2217\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \225\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2217\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2217\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2216\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2218\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \220\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2218\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \222\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2218\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \223\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2218\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \225\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2218\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2213\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2218\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2216\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2218\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \2217\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22types 6 1\22"
module asm "\09.ascii \22 10\22"
module asm "\09.ascii \22 21\22"
module asm "\09.ascii \22 22\22"
module asm "\09.ascii \22 17\22"
module asm "\09.ascii \22 19\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22type 1 ()\\ntype 2 () <type -13>\\ntype 3 (? <type -16>)\\ntype 4 *<type 5>\\ntype 5 *<type -11>\\n\22"
module asm "\09.ascii \22func \22"
module asm "\09.ascii \22/*asm \22"
module asm "\09.ascii \22runtime.setmodinfo\22"
module asm "\09.ascii \22 */ \22"
module asm "\09.ascii \22.\22"
module asm "\09.ascii \22__set_debug_modinfo__\22"
module asm "\09.ascii \22 (\22"
module asm "\09.ascii \22?\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22<type -16>\22"
module asm "\09.ascii \22)\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22func \22"
module asm "\09.ascii \22.\22"
module asm "\09.ascii \22f\22"
module asm "\09.ascii \22 (\22"
module asm "\09.ascii \22)\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22<type -13>\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22func \22"
module asm "\09.ascii \22.\22"
module asm "\09.ascii \22heap\22"
module asm "\09.ascii \22 (\22"
module asm "\09.ascii \22)\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22func \22"
module asm "\09.ascii \22.\22"
module asm "\09.ascii \22stack\22"
module asm "\09.ascii \22 (\22"
module asm "\09.ascii \22)\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22func \22"
module asm "\09.ascii \22<p2>\22"
module asm "\09.ascii \22GC\22"
module asm "\09.ascii \22 (\22"
module asm "\09.ascii \22)\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22checksum 02B75AD944C94CF7C400E945B27DCC6E944836AB\\n\22"
module asm "\09.text"

%_type.0 = type { i64, i64, i32, i8, i8, i8, i8, %__go_descriptor.6*, i8*, { i8*, i64 }*, %uncommonType.0*, %_type.0* }
%__go_descriptor.6 = type { i8 (i8*, i8*, i8*)* }
%uncommonType.0 = type { { i8*, i64 }*, { i8*, i64 }*, %IPST.9 }
%IPST.9 = type { %method.0*, i64, i64 }
%method.0 = type { { i8*, i64 }*, { i8*, i64 }*, %_type.0*, %_type.0*, i8* }
%PtrType.0 = type { %_type.0, %_type.0* }
%functionDescriptor.0 = type { i64 }
%FuncType.0 = type { %_type.0, i8, %IPST.10, %IPST.10 }
%IPST.10 = type { %_type.0**, i64, i64 }
%error.0 = type { { %_type.0*, { i8*, i64 } (i8*, i8*)* }*, i8* }

$uintptr..d = comdat any

$uintptr..p = comdat any

$gcbits..ba = comdat any

$int..d = comdat any

$int..p = comdat any

$type..func_8_2int_9_8_9 = comdat any

@uintptr..d = weak constant %_type.0 { i64 8, i64 0, i32 -1488193301, i8 8, i8 8, i8 8, i8 -116, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C1, %uncommonType.0* @go..C4, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @uintptr..p, i32 0, i32 0) }, comdat
@runtime.memequal64..f = external constant %functionDescriptor.0
@const.0 = private constant [8 x i8] c"uintptr\00", align 1
@go..C1 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @const.0, i32 0, i32 0), i64 7 }
@go..C2 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @const.0, i32 0, i32 0), i64 7 }
@go..C3 = internal constant [1 x %method.0] zeroinitializer
@go..C4 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C2, { i8*, i64 }* null, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C3, i32 0, i32 0), i64 0, i64 0 } }
@uintptr..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1958710969, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C5, %uncommonType.0* null, %_type.0* null }, %_type.0* @uintptr..d }, comdat
@gcbits..ba = weak constant [1 x i8] c"\01", comdat
@const.1 = private constant [9 x i8] c"*uintptr\00", align 1
@go..C5 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @const.1, i32 0, i32 0), i64 8 }
@const.2 = private constant [6 x i8] c"0x%x\0A\00", align 1
@int..d = weak constant %_type.0 { i64 8, i64 0, i32 876704034, i8 8, i8 8, i8 8, i8 -126, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C6, %uncommonType.0* @go..C9, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0) }, comdat
@const.4 = private constant [4 x i8] c"int\00", align 1
@go..C6 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.4, i32 0, i32 0), i64 3 }
@go..C7 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.4, i32 0, i32 0), i64 3 }
@go..C8 = internal constant [1 x %method.0] zeroinitializer
@go..C9 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C7, { i8*, i64 }* null, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C8, i32 0, i32 0), i64 0, i64 0 } }
@int..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1142362665, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C10, %uncommonType.0* null, %_type.0* null }, %_type.0* @int..d }, comdat
@const.5 = private constant [5 x i8] c"*int\00", align 1
@go..C10 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.5, i32 0, i32 0), i64 4 }
@runtime.writeBarrier = external local_unnamed_addr externally_initialized global { i8, [3 x i8], i8, i8, i64 }
@type..func_8_2int_9_8_9 = weak constant %FuncType.0 { %_type.0 { i64 8, i64 8, i32 -2099100376, i8 0, i8 8, i8 8, i8 51, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C11, %uncommonType.0* null, %_type.0* null }, i8 0, %IPST.10 { %_type.0** getelementptr inbounds ([1 x %_type.0*], [1 x %_type.0*]* @go..C12, i32 0, i32 0), i64 1, i64 1 }, %IPST.10 { %_type.0** getelementptr inbounds ([1 x %_type.0*], [1 x %_type.0*]* @go..C13, i32 0, i32 0), i64 0, i64 0 } }, comdat
@const.6 = private constant [11 x i8] c"func(*int)\00", align 1
@go..C11 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @const.6, i32 0, i32 0), i64 10 }
@go..C12 = internal constant [1 x %_type.0*] [%_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0)]
@go..C13 = internal constant [1 x %_type.0*] zeroinitializer
@main.f..func1..f = internal constant %functionDescriptor.0 { i64 ptrtoint (void (i8*, i64*)* @main.f..func1 to i64) }
@const.8 = private constant [31 x i8] c"%x is being garbage collected\0A\00", align 1
@const.10 = private constant [263 x i8] c"0w\AF\0C\92t\08\02A\E1\C1\07\E6\D6\18\E6path\09command-line-arguments\0Abuild\09-compiler=gccgo\0Abuild\09CGO_ENABLED=1\0Abuild\09CGO_CFLAGS=\0Abuild\09CGO_CPPFLAGS=\0Abuild\09CGO_CXXFLAGS=\0Abuild\09CGO_LDFLAGS=\0Abuild\09GOARCH=amd64\0Abuild\09GOEXPERIMENT=fieldtrack\0Abuild\09GOOS=linux\0Abuild\09GOAMD64=v1\0A\F92C1\86\18 r\00\82B\10A\16\D8\F2\00", align 1
@main.main..init0..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (void (i8*)* @main.main..init0 to i64) }
@main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq to i64) }
@main._632_7uintptr..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._632_7uintptr..eq to i64) }
@main._6256_7uint64..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6256_7uint64..eq to i64) }
@main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq to i64) }
@main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq to i64) }
@main._6122_7uintptr..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6122_7uintptr..eq to i64) }
@main._68_7uint64..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._68_7uint64..eq to i64) }
@main._6128_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6128_7uint8..eq to i64) }
@main._64096_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._64096_7uint8..eq to i64) }
@main._668_7uint16..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._668_7uint16..eq to i64) }
@main._633_7float64..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._633_7float64..eq to i64) }
@main._665_7uint32..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._665_7uint32..eq to i64) }
@main._64_7uintptr..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._64_7uintptr..eq to i64) }
@main._65_7uint..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._65_7uint..eq to i64) }
@main._6512_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6512_7uint8..eq to i64) }
@main._6249_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6249_7uint8..eq to i64) }
@main._6129_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6129_7uint8..eq to i64) }
@main._632_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._632_7uint8..eq to i64) }
@main._627_7string..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._627_7string..eq to i64) }
@main._61024_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._61024_7uint8..eq to i64) }
@main._62_7int32..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._62_7int32..eq to i64) }
@main._664_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._664_7uint8..eq to i64) }
@main._6256_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6256_7uint8..eq to i64) }
@main..types = constant { i64, [3 x i8*] } { i64 3, [3 x i8*] [i8* bitcast (%PtrType.0* @uintptr..p to i8*), i8* bitcast (%PtrType.0* @int..p to i8*), i8* bitcast (%FuncType.0* @type..func_8_2int_9_8_9 to i8*)] }
@errors..types = external externally_initialized global { i64, [1 x i8*] }
@fmt..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1cpu..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1oserror..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1poll..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1reflectlite..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1testlog..types = external externally_initialized global { i64, [1 x i8*] }
@io..types = external externally_initialized global { i64, [1 x i8*] }
@io_1fs..types = external externally_initialized global { i64, [1 x i8*] }
@math..types = external externally_initialized global { i64, [1 x i8*] }
@os..types = external externally_initialized global { i64, [1 x i8*] }
@path..types = external externally_initialized global { i64, [1 x i8*] }
@reflect..types = external externally_initialized global { i64, [1 x i8*] }
@runtime..types = external externally_initialized global { i64, [1 x i8*] }
@sort..types = external externally_initialized global { i64, [1 x i8*] }
@strconv..types = external externally_initialized global { i64, [1 x i8*] }
@sync..types = external externally_initialized global { i64, [1 x i8*] }
@syscall..types = external externally_initialized global { i64, [1 x i8*] }
@time..types = external externally_initialized global { i64, [1 x i8*] }
@unicode..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1abi..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1bytealg..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1fmtsort..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1goarch..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1goexperiment..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1goos..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1itoa..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1race..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1syscall_1execenv..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1syscall_1unix..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1unsafeheader..types = external externally_initialized global { i64, [1 x i8*] }
@math_1bits..types = external externally_initialized global { i64, [1 x i8*] }
@runtime_1internal_1atomic..types = external externally_initialized global { i64, [1 x i8*] }
@runtime_1internal_1math..types = external externally_initialized global { i64, [1 x i8*] }
@runtime_1internal_1sys..types = external externally_initialized global { i64, [1 x i8*] }
@sync_1atomic..types = external externally_initialized global { i64, [1 x i8*] }
@unicode_1utf8..types = external externally_initialized global { i64, [1 x i8*] }
@go..typelists = internal constant [38 x { i64, [1 x i8*] }*] [{ i64, [1 x i8*] }* @errors..types, { i64, [1 x i8*] }* @fmt..types, { i64, [1 x i8*] }* @internal_1cpu..types, { i64, [1 x i8*] }* @internal_1oserror..types, { i64, [1 x i8*] }* @internal_1poll..types, { i64, [1 x i8*] }* @internal_1reflectlite..types, { i64, [1 x i8*] }* @internal_1testlog..types, { i64, [1 x i8*] }* @io..types, { i64, [1 x i8*] }* @io_1fs..types, { i64, [1 x i8*] }* @math..types, { i64, [1 x i8*] }* @os..types, { i64, [1 x i8*] }* @path..types, { i64, [1 x i8*] }* @reflect..types, { i64, [1 x i8*] }* @runtime..types, { i64, [1 x i8*] }* @sort..types, { i64, [1 x i8*] }* @strconv..types, { i64, [1 x i8*] }* @sync..types, { i64, [1 x i8*] }* @syscall..types, { i64, [1 x i8*] }* @time..types, { i64, [1 x i8*] }* @unicode..types, { i64, [1 x i8*] }* @internal_1abi..types, { i64, [1 x i8*] }* @internal_1bytealg..types, { i64, [1 x i8*] }* @internal_1fmtsort..types, { i64, [1 x i8*] }* @internal_1goarch..types, { i64, [1 x i8*] }* @internal_1goexperiment..types, { i64, [1 x i8*] }* @internal_1goos..types, { i64, [1 x i8*] }* @internal_1itoa..types, { i64, [1 x i8*] }* @internal_1race..types, { i64, [1 x i8*] }* @internal_1syscall_1execenv..types, { i64, [1 x i8*] }* @internal_1syscall_1unix..types, { i64, [1 x i8*] }* @internal_1unsafeheader..types, { i64, [1 x i8*] }* @math_1bits..types, { i64, [1 x i8*] }* @runtime_1internal_1atomic..types, { i64, [1 x i8*] }* @runtime_1internal_1math..types, { i64, [1 x i8*] }* @runtime_1internal_1sys..types, { i64, [1 x i8*] }* @sync_1atomic..types, { i64, [1 x i8*] }* @unicode_1utf8..types, { i64, [1 x i8*] }* bitcast ({ i64, [3 x i8*] }* @main..types to { i64, [1 x i8*] }*)]

define void @main.main..init0(i8* nest nocapture readnone %nest.12) #0 {
entry:
  call void @runtime.setmodinfo(i8* nest undef, i8* getelementptr inbounds ([263 x i8], [263 x i8]* @const.10, i64 0, i64 0), i64 262)
  ret void
}

declare void @runtime.setmodinfo(i8*, i8*, i64) local_unnamed_addr #0

define i8 @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq(i8* nest nocapture readnone %nest.13, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.12 = icmp eq i8* %key1, null
  br i1 %icmp.12, label %then.13, label %else.13, !make.implicit !3

then.13:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.13:                                          ; preds = %entry
  %icmp.13 = icmp eq i8* %key2, null
  br i1 %icmp.13, label %then.14, label %else.14, !make.implicit !3

then.14:                                          ; preds = %else.13
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.14:                                          ; preds = %else.13
  %tmpv.32.sroa.0.0.cast.69.sroa_idx = bitcast i8* %key1 to i64*
  %tmpv.32.sroa.0.0.copyload = load i64, i64* %tmpv.32.sroa.0.0.cast.69.sroa_idx, align 8
  %tmpv.33.sroa.0.0.cast.74.sroa_idx = bitcast i8* %key2 to i64*
  %tmpv.33.sroa.0.0.copyload = load i64, i64* %tmpv.33.sroa.0.0.cast.74.sroa_idx, align 8
  %icmp.14.not = icmp eq i64 %tmpv.32.sroa.0.0.copyload, %tmpv.33.sroa.0.0.copyload
  br i1 %icmp.14.not, label %else.17, label %common.ret

common.ret:                                       ; preds = %else.17, %else.14
  %common.ret.op = phi i8 [ 0, %else.14 ], [ %., %else.17 ]
  ret i8 %common.ret.op

else.17:                                          ; preds = %else.14
  %field.25 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.25 to i32*
  %.field.ld.0 = load i32, i32* %0, align 4
  %field.26 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.26 to i32*
  %.field.ld.1 = load i32, i32* %1, align 4
  %icmp.18.not = icmp eq i32 %.field.ld.0, %.field.ld.1
  %. = zext i1 %icmp.18.not to i8
  br label %common.ret
}

; Function Attrs: noreturn
declare void @runtime.panicmem(i8*) local_unnamed_addr #1

; Function Attrs: nofree readonly
define i8 @main._632_7uintptr..eq(i8* nest nocapture readnone %nest.14, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.11 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.11
}

; Function Attrs: argmemonly nofree readonly
declare i8 @runtime.memequal(i8*, i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nofree readonly
define i8 @main._6256_7uint64..eq(i8* nest nocapture readnone %nest.15, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.12 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 2048)
  ret i8 %call.12
}

define i8 @main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.16, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.79 = bitcast i8* %key1 to [61 x { i32, i64, i64 }]*
  %cast.80 = bitcast i8* %key2 to [61 x { i32, i64, i64 }]*
  %icmp.21 = icmp eq i8* %key1, null
  br i1 %icmp.21, label %then.21.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.24 = icmp eq i8* %key2, null
  br i1 %icmp.24, label %then.23.split, label %then.27, !make.implicit !3

label.0:                                          ; preds = %then.27
  %add.0 = add nuw nsw i64 %tmpv.46.018, 1
  %exitcond.not = icmp eq i64 %add.0, 61
  br i1 %exitcond.not, label %common.ret, label %then.27

then.21.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.23.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.27, %label.0
  %common.ret.op = phi i8 [ 0, %then.27 ], [ 1, %label.0 ]
  ret i8 %common.ret.op

then.27:                                          ; preds = %label.0, %entry.split
  %tmpv.46.018 = phi i64 [ %add.0, %label.0 ], [ 0, %entry.split ]
  %tmpv.48.sroa.4.0.cast.83.sroa_idx7 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.79, i64 0, i64 %tmpv.46.018, i32 2
  %tmpv.48.sroa.4.0.copyload = load i64, i64* %tmpv.48.sroa.4.0.cast.83.sroa_idx7, align 8
  %tmpv.48.sroa.3.0.cast.83.sroa_idx6 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.79, i64 0, i64 %tmpv.46.018, i32 1
  %tmpv.48.sroa.3.0.copyload = load i64, i64* %tmpv.48.sroa.3.0.cast.83.sroa_idx6, align 8
  %tmpv.48.sroa.0.0.cast.83.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.79, i64 0, i64 %tmpv.46.018, i32 0
  %tmpv.48.sroa.0.0.copyload = load i32, i32* %tmpv.48.sroa.0.0.cast.83.sroa_idx, align 8
  %tmpv.49.sroa.0.0.cast.88.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.80, i64 0, i64 %tmpv.46.018, i32 0
  %tmpv.49.sroa.0.0.copyload = load i32, i32* %tmpv.49.sroa.0.0.cast.88.sroa_idx, align 8
  %tmpv.49.sroa.3.0.cast.88.sroa_idx4 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.80, i64 0, i64 %tmpv.46.018, i32 1
  %tmpv.49.sroa.3.0.copyload = load i64, i64* %tmpv.49.sroa.3.0.cast.88.sroa_idx4, align 8
  %tmpv.49.sroa.4.0.cast.88.sroa_idx5 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.80, i64 0, i64 %tmpv.46.018, i32 2
  %tmpv.49.sroa.4.0.copyload = load i64, i64* %tmpv.49.sroa.4.0.cast.88.sroa_idx5, align 8
  %icmp.25 = icmp eq i32 %tmpv.48.sroa.0.0.copyload, %tmpv.49.sroa.0.0.copyload
  %icmp.26 = icmp eq i64 %tmpv.48.sroa.3.0.copyload, %tmpv.49.sroa.3.0.copyload
  %tmpv.55.0.in = select i1 %icmp.25, i1 %icmp.26, i1 false
  %icmp.27 = icmp eq i64 %tmpv.48.sroa.4.0.copyload, %tmpv.49.sroa.4.0.copyload
  %tmpv.56.0.in = select i1 %tmpv.55.0.in, i1 %icmp.27, i1 false
  br i1 %tmpv.56.0.in, label %label.0, label %common.ret
}

define i8 @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.17, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.30 = icmp eq i8* %key1, null
  br i1 %icmp.30, label %then.28, label %else.28, !make.implicit !3

then.28:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.28:                                          ; preds = %entry
  %icmp.31 = icmp eq i8* %key2, null
  br i1 %icmp.31, label %then.29, label %else.29, !make.implicit !3

then.29:                                          ; preds = %else.28
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.29:                                          ; preds = %else.28
  %field.33 = bitcast i8* %key1 to i32*
  %.field.ld.2 = load i32, i32* %field.33, align 4
  %field.34 = bitcast i8* %key2 to i32*
  %.field.ld.3 = load i32, i32* %field.34, align 4
  %icmp.32.not = icmp eq i32 %.field.ld.2, %.field.ld.3
  br i1 %icmp.32.not, label %else.32, label %common.ret

common.ret:                                       ; preds = %else.35, %else.32, %else.29
  %common.ret.op = phi i8 [ 0, %else.29 ], [ 0, %else.32 ], [ %., %else.35 ]
  ret i8 %common.ret.op

else.32:                                          ; preds = %else.29
  %field.35 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.35 to i64*
  %.field.ld.4 = load i64, i64* %0, align 8
  %field.36 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.36 to i64*
  %.field.ld.5 = load i64, i64* %1, align 8
  %icmp.35.not = icmp eq i64 %.field.ld.4, %.field.ld.5
  br i1 %icmp.35.not, label %else.35, label %common.ret

else.35:                                          ; preds = %else.32
  %field.37 = getelementptr inbounds i8, i8* %key1, i64 16
  %2 = bitcast i8* %field.37 to i64*
  %.field.ld.6 = load i64, i64* %2, align 8
  %field.38 = getelementptr inbounds i8, i8* %key2, i64 16
  %3 = bitcast i8* %field.38 to i64*
  %.field.ld.7 = load i64, i64* %3, align 8
  %icmp.38.not = icmp eq i64 %.field.ld.6, %.field.ld.7
  %. = zext i1 %icmp.38.not to i8
  br label %common.ret
}

; Function Attrs: nofree readonly
define i8 @main._6122_7uintptr..eq(i8* nest nocapture readnone %nest.18, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.13 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 976)
  ret i8 %call.13
}

; Function Attrs: nofree readonly
define i8 @main._68_7uint64..eq(i8* nest nocapture readnone %nest.19, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.14 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.14
}

; Function Attrs: nofree readonly
define i8 @main._6128_7uint8..eq(i8* nest nocapture readnone %nest.20, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.15 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 128)
  ret i8 %call.15
}

; Function Attrs: nofree readonly
define i8 @main._64096_7uint8..eq(i8* nest nocapture readnone %nest.21, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.16 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 4096)
  ret i8 %call.16
}

; Function Attrs: nofree readonly
define i8 @main._668_7uint16..eq(i8* nest nocapture readnone %nest.22, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.17 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 136)
  ret i8 %call.17
}

define i8 @main._633_7float64..eq(i8* nest nocapture readnone %nest.23, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.99 = bitcast i8* %key1 to [33 x double]*
  %cast.100 = bitcast i8* %key2 to [33 x double]*
  %icmp.43 = icmp eq i8* %key1, null
  br i1 %icmp.43, label %then.39.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.44 = icmp eq i8* %key2, null
  br i1 %icmp.44, label %then.40.split, label %then.42, !make.implicit !3

label.0:                                          ; preds = %then.42
  %add.1 = add nuw nsw i64 %tmpv.73.011, 1
  %index.5.1 = getelementptr [33 x double], [33 x double]* %cast.99, i64 0, i64 %add.1
  %.index.ld.0.1 = load double, double* %index.5.1, align 8
  %index.6.1 = getelementptr [33 x double], [33 x double]* %cast.100, i64 0, i64 %add.1
  %.index.ld.1.1 = load double, double* %index.6.1, align 8
  %fcmp.0.1 = fcmp une double %.index.ld.0.1, %.index.ld.1.1
  br i1 %fcmp.0.1, label %common.ret, label %label.0.1

label.0.1:                                        ; preds = %label.0
  %add.1.1 = add nuw nsw i64 %tmpv.73.011, 2
  %index.5.2 = getelementptr [33 x double], [33 x double]* %cast.99, i64 0, i64 %add.1.1
  %.index.ld.0.2 = load double, double* %index.5.2, align 8
  %index.6.2 = getelementptr [33 x double], [33 x double]* %cast.100, i64 0, i64 %add.1.1
  %.index.ld.1.2 = load double, double* %index.6.2, align 8
  %fcmp.0.2 = fcmp une double %.index.ld.0.2, %.index.ld.1.2
  br i1 %fcmp.0.2, label %common.ret, label %label.0.2

label.0.2:                                        ; preds = %label.0.1
  %add.1.2 = add nuw nsw i64 %tmpv.73.011, 3
  %exitcond.not.2 = icmp eq i64 %add.1.2, 33
  br i1 %exitcond.not.2, label %common.ret, label %then.42

then.39.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.40.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.42, %label.0.2, %label.0.1, %label.0
  %common.ret.op = phi i8 [ 0, %then.42 ], [ 0, %label.0 ], [ 0, %label.0.1 ], [ 1, %label.0.2 ]
  ret i8 %common.ret.op

then.42:                                          ; preds = %label.0.2, %entry.split
  %tmpv.73.011 = phi i64 [ %add.1.2, %label.0.2 ], [ 0, %entry.split ]
  %index.5 = getelementptr [33 x double], [33 x double]* %cast.99, i64 0, i64 %tmpv.73.011
  %.index.ld.0 = load double, double* %index.5, align 8
  %index.6 = getelementptr [33 x double], [33 x double]* %cast.100, i64 0, i64 %tmpv.73.011
  %.index.ld.1 = load double, double* %index.6, align 8
  %fcmp.0 = fcmp une double %.index.ld.0, %.index.ld.1
  br i1 %fcmp.0, label %common.ret, label %label.0
}

; Function Attrs: nofree readonly
define i8 @main._665_7uint32..eq(i8* nest nocapture readnone %nest.24, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.18 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 260)
  ret i8 %call.18
}

; Function Attrs: nofree readonly
define i8 @main._64_7uintptr..eq(i8* nest nocapture readnone %nest.25, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.19 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.19
}

; Function Attrs: nofree readonly
define i8 @main._65_7uint..eq(i8* nest nocapture readnone %nest.26, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.20 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 40)
  ret i8 %call.20
}

; Function Attrs: nofree readonly
define i8 @main._6512_7uint8..eq(i8* nest nocapture readnone %nest.27, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.21 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 512)
  ret i8 %call.21
}

; Function Attrs: nofree readonly
define i8 @main._6249_7uint8..eq(i8* nest nocapture readnone %nest.28, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.22 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 249)
  ret i8 %call.22
}

; Function Attrs: nofree readonly
define i8 @main._6129_7uint8..eq(i8* nest nocapture readnone %nest.29, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.23 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 129)
  ret i8 %call.23
}

; Function Attrs: nofree readonly
define i8 @main._632_7uint8..eq(i8* nest nocapture readnone %nest.30, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.24 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.24
}

define i8 @main._627_7string..eq(i8* nest nocapture readnone %nest.31, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.103 = bitcast i8* %key1 to [27 x { i8*, i64 }]*
  %cast.104 = bitcast i8* %key2 to [27 x { i8*, i64 }]*
  %icmp.50 = icmp eq i8* %key1, null
  br i1 %icmp.50, label %then.45.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.51 = icmp eq i8* %key2, null
  br i1 %icmp.51, label %then.46.split, label %then.50, !make.implicit !3

then.45.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.46.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.47:                                          ; preds = %then.50
  %icmp.53 = icmp eq i8* %tmpv.89.sroa.0.0.copyload, %tmpv.91.sroa.0.0.copyload
  br i1 %icmp.53, label %else.49, label %fallthrough.47

fallthrough.47:                                   ; preds = %then.47
  %call.25 = call i32 @memcmp(i8* %tmpv.89.sroa.0.0.copyload, i8* %tmpv.91.sroa.0.0.copyload, i64 %tmpv.89.sroa.3.0.copyload)
  %icmp.54 = icmp eq i32 %call.25, 0
  br i1 %icmp.54, label %else.49, label %common.ret

common.ret:                                       ; preds = %then.50, %else.49, %fallthrough.47
  %common.ret.op = phi i8 [ 0, %fallthrough.47 ], [ 1, %else.49 ], [ 0, %then.50 ]
  ret i8 %common.ret.op

else.49:                                          ; preds = %fallthrough.47, %then.47
  %add.2 = add nuw nsw i64 %tmpv.87.019, 1
  %exitcond.not = icmp eq i64 %add.2, 27
  br i1 %exitcond.not, label %common.ret, label %then.50

then.50:                                          ; preds = %else.49, %entry.split
  %tmpv.87.019 = phi i64 [ %add.2, %else.49 ], [ 0, %entry.split ]
  %tmpv.89.sroa.0.0.cast.107.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.103, i64 0, i64 %tmpv.87.019, i32 0
  %tmpv.89.sroa.0.0.copyload = load i8*, i8** %tmpv.89.sroa.0.0.cast.107.sroa_idx, align 8
  %tmpv.89.sroa.3.0.cast.107.sroa_idx3 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.103, i64 0, i64 %tmpv.87.019, i32 1
  %tmpv.89.sroa.3.0.copyload = load i64, i64* %tmpv.89.sroa.3.0.cast.107.sroa_idx3, align 8
  %tmpv.91.sroa.0.0.cast.110.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.104, i64 0, i64 %tmpv.87.019, i32 0
  %tmpv.91.sroa.0.0.copyload = load i8*, i8** %tmpv.91.sroa.0.0.cast.110.sroa_idx, align 8
  %tmpv.91.sroa.3.0.cast.110.sroa_idx1 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.104, i64 0, i64 %tmpv.87.019, i32 1
  %tmpv.91.sroa.3.0.copyload = load i64, i64* %tmpv.91.sroa.3.0.cast.110.sroa_idx1, align 8
  %icmp.52 = icmp eq i64 %tmpv.89.sroa.3.0.copyload, %tmpv.91.sroa.3.0.copyload
  br i1 %icmp.52, label %then.47, label %common.ret
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nofree readonly
define i8 @main._61024_7uint8..eq(i8* nest nocapture readnone %nest.32, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.26 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 1024)
  ret i8 %call.26
}

; Function Attrs: nofree readonly
define i8 @main._62_7int32..eq(i8* nest nocapture readnone %nest.33, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.27 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 8)
  ret i8 %call.27
}

; Function Attrs: nofree readonly
define i8 @main._664_7uint8..eq(i8* nest nocapture readnone %nest.34, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.28 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.28
}

; Function Attrs: nofree readonly
define i8 @main._6256_7uint8..eq(i8* nest nocapture readnone %nest.35, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.29 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.29
}

define void @__go_init_main(i8* nest nocapture readnone %nest.36) local_unnamed_addr #0 {
entry:
  call void @runtime.registerTypeDescriptors(i8* nest undef, i64 38, i8* bitcast ([38 x { i64, [1 x i8*] }*]* @go..typelists to i8*))
  call void @internal_1cpu..import(i8* nest undef)
  call void @unicode..import(i8* nest undef)
  call void @math..import(i8* nest undef)
  call void @runtime..import(i8* nest undef)
  call void @internal_1reflectlite..import(i8* nest undef)
  call void @sync..import(i8* nest undef)
  call void @errors..import(i8* nest undef)
  call void @sort..import(i8* nest undef)
  call void @internal_1testlog..import(i8* nest undef)
  call void @io..import(i8* nest undef)
  call void @internal_1oserror..import(i8* nest undef)
  call void @path..import(i8* nest undef)
  call void @strconv..import(i8* nest undef)
  call void @reflect..import(i8* nest undef)
  call void @syscall..import(i8* nest undef)
  call void @time..import(i8* nest undef)
  call void @io_1fs..import(i8* nest undef)
  call void @internal_1poll..import(i8* nest undef)
  call void @os..import(i8* nest undef)
  call void @fmt..import(i8* nest undef)
  call void @main.main..init0(i8* nest undef)
  ret void
}

declare void @runtime.registerTypeDescriptors(i8*, i64, i8*) local_unnamed_addr #0

declare void @internal_1cpu..import(i8*) local_unnamed_addr #0

declare void @unicode..import(i8*) local_unnamed_addr #0

declare void @math..import(i8*) local_unnamed_addr #0

declare void @runtime..import(i8*) local_unnamed_addr #0

declare void @internal_1reflectlite..import(i8*) local_unnamed_addr #0

declare void @sync..import(i8*) local_unnamed_addr #0

declare void @errors..import(i8*) local_unnamed_addr #0

declare void @sort..import(i8*) local_unnamed_addr #0

declare void @internal_1testlog..import(i8*) local_unnamed_addr #0

declare void @io..import(i8*) local_unnamed_addr #0

declare void @internal_1oserror..import(i8*) local_unnamed_addr #0

declare void @path..import(i8*) local_unnamed_addr #0

declare void @strconv..import(i8*) local_unnamed_addr #0

declare void @reflect..import(i8*) local_unnamed_addr #0

declare void @syscall..import(i8*) local_unnamed_addr #0

declare void @time..import(i8*) local_unnamed_addr #0

declare void @io_1fs..import(i8*) local_unnamed_addr #0

declare void @internal_1poll..import(i8*) local_unnamed_addr #0

declare void @os..import(i8*) local_unnamed_addr #0

declare void @fmt..import(i8*) local_unnamed_addr #0

define void @main.main(i8* nest nocapture readnone %nest.4) local_unnamed_addr #0 {
entry:
  call void @main.heap(i8* nest undef)
  call void @main.stack(i8* nest undef)
  ret void
}

define void @main.heap(i8* nest nocapture readnone %nest.5) local_unnamed_addr #0 {
entry:
  %tmp.1 = alloca { { %_type.0*, i8* }*, i64, i64 }, align 8
  %tmpv.8 = alloca [1 x { %_type.0*, i8* }], align 8
  %sret.actual.0 = alloca { i64, %error.0 }, align 8
  %call.4.i = call i64 @main.f(i8* nest undef)
  call void @runtime.GC(i8* nest undef)
  call void @runtime.GC(i8* nest undef)
  %call.3 = call i8* @runtime.newobject(i8* nest undef, %_type.0* nonnull @uintptr..d)
  %cast.9 = bitcast i8* %call.3 to i64*
  store i64 %call.4.i, i64* %cast.9, align 8
  %tmp.0.sroa.0.0.cast.11.sroa_idx = getelementptr inbounds [1 x { %_type.0*, i8* }], [1 x { %_type.0*, i8* }]* %tmpv.8, i64 0, i64 0, i32 0
  store %_type.0* @uintptr..d, %_type.0** %tmp.0.sroa.0.0.cast.11.sroa_idx, align 8
  %tmp.0.sroa.2.0.cast.11.sroa_idx4 = getelementptr inbounds [1 x { %_type.0*, i8* }], [1 x { %_type.0*, i8* }]* %tmpv.8, i64 0, i64 0, i32 1
  store i8* %call.3, i8** %tmp.0.sroa.2.0.cast.11.sroa_idx4, align 8
  %cast.13 = getelementptr inbounds [1 x { %_type.0*, i8* }], [1 x { %_type.0*, i8* }]* %tmpv.8, i64 0, i64 0
  %field.6 = getelementptr inbounds { { %_type.0*, i8* }*, i64, i64 }, { { %_type.0*, i8* }*, i64, i64 }* %tmp.1, i64 0, i32 0
  store { %_type.0*, i8* }* %cast.13, { %_type.0*, i8* }** %field.6, align 8
  %field.7 = getelementptr inbounds { { %_type.0*, i8* }*, i64, i64 }, { { %_type.0*, i8* }*, i64, i64 }* %tmp.1, i64 0, i32 1
  %0 = bitcast i64* %field.7 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %0, align 8
  call void @fmt.Printf({ i64, %error.0 }* nonnull sret({ i64, %error.0 }) "go_sret" %sret.actual.0, i8* nest undef, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @const.2, i64 0, i64 0), i64 5, { { %_type.0*, i8* }*, i64, i64 }* nonnull byval({ { %_type.0*, i8* }*, i64, i64 }) %tmp.1)
  %cast.17 = inttoptr i64 %call.4.i to i64*
  %icmp.4 = icmp eq i64 %call.4.i, 0
  br i1 %icmp.4, label %then.4, label %else.4, !make.implicit !3

then.4:                                           ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.4:                                           ; preds = %entry
  %itpcast.0 = inttoptr i64 %call.4.i to i8*
  store i64 2, i64* %cast.17, align 8
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printpointer(i8* nest undef, i8* nonnull %itpcast.0)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  %.ld.6 = load i64, i64* %cast.17, align 8
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printint(i8* nest undef, i64 %.ld.6)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  ret void
}

define void @main.stack(i8* nest nocapture readnone %nest.9) local_unnamed_addr #0 {
entry:
  %tmp.6 = alloca { { %_type.0*, i8* }*, i64, i64 }, align 8
  %tmpv.20 = alloca [1 x { %_type.0*, i8* }], align 8
  %sret.actual.2 = alloca { i64, %error.0 }, align 8
  %call.7 = call fastcc i64 @main.foo()
  %call.8 = call i8* @runtime.newobject(i8* nest undef, %_type.0* nonnull @uintptr..d)
  %cast.45 = bitcast i8* %call.8 to i64*
  store i64 %call.7, i64* %cast.45, align 8
  %tmp.5.sroa.0.0.cast.47.sroa_idx = getelementptr inbounds [1 x { %_type.0*, i8* }], [1 x { %_type.0*, i8* }]* %tmpv.20, i64 0, i64 0, i32 0
  store %_type.0* @uintptr..d, %_type.0** %tmp.5.sroa.0.0.cast.47.sroa_idx, align 8
  %tmp.5.sroa.2.0.cast.47.sroa_idx4 = getelementptr inbounds [1 x { %_type.0*, i8* }], [1 x { %_type.0*, i8* }]* %tmpv.20, i64 0, i64 0, i32 1
  store i8* %call.8, i8** %tmp.5.sroa.2.0.cast.47.sroa_idx4, align 8
  %cast.49 = getelementptr inbounds [1 x { %_type.0*, i8* }], [1 x { %_type.0*, i8* }]* %tmpv.20, i64 0, i64 0
  %field.18 = getelementptr inbounds { { %_type.0*, i8* }*, i64, i64 }, { { %_type.0*, i8* }*, i64, i64 }* %tmp.6, i64 0, i32 0
  store { %_type.0*, i8* }* %cast.49, { %_type.0*, i8* }** %field.18, align 8
  %field.19 = getelementptr inbounds { { %_type.0*, i8* }*, i64, i64 }, { { %_type.0*, i8* }*, i64, i64 }* %tmp.6, i64 0, i32 1
  %0 = bitcast i64* %field.19 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %0, align 8
  call void @fmt.Printf({ i64, %error.0 }* nonnull sret({ i64, %error.0 }) "go_sret" %sret.actual.2, i8* nest undef, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @const.2, i64 0, i64 0), i64 5, { { %_type.0*, i8* }*, i64, i64 }* nonnull byval({ { %_type.0*, i8* }*, i64, i64 }) %tmp.6)
  %cast.53 = inttoptr i64 %call.7 to i64*
  %icmp.8 = icmp eq i64 %call.7, 0
  br i1 %icmp.8, label %then.8, label %else.8, !make.implicit !3

then.8:                                           ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.8:                                           ; preds = %entry
  %itpcast.1 = inttoptr i64 %call.7 to i8*
  store i64 2, i64* %cast.53, align 8
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printpointer(i8* nest undef, i8* nonnull %itpcast.1)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  %.ld.10 = load i64, i64* %cast.53, align 8
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printint(i8* nest undef, i64 %.ld.10)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  ret void
}

; Function Attrs: noinline
define internal fastcc i64 @main.foo() unnamed_addr #5 {
entry:
  %a = alloca i64, align 8, !go_addrtaken !3
  %0 = bitcast i64* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0)
  store i64 1, i64* %a, align 8
  %pticast.3 = ptrtoint i64* %a to i64
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printpointer(i8* nest undef, i8* nonnull %0)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0)
  ret i64 %pticast.3
}

declare noalias nonnull i8* @runtime.newobject(i8*, %_type.0*) local_unnamed_addr #0

declare void @fmt.Printf({ i64, %error.0 }*, i8*, i8*, i64, { { %_type.0*, i8* }*, i64, i64 }*) local_unnamed_addr #0

declare void @runtime.printlock(i8*) local_unnamed_addr #0

declare void @runtime.printpointer(i8*, i8*) local_unnamed_addr #0

declare void @runtime.printnl(i8*) local_unnamed_addr #0

declare void @runtime.printunlock(i8*) local_unnamed_addr #0

declare void @runtime.printint(i8*, i64) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noinline
define i64 @main.f(i8* nest nocapture readnone %nest.7) local_unnamed_addr #5 {
entry:
  %call.5 = call i8* @runtime.newobject(i8* nest undef, %_type.0* nonnull @int..d)
  %call.9.i = call i8* @runtime.newobject(i8* nest undef, %_type.0* nonnull @int..d)
  %cast.57.i = bitcast i8* %call.9.i to i64*
  store i64 1, i64* %cast.57.i, align 8
  %call.10.i = call i8* @runtime.newobject(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0))
  %deref.ld.1.i = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.11.i = icmp eq i32 %deref.ld.1.i, 0
  br i1 %icmp.11.i, label %else.7, label %main.ptr.exit

main.ptr.exit:                                    ; preds = %entry
  %pticast.4.i = ptrtoint i8* %call.9.i to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %call.10.i, i64 %pticast.4.i)
  %deref.ld.0.pr = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.7 = icmp eq i32 %deref.ld.0.pr, 0
  br i1 %icmp.7, label %else.7, label %else.6

fallthrough.6:                                    ; preds = %else.7, %else.6
  %pticast.2.pre-phi = phi i64 [ %pticast.0, %else.6 ], [ %.pre, %else.7 ]
  call void @runtime.SetFinalizer(i8* nest undef, i8* bitcast (%PtrType.0* @int..p to i8*), i8* nonnull %call.5, i8* bitcast (%FuncType.0* @type..func_8_2int_9_8_9 to i8*), i8* bitcast (%functionDescriptor.0* @main.f..func1..f to i8*))
  ret i64 %pticast.2.pre-phi

else.6:                                           ; preds = %main.ptr.exit
  %pticast.0 = ptrtoint i8* %call.5 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %call.10.i, i64 %pticast.0)
  br label %fallthrough.6

else.7:                                           ; preds = %main.ptr.exit, %entry
  %.pre-phi = bitcast i8* %call.10.i to i8**
  store i8* %call.5, i8** %.pre-phi, align 8
  %.pre = ptrtoint i8* %call.5 to i64
  br label %fallthrough.6
}

declare void @runtime.GC(i8*) local_unnamed_addr #0

; Function Attrs: cold
declare void @runtime.gcWriteBarrier(i8*, i8*, i64) local_unnamed_addr #7

declare void @runtime.SetFinalizer(i8*, i8*, i8*, i8*, i8*) local_unnamed_addr #0

define internal void @main.f..func1(i8* nest nocapture readnone %nest.8, i64* %o) #0 {
entry:
  %tmp.4 = alloca { { %_type.0*, i8* }*, i64, i64 }, align 8
  %tmpv.17 = alloca [1 x { %_type.0*, i8* }], align 8
  %sret.actual.1 = alloca { i64, %error.0 }, align 8
  %tmp.3.sroa.0.0.cast.39.sroa_idx = getelementptr inbounds [1 x { %_type.0*, i8* }], [1 x { %_type.0*, i8* }]* %tmpv.17, i64 0, i64 0, i32 0
  store %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0), %_type.0** %tmp.3.sroa.0.0.cast.39.sroa_idx, align 8
  %tmp.3.sroa.2.0.cast.39.sroa_idx1 = getelementptr inbounds [1 x { %_type.0*, i8* }], [1 x { %_type.0*, i8* }]* %tmpv.17, i64 0, i64 0, i32 1
  %0 = bitcast i8** %tmp.3.sroa.2.0.cast.39.sroa_idx1 to i64**
  store i64* %o, i64** %0, align 8
  %cast.41 = getelementptr inbounds [1 x { %_type.0*, i8* }], [1 x { %_type.0*, i8* }]* %tmpv.17, i64 0, i64 0
  %field.13 = getelementptr inbounds { { %_type.0*, i8* }*, i64, i64 }, { { %_type.0*, i8* }*, i64, i64 }* %tmp.4, i64 0, i32 0
  store { %_type.0*, i8* }* %cast.41, { %_type.0*, i8* }** %field.13, align 8
  %field.14 = getelementptr inbounds { { %_type.0*, i8* }*, i64, i64 }, { { %_type.0*, i8* }*, i64, i64 }* %tmp.4, i64 0, i32 1
  %1 = bitcast i64* %field.14 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %1, align 8
  call void @fmt.Printf({ i64, %error.0 }* nonnull sret({ i64, %error.0 }) "go_sret" %sret.actual.1, i8* nest undef, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @const.8, i64 0, i64 0), i64 30, { { %_type.0*, i8* }*, i64, i64 }* nonnull byval({ { %_type.0*, i8* }*, i64, i64 }) %tmp.4)
  ret void
}

attributes #0 = { "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { noreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { nofree readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { argmemonly nofree readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #5 = { noinline "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { cold "disable-tail-calls"="true" "frame-pointer"="none" "gc-leaf-function" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 0}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{}
