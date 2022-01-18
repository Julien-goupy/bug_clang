# bug_clang
Small repo to showcase a bug, most likely in the class from template lookup. (Linux x86, clang++12)

# Compiler:
Ubuntu clang version 12.0.1-++20211102090516+fed41342a82f-1~exp1~20211102211019.11
Target: x86_64-pc-linux-gnu
Thread model: posix
InstalledDir: /usr/bin
Found candidate GCC installation: /usr/bin/../lib/gcc/i686-linux-gnu/8
Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/7
Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0
Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/8
Found candidate GCC installation: /usr/lib/gcc/i686-linux-gnu/8
Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/7
Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/7.5.0
Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/8
Selected GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/8
Candidate multilib: .;@m64
Selected multilib: .;@m64

# Bug description
Template selection does not work if 2 structs have the same name in different .cpp
