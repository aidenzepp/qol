const std = @import("std");

/// Creates an array of elements split into groups the length of size. If array
/// can't be split evenly, the final chunk will be the remaining elements.
///
/// Arguments:
/// - [comptime] T (type): The generic type of the array.
/// - array ([]T): The array to process.
/// - size (usize): The length of each chunk.
///
/// Returns:
/// - (?[]T): Returns the new array of chunks if the provided slice is non-empty,
/// and null otherwise.
pub fn chunk(comptime T: type, array: []T, size: usize) ?[]T {
    _ = array;
    _ = size;

    return null;
}

/// Creates an array with all falsey values removed. The values false, null, 0,
/// "", undefined, and NaN are falsey.
///
/// Arguments:
/// - [comptime] T (type): The generic type of the array.
/// - array ([]T): The array to compact.
///
/// Returns:
/// - (?[]T): Returns the new array of filtered values if the provided slice is
/// non-empty and null otherwise.
pub fn compact(comptime T: type, array: []T) ?[]T {
    _ = array;

    return null;
}

/// Creates a new array concatenating array with any additional arrays and/or values.
///
/// Arguments:
/// - [comptime] T (type): The generic type of the array and the values.
/// - array ([]T): The array to concatenate.
/// - values ([]T): The values to concatenate.
///
/// Returns:
/// - (?[]T): Returns the new concatenated array if the provided slices are non-empty
/// and null otherwise.
pub fn concat(comptime T: type, array: []T, values: []T) ?[]T {
    _ = array;
    _ = values;

    return null;
}

/// Creates an array of array values not included in the other given arrays
/// using SameValueZero for equality comparisons. The order and references of
/// result values are determined by the first array.
///
/// Arguments:
/// - [comptime] T (type): The generic type of the array and the values.
/// - array ([]T): The array to inspect.
/// - values ([]T): The values to exclude.
///
/// Returns:
/// - (?[]T): Returns the new array of filtered values if the provided slices are
/// non-empty and null otherwise.
pub fn difference(comptime T: type, array: []T, values: []T) ?[]T {
    _ = array;
    _ = values;

    return null;
}

/// This method is like _.difference except that it accepts iteratee which is
/// invoked for each element of array and values to generate the criterion by
/// which they're compared. The order and references of result values are
/// determined by the first array. The iteratee is invoked with one argument:
/// (value).
///
/// Arguments:
/// - [comptime] T (type): The generic type of the array and the values.
/// - array ([]T): The array to inspect.
/// - values ([]T): The values to exclude.
/// - iteratee (fn(T, T) bool): The iteratee invoked per element.
///
/// Returns:
/// - (?[]T): Returns the new array of filtered values if the provided slices
/// are non-empty and null otherwise.
pub fn differenceBy(comptime T: type, array: []T, values: []T, iteratee: *const fn (T, T) bool) ?[]T {
    _ = array;
    _ = values;
    _ = iteratee;

    return null;
}

/// This method is like _.difference except that it accepts comparator which is
/// invoked to compare elements of array to values. The order and references of
/// result values are determined by the first array. The comparator is invoked
/// with two arguments: (arrVal, othVal).
///
/// Arguments:
/// - [comptime] T (type): The generic type of the array and the values.
/// - array ([]T): The array to inspect.
/// - values ([]T): The values to exclude.
/// - comparator (fn(T, T) bool): The comparator invoked per element.
///
/// Returns:
/// - (?[]T): Returns the new array of filtered values if the provided slices
/// are non-empty and null otherwise.
pub fn differenceWith(comptime T: type, array: []T, values: []T, comparator: *const fn (T, T) bool) ?[]T {
    _ = array;
    _ = values;
    _ = comparator;

    return null;
}

/// Creates a slice of array with n elements dropped from the beginning.
///
/// Arguments:
/// - [comptime] T (type): The generic type of the array.
/// - array ([]T): The array to query.
/// - n (usize): The number of elements to drop.
///
/// Returns:
/// - (?[]T): Returns the slice of the array if the array is non-empty and null
/// otherwise.
pub fn drop(comptime T: type, array: []T, n: usize) ?[]T {
    if (array.len > 0 and array.len > n) {
        return array[0..n];
    }

    return null;
}

pub fn dropRight(comptime T: type, array: []T, n: usize) ?[]T {
    if (array.len > 0 and array.len > n) {
        return array[n..(array.len - n)];
    }

    return null;
}

