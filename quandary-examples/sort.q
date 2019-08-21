
Q main(int arg) {
    Q list = randomList(arg);
    Q sortedList = sort(list);
    return sortedList;
}

Q randomList(int length) {
    if (length == 0) {
        return nil;
    }
    return randomInt(100000) . randomList(length - 1);
}

Q sort(Q list) {
    if (isNil(list) != 0) return nil;
    return insert(left(list), sort(right(list)));
}

Q insert(int elem, Q list) {
    if (isNil(list) != 0) {
        return elem . nil;
    }
    if ((int)elem <= left(list)) {
        return elem . list;
    }
    return left(list) . insert(elem, right(list));
}
