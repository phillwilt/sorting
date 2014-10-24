# Data Structures and Algorthms in Ruby

## Sorting Algs in Ruby


Using Ruby's open classes to add various sorting algorithms to the array class.

Insertion Sort Benchmark (n = 50,000)

```
Sorted Time:
  0.000000   0.000000   0.000000 (  0.006570)
Reverse Time:
184.290000   0.100000 184.390000 (184.496663)
Random Time:
  0.010000   0.000000   0.010000 (  0.011823)
```

Merge Sort Benchmark (n = 1,000,000)

```
Sorted Time:
  2.690000   0.020000   2.710000 (  2.703839)
Reverse Time:
  2.820000   0.020000   2.840000 (  2.837748)
Random Time:
  4.810000   0.040000   4.850000 (  4.840392)
```

Quick Sort Benchmark (n = 1,000,000)

```
Sorted Time:
  4.220000   0.080000   4.300000 (  4.305171)
Reverse Time:
  4.200000   0.080000   4.280000 (  4.294919)
Random Time:
  4.310000   0.080000   4.390000 (  4.384136)
```

Radix Sort Benchmark (n = 1,000,000)

```
Sorted Time:
  1.260000   0.050000   1.310000 (  1.307335)
Reverse Time:
  1.260000   0.060000   1.320000 (  1.322596)
Random Time:
  1.230000   0.060000   1.290000 (  1.292844)
```
## Linked List

Nothing new under the sun

## Double Linked List

Easier for Queues as it keeps track of head and tail.

## Stack

Stack implementation in Ruby using a linked list

## Queue

Double linked list implementation.

## Hash

Naive hashing alg. Linked List is used for handling collisions. Thanks to @sunny-mittal

Benchmark:

```
Starting to read...
Time:
  1.990000   0.040000   2.030000 (  2.038454)
Finished storing 235886 words
Load: 279
```
