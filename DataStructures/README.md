A linked list is a sequence of data items, just like an array. But where an array allocates a big block of memory to store the objects, the elements in a linked list are totally separate objects in memory and are connected through links:

+--------+    +--------+    +--------+    +--------+
|        |    |        |    |        |    |        |
| node 0 |--->| node 1 |--->| node 2 |--->| node 3 |
|        |    |        |    |        |    |        |
+--------+    +--------+    +--------+    +--------+
The elements of a linked list are referred to as nodes. The above picture shows a singly linked list, where each node only has a reference -- or a "pointer" -- to the next node. In a doubly linked list, shown below, nodes also have pointers to the previous node:

+--------+    +--------+    +--------+    +--------+
|        |--->|        |--->|        |--->|        |
| node 0 |    | node 1 |    | node 2 |    | node 3 |
|        |<---|        |<---|        |<---|        |
+--------+    +--------+    +--------+    +--------+
You need to keep track of where the list begins. That's usually done with a pointer called the head:

         +--------+    +--------+    +--------+    +--------+
head --->|        |--->|        |--->|        |--->|        |---> nil
         | node 0 |    | node 1 |    | node 2 |    | node 3 |
 nil <---|        |<---|        |<---|        |<---|        |<--- tail
         +--------+    +--------+    +--------+    +--------+
It's also useful to have a reference to the end of the list, known as the tail. Note that the "next" pointer of the last node is nil, just like the "previous" pointer of the very first node.