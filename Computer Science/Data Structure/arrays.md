# arrays in application code

## python

### python-origin

In Python, arrays are represented by lists, which are used to store a collection of elements of different data types. Here is a brief overview of arrays in Python:

Python Lists:
In Python, a list is declared using square brackets `[]` and elements are separated by commas. For example, the following code creates a list of integers:

```python
numbers = [1, 2, 3, 4, 5]
```

To access an element in the list, you can use the square bracket notation with the index of the element. For example, to access the second element in the `numbers` list, you can use the following code:

```python
print(numbers[1]) # prints 2
```

You can also modify the elements in the list using the same square bracket notation. For example, to change the value of the third element in the `numbers` list to 10, you can use the following code:

```python
numbers[2] = 10
print(numbers) # prints [1, 2, 10, 4, 5]
```

Python also provides many built-in functions to manipulate lists, such as `len()` to get the length of the list, `append()` to add an element to the end of the list, `insert()` to insert an element at a specific position, and `remove()` to remove an element from the list.

Python Arrays:
In addition to lists, Python also provides an array module that allows you to create arrays of a specific data type. The syntax for creating an array is as follows:

```python
import array

array_name = array.array('data_type', [element1, element2, ...])
```

Here, `data_type` is the type code of the elements that will be stored in the array, and `element1`, `element2`, etc. are the elements themselves. For example, the following code creates an array of integers:

```python
import array

numbers = array.array('i', [1, 2, 3, 4, 5])
```

To access an element in the array, you can use the same square bracket notation as in lists. For example, to access the second element in the `numbers` array, you can use the following code:

```python
print(numbers[1]) # prints 2
```

Note that unlike lists, all the elements in an array must be of the same data type. However, arrays in Python offer more efficient storage and access of data than lists, especially for large amounts of numerical data.

### python-numpy

Sure! Here are some more detailed features of NumPy arrays with examples:

1. Homogeneous Data Type: NumPy arrays have a homogeneous data type, meaning that all elements in an array must be of the same data type, such as integers, floating-point numbers, or complex numbers. This makes them efficient for numerical computations.

```python
import numpy as np

# Create a NumPy array of integers
arr_int = np.array([1, 2, 3, 4, 5])
print(arr_int.dtype)  # int64

# Create a NumPy array of floating-point numbers
arr_float = np.array([1.0, 2.0, 3.0, 4.0, 5.0])
print(arr_float.dtype)  # float64
```

2. Multi-Dimensional: NumPy arrays can be multi-dimensional, meaning that they can have any number of dimensions, including 1D, 2D, or even higher-dimensional arrays.

```python
import numpy as np

# Create a 2D NumPy array
arr_2d = np.array([[1, 2, 3], [4, 5, 6]])
print(arr_2d)
# Output:
# [[1 2 3]
#  [4 5 6]]

# Create a 3D NumPy array
arr_3d = np.array([[[1, 2], [3, 4]], [[5, 6], [7, 8]]])
print(arr_3d)
# Output:
# [[[1 2]
#   [3 4]]

#  [[5 6]
#   [7 8]]]
```

3. Broadcasting: NumPy arrays support broadcasting, which allows arrays of different shapes to be used in arithmetic operations. This can simplify code and improve performance by avoiding the need for explicit loops.

```python
import numpy as np

# Create a 2D NumPy array
arr_2d = np.array([[1, 2, 3], [4, 5, 6]])

# Multiply each element by a scalar
arr_scalar = 2
arr_result = arr_2d * arr_scalar
print(arr_result)
# Output:
# [[ 2  4  6]
#  [ 8 10 12]]

# Add a row vector to each row of the array
arr_row = np.array([10, 20, 30])
arr_result = arr_2d + arr_row
print(arr_result)
# Output:
# [[11 22 33]
#  [14 25 36]]
```

4. Universal Functions: NumPy provides a large collection of universal functions, which are functions that can operate on NumPy arrays element-wise. These functions include mathematical operations, statistical functions, and logical operations.

```python
import numpy as np

# Create a 1D NumPy array
arr = np.array([1, 2, 3, 4, 5])

# Apply a universal function to the array
arr_result = np.square(arr)
print(arr_result)
# Output:
# [ 1  4  9 16 25]

# Compute the mean and standard deviation of the array
arr_mean = np.mean(arr)
arr_std = np.std(arr)
print(arr_mean, arr_std)
# Output:
# 3.0 1.4142135623730951
```

5. Slicing and Indexing: NumPy arrays support advanced indexing and slicing, which allows for efficient access to subsets of an array. This includes the use of boolean masks, integer indexing, and slicing with step sizes.

```python
import numpy as np

# Create a 1D NumPy array
arr = np.array([1, 2, 3, 4, 5])

# Get a subset of the array using slicing
arr_slice = arr[1:4]
print(arr_slice)
# Output:
# [2 3 4]

# Create a boolean mask to filter the array
arr_mask = arr > 3
arr_filtered = arr[arr_mask]
print(arr_filtered)
# Output:
# [4 5]
```

6. Vectorization: NumPy arrays support vectorized operations, meaning that arithmetic operations can be applied to entire arrays at once, rather than looping over each element individually. This can lead to significant performance improvements for large arrays.

```python
import numpy as np

# Create two 1D NumPy arrays
arr1 = np.array([1, 2, 3, 4, 5])
arr2 = np.array([6, 7, 8, 9, 10])

# Add the two arrays element-wise
arr_result = arr1 + arr2
print(arr_result)
# Output:
# [ 7  9 11 13 15]
```

7. Memory Efficiency: NumPy arrays are more memory-efficient than Python lists, as they store data in contiguous blocks of memory, rather than scattered throughout memory.

```python
import numpy as np

# Create a 1D NumPy array and a Python list with the same elements
arr = np.array([1, 2, 3, 4, 5])
lst = [1, 2, 3, 4, 5]

# Print the memory usage of the array and the list
print(arr.nbytes)  # 40 bytes
print(sum(map(arr.itemsize.__mul__, arr.shape))) # 40 bytes
print(lst.__sizeof__())  # 56 bytes
``` 

Overall, NumPy arrays provide a powerful and efficient way to handle large amounts of numerical data in Python, with many features that make them flexible and easy to use in a variety of applications.

## C-codes

Arrays in C and C++ are used to store a collection of elements of the same data type in contiguous memory locations. Here is a brief overview of arrays in C and C++:

C Arrays:
In C, arrays are declared using the following syntax:

```c
data_type array_name[array_size];
```

Here, `data_type` is the data type of the elements that will be stored in the array, `array_name` is the name of the array, and `array_size` is the number of elements that the array will hold. 

For example, the following code declares an integer array of size 5:

```c
int numbers[5];
```

To access an element in the array, you can use the array index, which starts at 0. For example, to assign a value of 10 to the first element in the `numbers` array, you can use the following code:

```c
numbers[0] = 10;
```

C++ Arrays:
In C++, arrays can be declared using the same syntax as in C. However, C++ also provides an alternative syntax for declaring arrays, using the `std::array` container class from the standard library.

```c++
std::array<data_type, array_size> array_name;
```

Here, `data_type` is the data type of the elements in the array, `array_size` is the number of elements in the array, and `array_name` is the name of the array.

For example, the following code declares an integer array of size 5 using the `std::array` container class:

```c++
std::array<int, 5> numbers;
```

To access an element in the array, you can use the same square bracket notation as in C. For example, to assign a value of 10 to the first element in the `numbers` array, you can use the following code:

```c++
numbers[0] = 10;
```

Note that C++ arrays are safer than C arrays because they check the boundaries at compile-time and throw an exception if the index is out of bounds.

# wiki datastructure