pub fn dropRightWhile(comptime T: type, array: []T, predicate: fn (T) bool) ?[]T {
    for (0..array.len) |i| {
        const n: usize = array.len - i;

        if (!predicate(array[n])) {
            return array[0..n];
        }
    }

    return null;
}

pub fn dropWhile(comptime T: type, array: []T, predicate: *const fn (T) bool) ?[]T {
    for (0..array.len) |i| {
        if (!predicate(array[i])) {
            return array[0..i];
        }
    }

    return null;
}

pub fn fill(comptime T: type, array: []T, value: T, start: usize, end: usize) ?[]T {
    if (start > end) return null;

    for (start..end) |i| {
        array[i] = value;
    }

    return array;
}

pub fn findIndex(comptime T: type, array: []T, predicate: fn (T) bool, start: usize) ?usize {
    if (start > array.len) return null;

    for (start..array.len) |i| {
        if (predicate(array[i])) {
            return i;
        }
    }

    return null;
}

pub fn findLastIndex(comptime T: type, array: []T, predicate: *const fn (T) bool, end: usize) ?usize {
    _ = array;
    _ = predicate;
    _ = end;

    return null;
}

pub fn flatten(comptime T: type, array: []T) ?[]T {
    _ = array;

    return null;
}

pub fn flattenDeep(comptime T: type, array: []T) ?[]T {
    _ = array;

    return null;
}

pub fn flattenDepth(comptime T: type, array: []T, depth: usize) ?[]T {
    _ = array;
    _ = depth;

    return null;
}

pub fn fromPairs(comptime _: type) void {}

pub fn head(comptime T: type, array: []T) ?T {
    if (array.len > 0) {
        return array[0];
    }

    return null;
}

pub fn indexOf(comptime T: type, array: []T, value: T, from: usize) ?usize {
    _ = array;
    _ = value;
    _ = from;

    return null;
}

pub fn initial(comptime T: type, array: []T) ?[]T {
    if (array.len > 0) {
        return array[0..(array.len - 1)];
    }

    return null;
}

pub fn intersection(comptime T: type, array: []T, values: []T) ?[]T {
    _ = array;
    _ = values;

    return null;
}

pub fn intersectionBy(comptime T: type, array: []T, values: []T, iteratee: *const fn (T, T) bool) ?[]T {
    _ = array;
    _ = values;
    _ = iteratee;

    return null;
}

pub fn intersectionWith(comptime T: type, array: []T, values: []T, comparator: *const fn (T, T) bool) ?[]T {
    _ = array;
    _ = values;
    _ = comparator;

    return null;
}

pub fn join(comptime T: type, array: []T, separator: u8) ?[]const u8 {
    _ = array;
    _ = separator;

    return null;
}

pub fn last(comptime T: type, array: []T) ?T {
    _ = array;

    return null;
}

pub fn lastIndexOf(comptime T: type, array: []T, value: T, from: usize) ?usize {
    _ = array;
    _ = value;
    _ = from;

    return null;
}

pub fn nth(comptime T: type, array: []T, n: isize) ?T {
    if (n > -1 and n < array.len) {
        return array[n];
    }

    if (n < 0 and n * -1 < array.len) {
        return array[array.len - n];
    }

    return null;
}

pub fn pull(comptime T: type, array: []T, value: T) ?[]T {
    _ = array;
    _ = value;

    return null;
}

pub fn pullAll(comptime T: type, array: []T, values: []T) ?[]T {
    _ = array;
    _ = values;

    return null;
}

pub fn pullAllBy(comptime T: type, array: []T, values: []T, iteratee: *const fn (T, T) bool) ?[]T {
    _ = array;
    _ = values;
    _ = iteratee;

    return null;
}

pub fn pullAllWith(comptime T: type, array: []T, values: []T, comparator: *const fn (T, T) bool) ?[]T {
    _ = array;
    _ = values;
    _ = comparator;

    return null;
}

pub fn pullAt(comptime T: type, array: []T, indexes: []usize) ?[]T {
    _ = array;
    _ = indexes;

    return null;
}

pub fn remove(comptime T: type, array: []T, predicate: *const fn (T) bool) ?[]T {
    _ = array;
    _ = predicate;

    return null;
}

pub fn reverse(comptime T: type, array: []T) ?[]T {
    _ = array;

    return null;
}

pub fn slice(comptime T: type, array: []T, start: ?usize, end: ?usize) ?[]T {
    const s: usize = start orelse 0;
    const e: usize = end orelse array.len;

    if (s < e and e < array.len) {
        return array[s..e];
    }

    return null;
}

