//
//  Builder.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/11/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

// MARK: Builder

#if !os(Linux)
@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, Value>(_ create: (A) -> Value) -> (A) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, Value>(_ create: (A, B) -> Value) -> (A, B) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, Value>(_ create: (A, B, C) -> Value) -> (A, B, C) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, Value>(_ create: (A, B, C, D) -> Value) -> (A, B, C, D) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, Value>(_ create: (A, B, C, D, E) -> Value) -> (A, B, C, D, E) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, Value>(_ create: (A, B, C, D, E, F) -> Value) -> (A, B, C, D, E, F) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, Value>(_ create: (A, B, C, D, E, F, G) -> Value) -> (A, B, C, D, E, F, G) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, Value>(_ create: (A, B, C, D, E, F, G, H) -> Value) -> (A, B, C, D, E, F, G, H) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, Value>(_ create: (A, B, C, D, E, F, G, H, I) -> Value) -> (A, B, C, D, E, F, G, H, I) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, Value>(_ create: (A, B, C, D, E, F, G, H, I, J) -> Value) -> (A, B, C, D, E, F, G, H, I, J) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, K, Value>(_ create: (A, B, C, D, E, F, G, H, I, J, K) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, K, L, Value>(_ create: (A, B, C, D, E, F, G, H, I, J, K, L) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, Value>(_ create: (A, B, C, D, E, F, G, H, I, J, K, L, M) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, Value>(_ create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, Value>(_ create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Value>(_ create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, Value>(_ create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, Value>(_ create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, Value>(_ create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, Value>(_ create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, Value>(_ create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, Value>(_ create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, Value>(_ create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Value>(_ create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Value>(_ create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y) -> Value {}

@available(*, unavailable, message:"Use the given initializer directly instead")
@noreturn public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, Value>(_ create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z) -> Value {}
#endif