This article is about the byte-layout-level structure. For the abstract data type, see [Array (data type)](https://en.wikipedia.org/wiki/Array_(data_type) "Array (data type)").

In [computer science](https://en.wikipedia.org/wiki/Computer_science "Computer science"), an **array** is a [data structure](https://en.wikipedia.org/wiki/Data_structure "Data structure") consisting of a collection of _elements_ ([values](https://en.wikipedia.org/wiki/Value_(computer_science) "Value (computer science)") or [variables](https://en.wikipedia.org/wiki/Variable_(programming) "Variable (programming)")), of same memory size, each identified by at least one _array index_ or _key_. An array is stored such that the position of each element can be computed from its index [tuple](https://en.wikipedia.org/wiki/Tuple "Tuple") by a mathematical formula.<sup id="cite_ref-1"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-1">[1]</a></sup><sup id="cite_ref-andres_2-0"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-andres-2">[2]</a></sup><sup id="cite_ref-garcia_3-0"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-garcia-3">[3]</a></sup> The simplest type of data structure is a linear array, also called one-dimensional array.

For example, an array of ten [32-bit](https://en.wikipedia.org/wiki/32-bit "32-bit") (4-byte) integer variables, with indices 0 through 9, may be stored as ten [words](https://en.wikipedia.org/wiki/Word_(data_type) "Word (data type)") at memory addresses 2000, 2004, 2008, ..., 2036, (in [hexadecimal](https://en.wikipedia.org/wiki/Hexadecimal "Hexadecimal"): `0x7D0`, `0x7D4`, `0x7D8`, ..., `0x7F4`) so that the element with index _i_ has the address 2000 + (_i_ × 4).<sup id="cite_ref-4"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-4">[4]</a></sup> The memory address of the first element of an array is called first address, foundation address, or base address.

Because the mathematical concept of a [matrix](https://en.wikipedia.org/wiki/Matrix_(mathematics) "Matrix (mathematics)") can be represented as a two-dimensional grid, two-dimensional arrays are also sometimes called "matrices". In some cases the term "vector" is used in computing to refer to an array, although [tuples](https://en.wikipedia.org/wiki/Tuple "Tuple") rather than [vectors](https://en.wikipedia.org/wiki/Vector_space "Vector space") are the more mathematically correct equivalent. [Tables](https://en.wikipedia.org/wiki/Table_(information) "Table (information)") are often implemented in the form of arrays, especially [lookup tables](https://en.wikipedia.org/wiki/Lookup_table "Lookup table"); the word "table" is sometimes used as a synonym of array.

Arrays are among the oldest and most important data structures, and are used by almost every program. They are also used to implement many other data structures, such as [lists](https://en.wikipedia.org/wiki/List_(computing) "List (computing)") and [strings](https://en.wikipedia.org/wiki/String_(computer_science) "String (computer science)"). They effectively exploit the addressing logic of computers. In most modern computers and many [external storage](https://en.wikipedia.org/wiki/External_storage "External storage") devices, the memory is a one-dimensional array of words, whose indices are their addresses. [Processors](https://en.wikipedia.org/wiki/Central_processing_unit "Central processing unit"), especially [vector processors](https://en.wikipedia.org/wiki/Vector_processor "Vector processor"), are often optimized for array operations.

Arrays are useful mostly because the element indices can be computed at [run time](https://en.wikipedia.org/wiki/Run_time_(program_lifecycle_phase) "Run time (program lifecycle phase)"). Among other things, this feature allows a single iterative [statement](https://en.wikipedia.org/wiki/Statement_(programming) "Statement (programming)") to process arbitrarily many elements of an array. For that reason, the elements of an array data structure are required to have the same size and should use the same data representation. The set of valid index tuples and the addresses of the elements (and hence the element addressing formula) are usually,<sup id="cite_ref-garcia_3-1"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-garcia-3">[3]</a></sup><sup id="cite_ref-veldhuizen_5-0"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-veldhuizen-5">[5]</a></sup> but not always,<sup id="cite_ref-andres_2-1"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-andres-2">[2]</a></sup> fixed while the array is in use.

The term "array" may also refer to an [array data type](https://en.wikipedia.org/wiki/Array_data_type "Array data type"), a kind of [data type](https://en.wikipedia.org/wiki/Data_type "Data type") provided by most [high-level programming languages](https://en.wikipedia.org/wiki/High-level_programming_language "High-level programming language") that consists of a collection of values or variables that can be selected by one or more indices computed at run-time. Array types are often implemented by array structures; however, in some languages they may be implemented by [hash tables](https://en.wikipedia.org/wiki/Hash_table "Hash table"), [linked lists](https://en.wikipedia.org/wiki/Linked_list "Linked list"), [search trees](https://en.wikipedia.org/wiki/Search_tree "Search tree"), or other data structures.

The term is also used, especially in the description of [algorithms](https://en.wikipedia.org/wiki/Algorithm "Algorithm"), to mean [associative array](https://en.wikipedia.org/wiki/Associative_array "Associative array") or "abstract array", a [theoretical computer science](https://en.wikipedia.org/wiki/Theoretical_computer_science "Theoretical computer science") model (an [abstract data type](https://en.wikipedia.org/wiki/Abstract_data_type "Abstract data type") or ADT) intended to capture the essential properties of arrays.

## History\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_structure)&action=edit&section=1 "Edit section: History")\]

The first digital computers used machine-language programming to set up and access array structures for data tables, vector and matrix computations, and for many other purposes. [John von Neumann](https://en.wikipedia.org/wiki/John_von_Neumann "John von Neumann") wrote the first array-sorting program ([merge sort](https://en.wikipedia.org/wiki/Merge_sort "Merge sort")) in 1945, during the building of the [first stored-program computer](https://en.wikipedia.org/wiki/EDVAC "EDVAC").<sup id="cite_ref-6"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-6">[6]</a></sup><sup>p.&nbsp;159</sup> Array indexing was originally done by [self-modifying code](https://en.wikipedia.org/wiki/Self-modifying_code "Self-modifying code"), and later using [index registers](https://en.wikipedia.org/wiki/Index_register "Index register") and [indirect addressing](https://en.wikipedia.org/wiki/Addressing_mode "Addressing mode"). Some mainframes designed in the 1960s, such as the [Burroughs B5000](https://en.wikipedia.org/wiki/Burroughs_large_systems "Burroughs large systems") and its successors, used [memory segmentation](https://en.wikipedia.org/wiki/Memory_segmentation "Memory segmentation") to perform index-bounds checking in hardware.<sup id="cite_ref-7"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-7">[7]</a></sup>

Assembly languages generally have no special support for arrays, other than what the machine itself provides. The earliest high-level programming languages, including [FORTRAN](https://en.wikipedia.org/wiki/Fortran "Fortran") (1957), [Lisp](https://en.wikipedia.org/wiki/Lisp_(programming_language) "Lisp (programming language)") (1958), [COBOL](https://en.wikipedia.org/wiki/COBOL "COBOL") (1960), and [ALGOL 60](https://en.wikipedia.org/wiki/ALGOL "ALGOL") (1960), had support for multi-dimensional arrays, and so has [C](https://en.wikipedia.org/wiki/C_(programming_language) "C (programming language)") (1972). In [C++](https://en.wikipedia.org/wiki/C%2B%2B "C++") (1983), class templates exist for multi-dimensional arrays whose dimension is fixed at runtime<sup id="cite_ref-garcia_3-2"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-garcia-3">[3]</a></sup><sup id="cite_ref-veldhuizen_5-1"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-veldhuizen-5">[5]</a></sup> as well as for runtime-flexible arrays.<sup id="cite_ref-andres_2-2"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-andres-2">[2]</a></sup>

## Applications\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_structure)&action=edit&section=2 "Edit section: Applications")\]

Arrays are used to implement mathematical [vectors](https://en.wikipedia.org/wiki/Coordinate_vector "Coordinate vector") and [matrices](https://en.wikipedia.org/wiki/Matrix_(mathematics) "Matrix (mathematics)"), as well as other kinds of rectangular tables. Many [databases](https://en.wikipedia.org/wiki/Database "Database"), small and large, consist of (or include) one-dimensional arrays whose elements are [records](https://en.wikipedia.org/wiki/Record_(computer_science) "Record (computer science)").

Arrays are used to implement other data structures, such as lists, [heaps](https://en.wikipedia.org/wiki/Heap_(data_structure) "Heap (data structure)"), [hash tables](https://en.wikipedia.org/wiki/Hash_table "Hash table"), [deques](https://en.wikipedia.org/wiki/Double-ended_queue "Double-ended queue"), [queues](https://en.wikipedia.org/wiki/Queue_(data_structure) "Queue (data structure)"), [stacks](https://en.wikipedia.org/wiki/Stack_(data_structure) "Stack (data structure)"), [strings](https://en.wikipedia.org/wiki/String_(computer_science) "String (computer science)"), and VLists. Array-based implementations of other data structures are frequently simple and space-efficient ([implicit data structures](https://en.wikipedia.org/wiki/Implicit_data_structure "Implicit data structure")), requiring little space [overhead](https://en.wikipedia.org/wiki/Overhead_(computing) "Overhead (computing)"), but may have poor space complexity, particularly when modified, compared to tree-based data structures (compare a [sorted array](https://en.wikipedia.org/wiki/Sorted_array "Sorted array") to a [search tree](https://en.wikipedia.org/wiki/Search_tree "Search tree")).

One or more large arrays are sometimes used to emulate in-program [dynamic memory allocation](https://en.wikipedia.org/wiki/Dynamic_memory_allocation "Dynamic memory allocation"), particularly [memory pool](https://en.wikipedia.org/wiki/Memory_pool "Memory pool") allocation. Historically, this has sometimes been the only way to allocate "dynamic memory" portably.

Arrays can be used to determine partial or complete [control flow](https://en.wikipedia.org/wiki/Control_flow "Control flow") in programs, as a compact alternative to (otherwise repetitive) multiple `IF` statements. They are known in this context as [control tables](https://en.wikipedia.org/wiki/Control_table "Control table") and are used in conjunction with a purpose built interpreter whose [control flow](https://en.wikipedia.org/wiki/Control_flow "Control flow") is altered according to values contained in the array. The array may contain [subroutine](https://en.wikipedia.org/wiki/Subroutine "Subroutine") [pointers](https://en.wikipedia.org/wiki/Pointer_(computer_programming) "Pointer (computer programming)") (or relative subroutine numbers that can be acted upon by [SWITCH](https://en.wikipedia.org/wiki/Switch_statement "Switch statement") statements) that direct the path of the execution.

## Element identifier and addressing formulas\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_structure)&action=edit&section=3 "Edit section: Element identifier and addressing formulas")\]

When data objects are stored in an array, individual objects are selected by an index that is usually a non-negative [scalar](https://en.wikipedia.org/wiki/Scalar_(computing) "Scalar (computing)") [integer](https://en.wikipedia.org/wiki/Integer "Integer"). Indexes are also called subscripts. An index _maps_ the array value to a stored object.

There are three ways in which the elements of an array can be indexed:

0 (_[zero-based indexing](https://en.wikipedia.org/wiki/Zero-based_numbering "Zero-based numbering")_)

The first element of the array is indexed by subscript of 0.<sup id="cite_ref-8"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-8">[8]</a></sup>

1 (_one-based indexing_)

The first element of the array is indexed by subscript of 1.

n (_n-based indexing_)

The base index of an array can be freely chosen. Usually programming languages allowing _n-based indexing_ also allow negative index values and other [scalar](https://en.wikipedia.org/wiki/Scalar_(computing) "Scalar (computing)") data types like [enumerations](https://en.wikipedia.org/wiki/Enumerated_type "Enumerated type"), or [characters](https://en.wikipedia.org/wiki/Character_(computing) "Character (computing)") may be used as an array index.

Using zero based indexing is the design choice of many influential programming languages, including [C](https://en.wikipedia.org/wiki/C_(programming_language) "C (programming language)"), [Java](https://en.wikipedia.org/wiki/Java_(programming_language) "Java (programming language)") and [Lisp](https://en.wikipedia.org/wiki/Lisp_(programming_language) "Lisp (programming language)"). This leads to simpler implementation where the subscript refers to an offset from the starting position of an array, so the first element has an offset of zero.

Arrays can have multiple dimensions, thus it is not uncommon to access an array using multiple indices. For example, a two-dimensional array `A` with three rows and four columns might provide access to the element at the 2nd row and 4th column by the expression `A[1][3]` in the case of a zero-based indexing system. Thus two indices are used for a two-dimensional array, three for a three-dimensional array, and _n_ for an _n_\-dimensional array.

The number of indices needed to specify an element is called the dimension, dimensionality, or [rank](https://en.wikipedia.org/wiki/Rank_(computer_programming) "Rank (computer programming)") of the array.

In standard arrays, each index is restricted to a certain range of consecutive integers (or consecutive values of some [enumerated type](https://en.wikipedia.org/wiki/Enumerated_type "Enumerated type")), and the address of an element is computed by a "linear" formula on the indices.

### One-dimensional arrays\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_structure)&action=edit&section=4 "Edit section: One-dimensional arrays")\]

A one-dimensional array (or single dimension array) is a type of linear array. Accessing its elements involves a single subscript which can either represent a row or column index.

As an example consider the C declaration `int anArrayName[10];` which declares a one-dimensional array of ten integers. Here, the array can store ten elements of type `int` . This array has indices starting from zero through nine. For example, the expressions `anArrayName[0]` and `anArrayName[9]` are the first and last elements respectively.

For a vector with linear addressing, the element with index _i_ is located at the address _B_ + _c_ × _i_, where _B_ is a fixed _base address_ and _c_ a fixed constant, sometimes called the _address increment_ or _stride_.

If the valid element indices begin at 0, the constant _B_ is simply the address of the first element of the array. For this reason, the [C programming language](https://en.wikipedia.org/wiki/C_(programming_language) "C (programming language)") specifies that array indices always begin at 0; and many programmers will call that element "[zeroth](https://en.wikipedia.org/wiki/Zero-based_numbering "Zero-based numbering")" rather than "first".

However, one can choose the index of the first element by an appropriate choice of the base address _B_. For example, if the array has five elements, indexed 1 through 5, and the base address _B_ is replaced by _B_ + 30_c_, then the indices of those same elements will be 31 to 35. If the numbering does not start at 0, the constant _B_ may not be the address of any element.

### Multidimensional arrays\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_structure)&action=edit&section=5 "Edit section: Multidimensional arrays")\]

For a multidimensional array, the element with indices _i_,_j_ would have address _B_ + _c_ · _i_ + _d_ · _j_, where the coefficients _c_ and _d_ are the _row_ and _column address increments_, respectively.

More generally, in a _k_\-dimensional array, the address of an element with indices _i_<sub>1</sub>, _i_<sub>2</sub>, ..., _i_<sub><i>k</i></sub> is

_B_ + _c_<sub>1</sub> · _i_<sub>1</sub> + _c_<sub>2</sub> · _i_<sub>2</sub> + … + _c_<sub><i>k</i></sub> · _i_<sub><i>k</i></sub>.

For example: int a\[2\]\[3\];

This means that array a has 2 rows and 3 columns, and the array is of integer type. Here we can store 6 elements they will be stored linearly but starting from first row linear then continuing with second row. The above array will be stored as a<sub>11</sub>, a<sub>12</sub>, a<sub>13</sub>, a<sub>21</sub>, a<sub>22</sub>, a<sub>23</sub>.

This formula requires only _k_ multiplications and _k_ additions, for any array that can fit in memory. Moreover, if any coefficient is a fixed power of 2, the multiplication can be replaced by [bit shifting](https://en.wikipedia.org/wiki/Bitwise_operation "Bitwise operation").

The coefficients _c_<sub><i>k</i></sub> must be chosen so that every valid index tuple maps to the address of a distinct element.

If the minimum legal value for every index is 0, then _B_ is the address of the element whose indices are all zero. As in the one-dimensional case, the element indices may be changed by changing the base address _B_. Thus, if a two-dimensional array has rows and columns indexed from 1 to 10 and 1 to 20, respectively, then replacing _B_ by _B_ + _c_<sub>1</sub> − 3_c_<sub>2</sub> will cause them to be renumbered from 0 through 9 and 4 through 23, respectively. Taking advantage of this feature, some languages (like FORTRAN 77) specify that array indices begin at 1, as in mathematical tradition while other languages (like Fortran 90, Pascal and Algol) let the user choose the minimum value for each index.

### Dope vectors\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_structure)&action=edit&section=6 "Edit section: Dope vectors")\]

The addressing formula is completely defined by the dimension _d_, the base address _B_, and the increments _c_<sub>1</sub>, _c_<sub>2</sub>, ..., _c_<sub><i>k</i></sub>. It is often useful to pack these parameters into a record called the array's _descriptor_ or _stride vector_ or _[dope vector](https://en.wikipedia.org/wiki/Dope_vector "Dope vector")_.<sup id="cite_ref-andres_2-3"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-andres-2">[2]</a></sup><sup id="cite_ref-garcia_3-3"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-garcia-3">[3]</a></sup> The size of each element, and the minimum and maximum values allowed for each index may also be included in the dope vector. The dope vector is a complete [handle](https://en.wikipedia.org/wiki/Handle_(computing) "Handle (computing)") for the array, and is a convenient way to pass arrays as arguments to [procedures](https://en.wikipedia.org/wiki/Subroutine "Subroutine"). Many useful [array slicing](https://en.wikipedia.org/wiki/Array_slicing "Array slicing") operations (such as selecting a sub-array, swapping indices, or reversing the direction of the indices) can be performed very efficiently by manipulating the dope vector.<sup id="cite_ref-andres_2-4"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-andres-2">[2]</a></sup>

### Compact layouts\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_structure)&action=edit&section=7 "Edit section: Compact layouts")\]

Often the coefficients are chosen so that the elements occupy a contiguous area of memory. However, that is not necessary. Even if arrays are always created with contiguous elements, some array slicing operations may create non-contiguous sub-arrays from them.

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Row_and_column_major_order.svg/170px-Row_and_column_major_order.svg.png)](https://en.wikipedia.org/wiki/File:Row_and_column_major_order.svg)

Illustration of row- and column-major order

There are two systematic compact layouts for a two-dimensional array. For example, consider the matrix

![{\displaystyle A={\begin{bmatrix}1&2&3\\4&5&6\\7&8&9\end{bmatrix}}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e5ce1bbaec43174abf6887a29b8f3a3612d0b1f5)

In the row-major order layout (adopted by C for statically declared arrays), the elements in each row are stored in consecutive positions and all of the elements of a row have a lower address than any of the elements of a consecutive row:

<table><tbody><tr><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td></tr></tbody></table>

In column-major order (traditionally used by Fortran), the elements in each column are consecutive in memory and all of the elements of a column have a lower address than any of the elements of a consecutive column:

<table><tbody><tr><td>1</td><td>4</td><td>7</td><td>2</td><td>5</td><td>8</td><td>3</td><td>6</td><td>9</td></tr></tbody></table>

For arrays with three or more indices, "row major order" puts in consecutive positions any two elements whose index tuples differ only by one in the _last_ index. "Column major order" is analogous with respect to the _first_ index.

In systems which use [processor cache](https://en.wikipedia.org/wiki/Processor_cache "Processor cache") or [virtual memory](https://en.wikipedia.org/wiki/Virtual_memory "Virtual memory"), scanning an array is much faster if successive elements are stored in consecutive positions in memory, rather than sparsely scattered. Many algorithms that use multidimensional arrays will scan them in a predictable order. A programmer (or a sophisticated compiler) may use this information to choose between row- or column-major layout for each array. For example, when computing the product _A_·_B_ of two matrices, it would be best to have _A_ stored in row-major order, and _B_ in column-major order.

### Resizing\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_structure)&action=edit&section=8 "Edit section: Resizing")\]

Static arrays have a size that is fixed when they are created and consequently do not allow elements to be inserted or removed. However, by allocating a new array and copying the contents of the old array to it, it is possible to effectively implement a _dynamic_ version of an array; see [dynamic array](https://en.wikipedia.org/wiki/Dynamic_array "Dynamic array"). If this operation is done infrequently, insertions at the end of the array require only amortized constant time.

Some array data structures do not reallocate storage, but do store a count of the number of elements of the array in use, called the count or size. This effectively makes the array a [dynamic array](https://en.wikipedia.org/wiki/Dynamic_array "Dynamic array") with a fixed maximum size or capacity; [Pascal strings](https://en.wikipedia.org/wiki/Pascal_string "Pascal string") are examples of this.

### Non-linear formulas\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_structure)&action=edit&section=9 "Edit section: Non-linear formulas")\]

More complicated (non-linear) formulas are occasionally used. For a compact two-dimensional [triangular array](https://en.wikipedia.org/wiki/Triangular_array "Triangular array"), for instance, the addressing formula is a polynomial of degree 2.

## Efficiency\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_structure)&action=edit&section=10 "Edit section: Efficiency")\]

Both _store_ and _select_ take (deterministic worst case) [constant time](https://en.wikipedia.org/wiki/Constant_time "Constant time"). Arrays take linear ([O](https://en.wikipedia.org/wiki/Big-O_notation "Big-O notation")(_n_)) space in the number of elements _n_ that they hold.

In an array with element size _k_ and on a machine with a cache line size of B bytes, iterating through an array of _n_ elements requires the minimum of ceiling(_nk_/B) cache misses, because its elements occupy contiguous memory locations. This is roughly a factor of B/_k_ better than the number of cache misses needed to access _n_ elements at random memory locations. As a consequence, sequential iteration over an array is noticeably faster in practice than iteration over many other data structures, a property called [locality of reference](https://en.wikipedia.org/wiki/Locality_of_reference "Locality of reference") (this does _not_ mean however, that using a [perfect hash](https://en.wikipedia.org/wiki/Perfect_hash_function "Perfect hash function") or [trivial hash](https://en.wikipedia.org/wiki/Hash_function#Trivial_hash_function "Hash function") within the same (local) array, will not be even faster - and achievable in [constant time](https://en.wikipedia.org/wiki/Constant_time "Constant time")). Libraries provide low-level optimized facilities for copying ranges of memory (such as [memcpy](https://en.wikipedia.org/wiki/String.h "String.h")) which can be used to move [contiguous](https://en.wikipedia.org/wiki/Contiguous_data_storage "Contiguous data storage") blocks of array elements significantly faster than can be achieved through individual element access. The speedup of such optimized routines varies by array element size, architecture, and implementation.

Memory-wise, arrays are compact data structures with no per-element [overhead](https://en.wikipedia.org/wiki/Computational_overhead "Computational overhead"). There may be a per-array overhead (e.g., to store index bounds) but this is language-dependent. It can also happen that elements stored in an array require _less_ memory than the same elements stored in individual variables, because several array elements can be stored in a single [word](https://en.wikipedia.org/wiki/Word_(data_type) "Word (data type)"); such arrays are often called _packed_ arrays. An extreme (but commonly used) case is the [bit array](https://en.wikipedia.org/wiki/Bit_array "Bit array"), where every bit represents a single element. A single [octet](https://en.wikipedia.org/wiki/Octet_(computing) "Octet (computing)") can thus hold up to 256 different combinations of up to 8 different conditions, in the most compact form.

Array accesses with statically predictable access patterns are a major source of [data parallelism](https://en.wikipedia.org/wiki/Data_parallelism "Data parallelism").

### Comparison with other data structures\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_structure)&action=edit&section=11 "Edit section: Comparison with other data structures")\]

<table><caption>Comparison of list data structures</caption><tbody><tr><th rowspan="2"></th><th rowspan="2">Peek<br>(index)</th><th colspan="3">Mutate (insert or delete) at …</th><th rowspan="2">Excess space,<br>average</th></tr><tr><th>Beginning</th><th>End</th><th>Middle</th></tr><tr><td><a href="https://en.wikipedia.org/wiki/Linked_list" title="Linked list">Linked list</a></td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(<i>n</i>)</td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(1)</td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(1), known end element;<br>Θ(<i>n</i>), unknown end element</td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Peek time +<br>Θ(1)<sup id="cite_ref-9"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-9">[9]</a></sup><sup id="cite_ref-10"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-10">[10]</a></sup></td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(<i>n</i>)</td></tr><tr><td><a href="https://en.wikipedia.org/wiki/Array_data_structure" title="Array data structure">Array</a></td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(1)</td><td data-sort-value="" data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="" data-darkreader-inline-color="">—</td><td data-sort-value="" data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="" data-darkreader-inline-color="">—</td><td data-sort-value="" data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="" data-darkreader-inline-color="">—</td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">0</td></tr><tr><td><a href="https://en.wikipedia.org/wiki/Dynamic_array" title="Dynamic array">Dynamic array</a></td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(1)</td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(<i>n</i>)</td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(1) <a href="https://en.wikipedia.org/wiki/Amortized_analysis" title="Amortized analysis">amortized</a></td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(<i>n</i>)</td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(<i>n</i>)<sup id="cite_ref-11"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-11">[11]</a></sup></td></tr><tr><td><a href="https://en.wikipedia.org/wiki/Self-balancing_binary_search_tree" title="Self-balancing binary search tree">Balanced tree</a></td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(log n)</td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(log n)</td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(log <i>n</i>)</td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(log <i>n</i>)</td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(<i>n</i>)</td></tr><tr><td>Random-<span>access list</span></td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(log n)<sup id="cite_ref-okasakiComparison_12-0"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-okasakiComparison-12">[12]</a></sup></td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(1)</td><td data-sort-value="" data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="" data-darkreader-inline-color="">—<sup id="cite_ref-okasakiComparison_12-1"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-okasakiComparison-12">[12]</a></sup></td><td data-sort-value="" data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="" data-darkreader-inline-color="">—<sup id="cite_ref-okasakiComparison_12-2"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-okasakiComparison-12">[12]</a></sup></td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(<i>n</i>)</td></tr><tr><td><a href="https://en.wikipedia.org/wiki/Hashed_array_tree" title="Hashed array tree">Hashed array tree</a></td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(1)</td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(<i>n</i>)</td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(1) <a href="https://en.wikipedia.org/wiki/Amortized_analysis" title="Amortized analysis">amortized</a></td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(<i>n</i>)</td><td data-darkreader-inline-bgimage="" data-darkreader-inline-bgcolor="">Θ(√<i>n</i>)</td></tr></tbody></table>

[Dynamic arrays](https://en.wikipedia.org/wiki/Dynamic_array "Dynamic array") or growable arrays are similar to arrays but add the ability to insert and delete elements; adding and deleting at the end is particularly efficient. However, they reserve linear ([Θ](https://en.wikipedia.org/wiki/Big-O_notation#Family_of_Bachmann%E2%80%93Landau_notations "Big-O notation")(_n_)) additional storage, whereas arrays do not reserve additional storage.

[Associative arrays](https://en.wikipedia.org/wiki/Associative_array "Associative array") provide a mechanism for array-like functionality without huge storage overheads when the index values are sparse. For example, an array that contains values only at indexes 1 and 2 billion may benefit from using such a structure. Specialized associative arrays with integer keys include [Patricia tries](https://en.wikipedia.org/wiki/Radix_tree "Radix tree"), [Judy arrays](https://en.wikipedia.org/wiki/Judy_array "Judy array"), and [van Emde Boas trees](https://en.wikipedia.org/wiki/Van_Emde_Boas_tree "Van Emde Boas tree").

[Balanced trees](https://en.wikipedia.org/wiki/Self-balancing_binary_search_tree "Self-balancing binary search tree") require O(log _n_) time for indexed access, but also permit inserting or deleting elements in O(log _n_) time,<sup id="cite_ref-13"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-13">[13]</a></sup> whereas growable arrays require linear (Θ(_n_)) time to insert or delete elements at an arbitrary position.

[Linked lists](https://en.wikipedia.org/wiki/Linked_list "Linked list") allow constant time removal and insertion in the middle but take linear time for indexed access. Their memory use is typically worse than arrays, but is still linear.

[![A two-dimensional array stored as a one-dimensional array of one-dimensional arrays (rows).](https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Array_of_array_storage.svg/120px-Array_of_array_storage.svg.png)](https://en.wikipedia.org/wiki/File:Array_of_array_storage.svg "A two-dimensional array stored as a one-dimensional array of one-dimensional arrays (rows).")

An [Iliffe vector](https://en.wikipedia.org/wiki/Iliffe_vector "Iliffe vector") is an alternative to a multidimensional array structure. It uses a one-dimensional array of [references](https://en.wikipedia.org/wiki/Reference_(computer_science) "Reference (computer science)") to arrays of one dimension less. For two dimensions, in particular, this alternative structure would be a vector of pointers to vectors, one for each row(pointer on c or c++). Thus an element in row _i_ and column _j_ of an array _A_ would be accessed by double indexing (_A_\[_i_\]\[_j_\] in typical notation). This alternative structure allows [jagged arrays](https://en.wikipedia.org/wiki/Jagged_array "Jagged array"), where each row may have a different size—or, in general, where the valid range of each index depends on the values of all preceding indices. It also saves one multiplication (by the column address increment) replacing it by a bit shift (to index the vector of row pointers) and one extra memory access (fetching the row address), which may be worthwhile in some architectures.

## Dimension\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_structure)&action=edit&section=12 "Edit section: Dimension")\]

The _dimension_ of an array is the number of indices needed to select an element. Thus, if the array is seen as a function on a set of possible index combinations, it is the dimension of the space of which its domain is a discrete subset. Thus a one-dimensional array is a list of data, a two-dimensional array is a rectangle of data,<sup id="cite_ref-14"><a href="https://en.wikipedia.org/wiki/Array_(data_structure)#cite_note-14">[14]</a></sup> a three-dimensional array a block of data, etc.

This should not be confused with the dimension of the set of all matrices with a given domain, that is, the number of elements in the array. For example, an array with 5 rows and 4 columns is two-dimensional, but such matrices form a 20-dimensional space. Similarly, a three-dimensional vector can be represented by a one-dimensional array of size three.

## See also\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_structure)&action=edit&section=13 "Edit section: See also")\]

-   [Dynamic array](https://en.wikipedia.org/wiki/Dynamic_array "Dynamic array")
-   [Parallel array](https://en.wikipedia.org/wiki/Parallel_array "Parallel array")
-   [Variable-length array](https://en.wikipedia.org/wiki/Variable-length_array "Variable-length array")
-   [Bit array](https://en.wikipedia.org/wiki/Bit_array "Bit array")
-   [Array slicing](https://en.wikipedia.org/wiki/Array_slicing "Array slicing")
-   [Offset (computer science)](https://en.wikipedia.org/wiki/Offset_(computer_science) "Offset (computer science)")
-   [Row- and column-major order](https://en.wikipedia.org/wiki/Row-_and_column-major_order "Row- and column-major order")
-   [Stride of an array](https://en.wikipedia.org/wiki/Stride_of_an_array "Stride of an array")

## References\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_structure)&action=edit&section=14 "Edit section: References")\]

1.  **[^](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-1 "Jump up")** Black, Paul E. (13 November 2008). ["array"](https://xlinux.nist.gov/dads/HTML/array.html). _[Dictionary of Algorithms and Data Structures](https://en.wikipedia.org/wiki/Dictionary_of_Algorithms_and_Data_Structures "Dictionary of Algorithms and Data Structures")_. [National Institute of Standards and Technology](https://en.wikipedia.org/wiki/National_Institute_of_Standards_and_Technology "National Institute of Standards and Technology"). Retrieved 22 August 2010.
2.  ^ [Jump up to: <sup><i><b>a</b></i></sup>](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-andres_2-0) [<sup><i><b>b</b></i></sup>](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-andres_2-1) [<sup><i><b>c</b></i></sup>](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-andres_2-2) [<sup><i><b>d</b></i></sup>](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-andres_2-3) [<sup><i><b>e</b></i></sup>](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-andres_2-4) Bjoern Andres; Ullrich Koethe; Thorben Kroeger; Hamprecht (2010). "Runtime-Flexible Multi-dimensional Arrays and Views for C++98 and C++0x". [arXiv](https://en.wikipedia.org/wiki/ArXiv_(identifier) "ArXiv (identifier)"):[1008.2909](https://arxiv.org/abs/1008.2909) \[[cs.DS](https://arxiv.org/archive/cs.DS)\].
3.  ^ [Jump up to: <sup><i><b>a</b></i></sup>](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-garcia_3-0) [<sup><i><b>b</b></i></sup>](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-garcia_3-1) [<sup><i><b>c</b></i></sup>](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-garcia_3-2) [<sup><i><b>d</b></i></sup>](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-garcia_3-3) Garcia, Ronald; Lumsdaine, Andrew (2005). "MultiArray: a C++ library for generic programming with arrays". _Software: Practice and Experience_. **35** (2): 159–188. [doi](https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"):[10.1002/spe.630](https://doi.org/10.1002%2Fspe.630). [ISSN](https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)") [0038-0644](https://www.worldcat.org/issn/0038-0644). [S2CID](https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)") [10890293](https://api.semanticscholar.org/CorpusID:10890293).
4.  **[^](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-4 "Jump up")** David R. Richardson (2002), The Book on Data Structures. iUniverse, 112 pages. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [0-595-24039-9](https://en.wikipedia.org/wiki/Special:BookSources/0-595-24039-9 "Special:BookSources/0-595-24039-9"), [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-0-595-24039-5](https://en.wikipedia.org/wiki/Special:BookSources/978-0-595-24039-5 "Special:BookSources/978-0-595-24039-5").
5.  ^ [Jump up to: <sup><i><b>a</b></i></sup>](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-veldhuizen_5-0) [<sup><i><b>b</b></i></sup>](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-veldhuizen_5-1) Veldhuizen, Todd L. (December 1998). [_Arrays in Blitz++_](https://web.archive.org/web/20161109102542/http://ubietylab.net/ubigraph/content/Papers/pdf/BlitzArrays.pdf) (PDF). Computing in Object-Oriented Parallel Environments. Lecture Notes in Computer Science. Vol. 1505. Springer Berlin Heidelberg. pp. 223–230. [doi](https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"):[10.1007/3-540-49372-7\_24](https://doi.org/10.1007%2F3-540-49372-7_24). [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-3-540-65387-5](https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-65387-5 "Special:BookSources/978-3-540-65387-5"). Archived from [the original](http://ubietylab.net/ubigraph/content/Papers/pdf/BlitzArrays.pdf) (PDF) on 9 November 2016.
6.  **[^](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-6 "Jump up")** Donald Knuth, _[The Art of Computer Programming](https://en.wikipedia.org/wiki/The_Art_of_Computer_Programming "The Art of Computer Programming")_, vol. 3. Addison-Wesley
7.  **[^](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-7 "Jump up")** Levy, Henry M. (1984), _Capability-based Computer Systems_, Digital Press, p. 22, [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [9780932376220](https://en.wikipedia.org/wiki/Special:BookSources/9780932376220 "Special:BookSources/9780932376220").
8.  **[^](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-8 "Jump up")** ["Array Code Examples - PHP Array Functions - PHP code"](https://web.archive.org/web/20110413142103/http://www.configure-all.com/arrays.php). Computer Programming Web programming Tips. Archived from [the original](http://www.configure-all.com/arrays.php) on 13 April 2011. Retrieved 8 April 2011. In most computer languages array index (counting) starts from 0, not from 1. Index of the first element of the array is 0, index of the second element of the array is 1, and so on. In array of names below you can see indexes and values.
9.  **[^](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-9 "Jump up")** [_Day 1 Keynote - Bjarne Stroustrup: C++11 Style_](http://channel9.msdn.com/Events/GoingNative/GoingNative-2012/Keynote-Bjarne-Stroustrup-Cpp11-Style) at _GoingNative 2012_ on _channel9.msdn.com_ from minute 45 or foil 44
10.  **[^](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-10 "Jump up")** [_Number crunching: Why you should never, ever, EVER use linked-list in your code again_](http://kjellkod.wordpress.com/2012/02/25/why-you-should-never-ever-ever-use-linked-list-in-your-code-again/) at _kjellkod.wordpress.com_
11.  **[^](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-11 "Jump up")** Brodnik, Andrej; Carlsson, Svante; [Sedgewick, Robert](https://en.wikipedia.org/wiki/Robert_Sedgewick_(computer_scientist) "Robert Sedgewick (computer scientist)"); Munro, JI; Demaine, ED (1999), [_Resizable Arrays in Optimal Time and Space (Technical Report CS-99-09)_](http://www.cs.uwaterloo.ca/research/tr/1999/09/CS-99-09.pdf) (PDF), Department of Computer Science, University of Waterloo
12.  ^ [Jump up to: <sup><i><b>a</b></i></sup>](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-okasakiComparison_12-0) [<sup><i><b>b</b></i></sup>](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-okasakiComparison_12-1) [<sup><i><b>c</b></i></sup>](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-okasakiComparison_12-2) Chris Okasaki (1995). "Purely Functional Random-Access Lists". _Proceedings of the Seventh International Conference on Functional Programming Languages and Computer Architecture_: 86–95. [doi](https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"):[10.1145/224164.224187](https://doi.org/10.1145%2F224164.224187).
13.  **[^](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-13 "Jump up")** ["Counted B-Trees"](http://www.chiark.greenend.org.uk/~sgtatham/algorithms/cbtree.html).
14.  **[^](https://en.wikipedia.org/wiki/Array_(data_structure)#cite_ref-14 "Jump up")** ["Two-Dimensional Arrays \\ Processing.org"](https://processing.org/tutorials/2darray/). _processing.org_. Retrieved 1 May 2020.

## External links\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_structure)&action=edit&section=15 "Edit section: External links")\]

![](https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Wiktionary-logo-en-v2.svg/40px-Wiktionary-logo-en-v2.svg.png)

Look up _**[array](https://en.wiktionary.org/wiki/array "wiktionary:array")**_ in Wiktionary, the free dictionary.

-   [![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Wikibooks-logo-en-noslogan.svg/16px-Wikibooks-logo-en-noslogan.svg.png)](https://en.wikipedia.org/wiki/File:Wikibooks-logo-en-noslogan.svg) [Data Structures/Arrays](https://en.wikibooks.org/wiki/Data_Structures/Arrays "wikibooks:Data Structures/Arrays") at Wikibooks

# wiki-abstract data type

This article is about the abstract data type. For the byte-level structure, see [Array data structure](https://en.wikipedia.org/wiki/Array_data_structure "Array data structure"). For other types of arrays, see [Array](https://en.wikipedia.org/wiki/Array "Array").

In [computer science](https://en.wikipedia.org/wiki/Computer_science "Computer science"), **array** is a [data type](https://en.wikipedia.org/wiki/Data_type "Data type") that represents a collection of _elements_ ([values](https://en.wikipedia.org/wiki/Value_(computer_science) "Value (computer science)") or [variables](https://en.wikipedia.org/wiki/Variable_(computer_science) "Variable (computer science)")), each selected by one or more indices (identifying keys) that can be computed at [run time](https://en.wikipedia.org/wiki/Run_time_(program_lifecycle_phase) "Run time (program lifecycle phase)") during program execution. Such a collection is usually called an **array variable** or **array value**.<sup id="cite_ref-sebesta_1-0"><a href="https://en.wikipedia.org/wiki/Array_(data_type)#cite_note-sebesta-1">[1]</a></sup> By analogy with the mathematical concepts [vector](https://en.wikipedia.org/wiki/Vector_(mathematics) "Vector (mathematics)") and [matrix](https://en.wikipedia.org/wiki/Matrix_(mathematics) "Matrix (mathematics)"), array types with one and two indices are often called **vector type** and **matrix type**, respectively. More generally, a multidimensional array type can be called a **tensor type**, by analogy with the physical concept, [tensor](https://en.wikipedia.org/wiki/Tensor "Tensor").<sup id="cite_ref-tensorflow_2-0"><a href="https://en.wikipedia.org/wiki/Array_(data_type)#cite_note-tensorflow-2">[2]</a></sup>

Language support for array types may include certain [built-in](https://en.wikipedia.org/wiki/Built-in_type "Built-in type") array data types, some syntactic constructions (_array type constructors_) that the [programmer](https://en.wikipedia.org/wiki/Programmer "Programmer") may use to define such types and declare array variables, and special notation for indexing array elements.<sup id="cite_ref-sebesta_1-1"><a href="https://en.wikipedia.org/wiki/Array_(data_type)#cite_note-sebesta-1">[1]</a></sup> For example, in the [Pascal programming language](https://en.wikipedia.org/wiki/Pascal_programming_language "Pascal programming language"), the declaration `type MyTable = array [1..4,1..2] of integer`, defines a new array data type called `MyTable`. The declaration `var A: MyTable` then defines a variable `A` of that type, which is an aggregate of eight elements, each being an integer variable identified by two indices. In the Pascal program, those elements are denoted `A[1,1]`, `A[1,2]`, `A[2,1]`, …, `A[4,2]`.<sup id="cite_ref-pascal_3-0"><a href="https://en.wikipedia.org/wiki/Array_(data_type)#cite_note-pascal-3">[3]</a></sup> Special array types are often defined by the language's standard [libraries](https://en.wikipedia.org/wiki/Library_(computer_science) "Library (computer science)").

[Dynamic lists](https://en.wikipedia.org/wiki/Dynamic_list "Dynamic list") are also more common and easier to implement<sup>[<i><a href="https://en.wikipedia.org/wiki/Wikipedia:Accuracy_dispute#Disputed_statement" title="Wikipedia:Accuracy dispute"><span title="The material near this tag is possibly inaccurate or nonfactual. (July 2022)">dubious</span></a> <span>– <a href="https://en.wikipedia.org/wiki/Talk:Array_(data_type)#Dubious" title="Talk:Array (data type)">discuss</a></span></i>]</sup> than [dynamic arrays](https://en.wikipedia.org/wiki/Dynamic_array "Dynamic array"). Array types are distinguished from [record](https://en.wikipedia.org/wiki/Record_(computer_science) "Record (computer science)") types mainly because they allow the element indices to be computed at [run time](https://en.wikipedia.org/wiki/Run_time_(program_lifecycle_phase) "Run time (program lifecycle phase)"), as in the Pascal [assignment](https://en.wikipedia.org/wiki/Assignment_statement "Assignment statement") `A[I,J] := A[N-I,2*J]`. Among other things, this feature allows a single iterative [statement](https://en.wikipedia.org/wiki/Statement_(computer_science) "Statement (computer science)") to process arbitrarily many elements of an array variable.

In more theoretical contexts, especially in [type theory](https://en.wikipedia.org/wiki/Type_theory "Type theory") and in the description of abstract [algorithms](https://en.wikipedia.org/wiki/Algorithm "Algorithm"), the terms "array" and "array type" sometimes refer to an [abstract data type](https://en.wikipedia.org/wiki/Abstract_data_type "Abstract data type") (ADT) also called _abstract array_ or may refer to an _[associative array](https://en.wikipedia.org/wiki/Associative_array "Associative array")_, a [mathematical](https://en.wikipedia.org/wiki/Mathematics "Mathematics") model with the basic operations and behavior of a typical array type in most languages — basically, a collection of elements that are selected by indices computed at run-time.

Depending on the language, array types may overlap (or be identified with) other data types that describe aggregates of values, such as [lists](https://en.wikipedia.org/wiki/List_(computing) "List (computing)") and [strings](https://en.wikipedia.org/wiki/String_(computer_science) "String (computer science)"). Array types are often implemented by [array data structures](https://en.wikipedia.org/wiki/Array_data_structure "Array data structure"), but sometimes by other means, such as [hash tables](https://en.wikipedia.org/wiki/Hash_table "Hash table"), [linked lists](https://en.wikipedia.org/wiki/Linked_list "Linked list"), or [search trees](https://en.wikipedia.org/wiki/Search_tree "Search tree").

## History\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=1 "Edit section: History")\]

[Heinz Rutishauser](https://en.wikipedia.org/wiki/Heinz_Rutishauser "Heinz Rutishauser")'s programming language Superplan (1949–1951) included multi-dimensional arrays. Rutishauser however although describing how a compiler for his language should be built, did not implement one.

Assembly languages and low-level languages like BCPL<sup id="cite_ref-4"><a href="https://en.wikipedia.org/wiki/Array_(data_type)#cite_note-4">[4]</a></sup> generally have no syntactic support for arrays.

Because of the importance of array structures for efficient computation, the earliest high-level programming languages, including [FORTRAN](https://en.wikipedia.org/wiki/FORTRAN "FORTRAN") (1957), [COBOL](https://en.wikipedia.org/wiki/COBOL "COBOL") (1960), and [Algol 60](https://en.wikipedia.org/wiki/Algol_60 "Algol 60") (1960), provided support for multi-dimensional arrays.

## Abstract arrays\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=2 "Edit section: Abstract arrays")\]

An array data structure can be mathematically modeled as an [abstract data structure](https://en.wikipedia.org/wiki/Abstract_data_structure "Abstract data structure") (an _abstract array_) with two operations

_get_(_A_, _I_): the data stored in the element of the array _A_ whose indices are the integer [tuple](https://en.wikipedia.org/wiki/Tuple "Tuple") _I_.

_set_(_A_,_I_,_V_): the array that results by setting the value of that element to _V_.

These operations are required to satisfy the [axioms](https://en.wikipedia.org/wiki/Axiom "Axiom")<sup id="cite_ref-5"><a href="https://en.wikipedia.org/wiki/Array_(data_type)#cite_note-5">[5]</a></sup>

_get_(_set_(_A_,_I_, _V_), _I_) = _V_

_get_(_set_(_A_,_I_, _V_), _J_) = _get_(_A_, _J_) if _I_ ≠ _J_

for any array state _A_, any value _V_, and any tuples _I_, _J_ for which the operations are defined.

The first axiom means that each element behaves like a variable. The second axiom means that elements with distinct indices behave as [disjoint](https://en.wikipedia.org/wiki/Aliasing_(computing) "Aliasing (computing)") variables, so that storing a value in one element does not affect the value of any other element.

These axioms do not place any constraints on the set of valid index tuples _I_, therefore this abstract model can be used for [triangular matrices](https://en.wikipedia.org/wiki/Triangular_array "Triangular array") and other oddly-shaped arrays.

## Implementations\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=3 "Edit section: Implementations")\]

In order to effectively implement variables of such types as [array structures](https://en.wikipedia.org/wiki/Array_data_structure "Array data structure") (with indexing done by [pointer arithmetic](https://en.wikipedia.org/wiki/Pointer_arithmetic "Pointer arithmetic")), many languages restrict the indices to [integer](https://en.wikipedia.org/wiki/Integer_(computer_science) "Integer (computer science)") data types (or other types that can be interpreted as integers, such as [bytes](https://en.wikipedia.org/wiki/Byte "Byte") and [enumerated types](https://en.wikipedia.org/wiki/Enumerated_type "Enumerated type")), and require that all elements have the same data type and storage size. Most of those languages also restrict each index to a finite [interval](https://en.wikipedia.org/wiki/Interval_(mathematics) "Interval (mathematics)") of integers, that remains fixed throughout the lifetime of the array variable. In some [compiled](https://en.wikipedia.org/wiki/Compiler "Compiler") languages, in fact, the index ranges may have to be known at [compile time](https://en.wikipedia.org/wiki/Compile_time "Compile time").

On the other hand, some programming languages provide more liberal array types, that allow indexing by arbitrary values, such as [floating-point numbers](https://en.wikipedia.org/wiki/Floating_point "Floating point"), [strings](https://en.wikipedia.org/wiki/String_(computer_science) "String (computer science)"), [objects](https://en.wikipedia.org/wiki/Object-oriented_programming "Object-oriented programming"), [references](https://en.wikipedia.org/wiki/Reference_(computer_science) "Reference (computer science)"), etc.. Such index values cannot be restricted to an interval, much less a fixed interval. So, these languages usually allow arbitrary new elements to be created at any time. This choice precludes the implementation of array types as array data structures. That is, those languages use array-like syntax to implement a more general [associative array](https://en.wikipedia.org/wiki/Associative_array "Associative array") semantics, and must therefore be implemented by a [hash table](https://en.wikipedia.org/wiki/Hash_table "Hash table") or some other [search data structure](https://en.wikipedia.org/wiki/Search_data_structure "Search data structure").

## Language support\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=4 "Edit section: Language support")\]

### Multi-dimensional arrays\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=5 "Edit section: Multi-dimensional arrays")\]

The number of indices needed to specify an element is called the _dimension_, _dimensionality_, or [rank](https://en.wikipedia.org/wiki/Rank_(computer_programming) "Rank (computer programming)") of the array type. (This nomenclature conflicts with the concept of dimension in linear algebra, which expresses the [shape of a matrix](https://en.wikipedia.org/wiki/Matrix_(mathematics)#Definition "Matrix (mathematics)"). Thus, an array of numbers with 5 rows and 4 columns, hence 20 elements, is said to have dimension 2 in computing contexts, but represents a matrix that is said to be 4×5-dimensional. Also, the computer science meaning of "rank" conflicts with the notion of [tensor rank](https://en.wikipedia.org/wiki/Tensor_rank "Tensor rank"), which is a generalization of the linear algebra concept of [rank of a matrix](https://en.wikipedia.org/wiki/Matrix_rank "Matrix rank").)

[![A two-dimensional array stored as a one-dimensional array of one-dimensional arrays (rows).](https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Array_of_array_storage.svg/120px-Array_of_array_storage.svg.png)](https://en.wikipedia.org/wiki/File:Array_of_array_storage.svg "A two-dimensional array stored as a one-dimensional array of one-dimensional arrays (rows).")

Many languages support only one-dimensional arrays. In those languages, a multi-dimensional array is typically represented by an [Iliffe vector](https://en.wikipedia.org/wiki/Iliffe_vector "Iliffe vector"), a one-dimensional array of [references](https://en.wikipedia.org/wiki/Reference_(computer_science) "Reference (computer science)") to arrays of one dimension less. A two-dimensional array, in particular, would be implemented as a vector of pointers to its rows. Thus an element in row _i_ and column _j_ of an array _A_ would be accessed by double indexing (_A_\[_i_\]\[_j_\] in typical notation). This way of emulating multi-dimensional arrays allows the creation of [jagged arrays](https://en.wikipedia.org/wiki/Jagged_array "Jagged array"), where each row may have a different size — or, in general, where the valid range of each index depends on the values of all preceding indices.

This representation for multi-dimensional arrays is quite prevalent in C and C++ software. However, C and C++ will use a linear indexing formula for multi-dimensional arrays that are declared with compile time constant size, e.g. by `int A[10][20]` or `int A[m][n]`, instead of the traditional `int **A`.<sup id="cite_ref-6"><a href="https://en.wikipedia.org/wiki/Array_(data_type)#cite_note-6">[6]</a></sup>

### Indexing notation\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=6 "Edit section: Indexing notation")\]

Most programming languages that support arrays support the _store_ and _select_ operations, and have special syntax for indexing. Early languages used parentheses, e.g. `A(i,j)`, as in FORTRAN; others choose square brackets, e.g. `A[i,j]` or `A[i][j]`, as in Algol 60 and Pascal (to distinguish from the use of parentheses for [function calls](https://en.wikipedia.org/wiki/Function_call "Function call")).

### Index types\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=7 "Edit section: Index types")\]

Array data types are most often implemented as array structures: with the indices restricted to integer (or totally ordered) values, index ranges fixed at array creation time, and multilinear element addressing. This was the case in most ["third generation"](https://en.wikipedia.org/wiki/Third-generation_programming_language "Third-generation programming language") languages, and is still the case of most [systems programming languages](https://en.wikipedia.org/wiki/Systems_programming_language "Systems programming language") such as [Ada](https://en.wikipedia.org/wiki/Ada_(programming_language) "Ada (programming language)"), [C](https://en.wikipedia.org/wiki/C_programming_language "C programming language"), and [C++](https://en.wikipedia.org/wiki/C%2B%2B "C++"). In some languages, however, array data types have the semantics of associative arrays, with indices of arbitrary type and dynamic element creation. This is the case in some [scripting languages](https://en.wikipedia.org/wiki/Scripting_languages "Scripting languages") such as [Awk](https://en.wikipedia.org/wiki/Awk_programming_language "Awk programming language") and [Lua](https://en.wikipedia.org/wiki/Lua_(programming_language) "Lua (programming language)"), and of some array types provided by standard [C++](https://en.wikipedia.org/wiki/C%2B%2B "C++") libraries.

### Bounds checking\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=8 "Edit section: Bounds checking")\]

Some languages (like Pascal and Modula) perform [bounds checking](https://en.wikipedia.org/wiki/Bounds_checking "Bounds checking") on every access, raising an [exception](https://en.wikipedia.org/wiki/Exception_(computer_science) "Exception (computer science)") or aborting the program when any index is out of its valid range. Compilers may allow these checks to be turned off to trade safety for speed. Other languages (like FORTRAN and C) trust the programmer and perform no checks. Good compilers may also analyze the program to determine the range of possible values that the index may have, and this analysis may lead to [bounds-checking elimination](https://en.wikipedia.org/wiki/Bounds-checking_elimination "Bounds-checking elimination").

### Index origin\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=9 "Edit section: Index origin")\]

Some languages, such as C, provide only [zero-based](https://en.wikipedia.org/wiki/Zero-based_numbering "Zero-based numbering") array types, for which the minimum valid value for any index is 0. This choice is convenient for array implementation and address computations. With a language such as C, a pointer to the interior of any array can be defined that will symbolically act as a pseudo-array that accommodates negative indices. This works only because C does not check an index against bounds when used.

Other languages provide only _one-based_ array types, where each index starts at 1; this is the traditional convention in mathematics for matrices and mathematical [sequences](https://en.wikipedia.org/wiki/Sequence "Sequence"). A few languages, such as Pascal and Lua, support _n-based_ array types, whose minimum legal indices are chosen by the programmer. The relative merits of each choice have been the subject of heated debate. Zero-based indexing can avoid [off-by-one](https://en.wikipedia.org/wiki/Off-by-one_error "Off-by-one error") or [fencepost errors](https://en.wikipedia.org/wiki/Fencepost_error "Fencepost error"),<sup id="cite_ref-7"><a href="https://en.wikipedia.org/wiki/Array_(data_type)#cite_note-7">[7]</a></sup> specifically a 0-based `for (i = 0; i < 5; i += 1)` iterates (5-0) times, whereas in the equivalent 1-based half-open range `for (i = 1; i < 6; i += 1)` the 6 is itself a potential such error, typically requiring `length() + 1`, and the 1-based inclusive range `for (i = 1; i <= 5; i+= 1)` iterates (5-1)+1 times.

### Highest index\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=10 "Edit section: Highest index")\]

The relation between numbers appearing in an array declaration and the index of that array's last element also varies by language. In many languages (such as C), one should specify the number of elements contained in the array; whereas in others (such as Pascal and [Visual Basic .NET](https://en.wikipedia.org/wiki/Visual_Basic_.NET "Visual Basic .NET")) one should specify the numeric value of the index of the last element. Needless to say, this distinction is immaterial in languages where the indices start at 1, such as [Lua](https://en.wikipedia.org/wiki/Lua_(programming_language) "Lua (programming language)").

### Array algebra\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=11 "Edit section: Array algebra")\]

Some programming languages support [array programming](https://en.wikipedia.org/wiki/Array_programming "Array programming"), where operations and functions defined for certain data types are implicitly extended to arrays of elements of those types. Thus one can write _A_+_B_ to add corresponding elements of two arrays _A_ and _B_. Usually these languages provide both the [element-by-element multiplication](https://en.wikipedia.org/wiki/Hadamard_product_(matrices) "Hadamard product (matrices)") and the standard [matrix product](https://en.wikipedia.org/wiki/Dot_product "Dot product") of [linear algebra](https://en.wikipedia.org/wiki/Linear_algebra "Linear algebra"), and which of these is represented by the _\*_ operator varies by language.

Languages providing array programming capabilities have proliferated since the innovations in this area of [APL](https://en.wikipedia.org/wiki/APL_programming_language "APL programming language"). These are core capabilities of [domain-specific languages](https://en.wikipedia.org/wiki/Domain-specific_language "Domain-specific language") such as [GAUSS](https://en.wikipedia.org/wiki/GAUSS_(programming_language) "GAUSS (programming language)"), [IDL](https://en.wikipedia.org/wiki/Interactive_Data_Language "Interactive Data Language"), [Matlab](https://en.wikipedia.org/wiki/Matlab "Matlab"), and [Mathematica](https://en.wikipedia.org/wiki/Mathematica "Mathematica"). They are a core facility in newer languages, such as [Julia](https://en.wikipedia.org/wiki/Julia_(programming_language) "Julia (programming language)") and recent versions of [Fortran](https://en.wikipedia.org/wiki/Fortran "Fortran"). These capabilities are also provided via standard extension libraries for other general purpose programming languages (such as the widely used [NumPy](https://en.wikipedia.org/wiki/NumPy "NumPy") library for [Python](https://en.wikipedia.org/wiki/Python_(programming_language) "Python (programming language)")).

### String types and arrays\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=12 "Edit section: String types and arrays")\]

Many languages provide a built-in [string](https://en.wikipedia.org/wiki/String_(computer_science) "String (computer science)") data type, with specialized notation ("[string literals](https://en.wikipedia.org/wiki/String_literal "String literal")") to build values of that type. In some languages (such as C), a string is just an array of characters, or is handled in much the same way. Other languages, like [Pascal](https://en.wikipedia.org/wiki/Pascal_programming_language "Pascal programming language"), may provide vastly different operations for strings and arrays.

### Array index range queries\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=13 "Edit section: Array index range queries")\]

Some programming languages provide operations that return the size (number of elements) of a vector, or, more generally, range of each index of an array. In [C](https://en.wikipedia.org/wiki/C_(programming_language) "C (programming language)") and [C++](https://en.wikipedia.org/wiki/C%2B%2B "C++") arrays do not support the _size_ function, so programmers often have to declare separate variable to hold the size, and pass it to procedures as a separate parameter.

Elements of a newly created array may have undefined values (as in C), or may be defined to have a specific "default" value such as 0 or a null pointer (as in Java).

In [C++](https://en.wikipedia.org/wiki/C%2B%2B "C++") a std::vector object supports the _store_, _select_, and _append_ operations with the performance characteristics discussed above. Vectors can be queried for their size and can be resized. Slower operations like inserting an element in the middle are also supported.

### Slicing\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=14 "Edit section: Slicing")\]

An [array slicing](https://en.wikipedia.org/wiki/Array_slicing "Array slicing") operation takes a subset of the elements of an array-typed entity (value or variable) and then assembles them as another array-typed entity, possibly with other indices. If array types are implemented as array structures, many useful slicing operations (such as selecting a sub-array, swapping indices, or reversing the direction of the indices) can be performed very efficiently by manipulating the [dope vector](https://en.wikipedia.org/wiki/Dope_vector "Dope vector") of the structure. The possible slicings depend on the implementation details: for example, FORTRAN allows slicing off one column of a matrix variable, but not a row, and treat it as a vector; whereas C allow slicing off a row from a matrix, but not a column.

On the other hand, other slicing operations are possible when array types are implemented in other ways.

### Resizing\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=15 "Edit section: Resizing")\]

Some languages allow [dynamic arrays](https://en.wikipedia.org/wiki/Dynamic_array "Dynamic array") (also called resizable, growable, or extensible): array variables whose index ranges may be expanded at any time after creation, without changing the values of its current elements.

For one-dimensional arrays, this facility may be provided as an operation "`append`(_A_,_x_)" that increases the size of the array _A_ by one and then sets the value of the last element to _x_. Other array types (such as Pascal strings) provide a concatenation operator, which can be used together with slicing to achieve that effect and more. In some languages, assigning a value to an element of an array automatically extends the array, if necessary, to include that element. In other array types, a slice can be replaced by an array of different size, with subsequent elements being renumbered accordingly — as in Python's list assignment "_A_\[5:5\] = \[10,20,30\]", that inserts three new elements (10,20, and 30) before element "_A_\[5\]". Resizable arrays are conceptually similar to [lists](https://en.wikipedia.org/wiki/List_(computer_science) "List (computer science)"), and the two concepts are synonymous in some languages.

An extensible array can be implemented as a fixed-size array, with a counter that records how many elements are actually in use. The `append` operation merely increments the counter; until the whole array is used, when the `append` operation may be defined to fail. This is an implementation of a [dynamic array](https://en.wikipedia.org/wiki/Dynamic_array "Dynamic array") with a fixed capacity, as in the `string` type of Pascal. Alternatively, the `append` operation may re-allocate the underlying array with a larger size, and copy the old elements to the new area.

## See also\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=16 "Edit section: See also")\]

-   [Array access analysis](https://en.wikipedia.org/wiki/Array_access_analysis "Array access analysis")
-   [Array database management system](https://en.wikipedia.org/wiki/Array_database_management_system "Array database management system")
-   [Bounds-checking elimination](https://en.wikipedia.org/wiki/Bounds-checking_elimination "Bounds-checking elimination")
-   [Delimiter-separated values](https://en.wikipedia.org/wiki/Delimiter-separated_values "Delimiter-separated values")
-   [Index checking](https://en.wikipedia.org/wiki/Index_checking "Index checking")
-   [Parallel array](https://en.wikipedia.org/wiki/Parallel_array "Parallel array")
-   [Sparse array](https://en.wikipedia.org/wiki/Sparse_array "Sparse array")
-   [Variable-length array](https://en.wikipedia.org/wiki/Variable-length_array "Variable-length array")

## References\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=17 "Edit section: References")\]

1.  ^ [Jump up to: <sup><i><b>a</b></i></sup>](https://en.wikipedia.org/wiki/Array_(data_type)#cite_ref-sebesta_1-0) [<sup><i><b>b</b></i></sup>](https://en.wikipedia.org/wiki/Array_(data_type)#cite_ref-sebesta_1-1) Robert W. Sebesta (2001) _Concepts of Programming Languages_. Addison-Wesley. 4th edition (1998), 5th edition (2001), [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [9780201385960](https://en.wikipedia.org/wiki/Special:BookSources/9780201385960 "Special:BookSources/9780201385960")
2.  **[^](https://en.wikipedia.org/wiki/Array_(data_type)#cite_ref-tensorflow_2-0 "Jump up")** ["Introduction to Tensors | TensorFlow Core"](https://www.tensorflow.org/guide/tensor). _TensorFlow_.
3.  **[^](https://en.wikipedia.org/wiki/Array_(data_type)#cite_ref-pascal_3-0 "Jump up")** K. Jensen and Niklaus Wirth, _PASCAL User Manual and Report_. Springer. Paperback edition (2007) 184 pages, [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-3540069508](https://en.wikipedia.org/wiki/Special:BookSources/978-3540069508 "Special:BookSources/978-3540069508")
4.  **[^](https://en.wikipedia.org/wiki/Array_(data_type)#cite_ref-4 "Jump up")** John Mitchell, _Concepts of Programming Languages_. Cambridge University Press.
5.  **[^](https://en.wikipedia.org/wiki/Array_(data_type)#cite_ref-5 "Jump up")** Lukham, Suzuki (1979), "Verification of array, record, and pointer operations in Pascal". _ACM Transactions on Programming Languages and Systems_ **1** (2), 226–244.
6.  **[^](https://en.wikipedia.org/wiki/Array_(data_type)#cite_ref-6 "Jump up")** Brian W. Kernighan and Dennis M. Ritchie (1988), _The C programming Language_. Prentice-Hall, p. 81.
7.  **[^](https://en.wikipedia.org/wiki/Array_(data_type)#cite_ref-7 "Jump up")** [Edsger W. Dijkstra](https://en.wikipedia.org/wiki/Edsger_W._Dijkstra "Edsger W. Dijkstra"), "[Why numbering should start at zero](http://www.cs.utexas.edu/users/EWD/transcriptions/EWD08xx/EWD831.html)"

## External links\[[edit](https://en.wikipedia.org/w/index.php?title=Array_(data_type)&action=edit&section=18 "Edit section: External links")\]

![](https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Wiktionary-logo-en-v2.svg/40px-Wiktionary-logo-en-v2.svg.png)

Look up _**[array](https://en.wiktionary.org/wiki/array "wiktionary:array")**_ in Wiktionary, the free dictionary.

-   [NIST's Dictionary of Algorithms and Data Structures: Array](https://xlinux.nist.gov/dads/HTML/array.html)