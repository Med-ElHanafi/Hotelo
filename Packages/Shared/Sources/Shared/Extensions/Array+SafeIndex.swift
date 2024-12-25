//
//  Array+SafeIndex.swift
//  HoteloUI
//
//  Created by Mohamed El hanafi on 03/12/2024.
//


extension Array {
    public subscript(safeIndex index: Int) -> Element? {
        guard indices.contains(index) else {
            return nil
        }

        return self[index]
    }
}