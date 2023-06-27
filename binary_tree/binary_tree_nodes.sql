You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.


The BST table is defined as follows:

Column Type
N INT
P INT


Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:
- Root: If node is root node.
- Leaf: If node is leaf node.
- Inner: If node is neither root nor leaf node.


Sample Input

BST table:

N  P
1 2
3 2
6 8
9 8
2 5
8 5
5 null


Sample Output

1 Leaf
2 Inner
3 Leaf
5 Root
6 Leaf
8 Inner
9 Leaf


Explanation

The Binary Tree below illustrates the sample:

            5
          /   \
        2       8
       / \     / \
      1   3   6   9


Node '5' is root node, because its parent is NULL and it has child node '2' and '8'.
Node '2' is inner node, because it has parent node '5' and child node '1' and '3'.
Node '8' is inner node, because it has parent node '5' and child node '6' and '9'.
Node '1' is leaf node, because it has parent node '2' and no child node.
Node '3' is leaf node, because it has parent node '2' and no child node.
Node '6' is leaf node, because it has parent node '8' and no child node.
Node '9' is leaf node, because it has parent node '8' and no child node.


SOLUTION(S)
-------------------------------------------------------------------------------

SELECT N, CASE WHEN P IS NULL THEN 'Root' WHEN N IN (SELECT P FROM BST) THEN 'Inner' ELSE 'Leaf' END AS Type FROM BST ORDER BY N;