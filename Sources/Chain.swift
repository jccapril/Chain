//
// Created by 蒋晨成 on 2020/6/16.
// Copyright (c) 2020 蒋晨成. All rights reserved.
//

public protocol Compatible {
    associatedtype CompatibleType
    var x: CompatibleType { get }
    static var x: CompatibleType.Type { get }
}

public extension Compatible {
    var x: ChainBox<Self> { ChainBox(value: self) }

    static var x: ChainBox<Self>.Type { ChainBox.self }
}

public struct ChainBox<T> {
    public let value: T

    public init(value: T) { self.value = value }
}

public extension ChainBox {
    var instance: T { value }
}