pub fn sortedIndex(comptime T: type, array: []T, value: T) ?usize {
    _ = array;
    _ = value;

    return null;
}

pub fn sortedIndexBy(comptime T: type, array: []T, value: T, iteratee: *const fn (T, T) bool) ?usize {
    _ = array;
    _ = value;
    _ = iteratee;

    return null;
}

pub fn sortedIndexOf(comptime T: type, array: []T, value: T) ?usize {
    _ = array;
    _ = value;

    return null;
}

pub fn sortedLastIndex(comptime T: type, array: []T, value: T) ?usize {
    _ = array;
    _ = value;

    return null;
}

pub fn sortedLastIndexBy(comptime T: type, array: []T, value: T, iteratee: *const fn (T, T) bool) ?usize {
    _ = array;
    _ = value;
    _ = iteratee;

    return null;
}

pub fn sortedLastIndexOf(comptime T: type, array: []T, value: T) ?usize {
    _ = array;
    _ = value;

    return null;
}

pub fn sortedUniq(comptime T: type, array: []T) ?[]T {
    _ = array;

    return null;
}

pub fn sortedUniqBy(comptime T: type, array: []T, iteratee: *const fn (T) bool) ?[]T {
    _ = array;
    _ = iteratee;

    return null;
}

pub fn tail(comptime T: type, array: []T) ?T {
    if (array.len > 0) {
        return array[array.len - 1];
    }

    return null;
}

pub fn take(comptime T: type, array: []T, n: usize) ?[]T {
    _ = array;
    _ = n;

    return null;
}

pub fn takeRight(comptime T: type, array: []T, n: usize) ?[]T {
    _ = array;
    _ = n;

    return null;
}

pub fn takeRightWhile(comptime T: type, array: []T, predicate: *const fn (T) bool) ?[]T {
    _ = array;
    _ = predicate;

    return null;
}

pub fn takeWhile(comptime T: type, array: []T, predicate: *const fn (T) bool) ?[]T {
    _ = array;
    _ = predicate;

    return null;
}

pub fn unioned(comptime T: type, array: []T, values: []T) ?[]T {
    _ = array;
    _ = values;

    return null;
}

pub fn unionBy(comptime T: type, array: []T, values: []T, iteratee: *const fn (T, T) bool) ?[]T {
    _ = array;
    _ = values;
    _ = iteratee;

    return null;
}

pub fn unionWith(comptime T: type, array: []T, values: []T, comparator: *const fn (T, T) bool) ?[]T {
    _ = array;
    _ = values;
    _ = comparator;

    return null;
}

pub fn uniq(comptime T: type, array: []T) ?[]T {
    _ = array;

    return null;
}

pub fn uniqBy(comptime T: type, array: []T, iteratee: *const fn (T) bool) ?[]T {
    _ = array;
    _ = iteratee;

    return null;
}

pub fn uniqWith(comptime T: type, array: []T, comparator: *const fn (T) bool) ?[]T {
    _ = array;
    _ = comparator;

    return null;
}

// FIXME:
pub fn unzip(comptime T: type, array: [][]T) ?[]T {
    _ = array;

    return null;
}

// FIXME:
pub fn unzipWith(comptime T: type, array: [][]T) ?[]T {
    _ = array;

    return null;
}

pub fn without(comptime T: type, array: []T, values: []T) ?[]T {
    _ = array;
    _ = values;

    return null;
}

pub fn xor(comptime T: type, array: []T, values: []T) ?[]T {
    _ = array;
    _ = values;

    return null;
}

pub fn xorBy(comptime T: type, array: []T, values: []T, iteratee: *const fn (T, T) bool) ?[]T {
    _ = array;
    _ = values;
    _ = iteratee;

    return null;
}

pub fn xorWith(comptime T: type, array: []T, values: []T, comparator: *const fn (T, T) bool) ?[]T {
    _ = array;
    _ = values;
    _ = comparator;

    return null;
}

pub fn zip(comptime T: type, array: []T, values: []T) ?[]T {
    _ = array;
    _ = values;

    return null;
}

pub fn zipObject(comptime props: []const u8, comptime values: anytype) !type {
    _ = props;
    _ = values;

    return struct {};
}

pub fn zipObjectDeep(comptime props: []const u8, comptime values: anytype) !type {
    _ = props;
    _ = values;

    return struct {};
}

pub fn zipWith(comptime T: type, array: []T, values: []T, iteratee: *const fn (T, T) bool) ?[]T {
    _ = array;
    _ = values;
    _ = iteratee;

    return null;
}
