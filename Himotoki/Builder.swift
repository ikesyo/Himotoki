//
//  Builder.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/11/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

// MARK: Builder

public func build<A, Value>(create: (A) -> Value)(_ a: A) -> Value {
    return create(a)
}

public func build<A, B, Value>(create: (A, B) -> Value)(_ a: A, _ b: B) -> Value {
    return create(a, b)
}

public func build<A, B, C, Value>(create: (A, B, C) -> Value)(_ a: A, _ b: B, _ c: C) -> Value {
    return create(a, b, c)
}

public func build<A, B, C, D, Value>(create: (A, B, C, D) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D) -> Value {
    return create(a, b, c, d)
}

public func build<A, B, C, D, E, Value>(create: (A, B, C, D, E) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E) -> Value {
    return create(a, b, c, d, e)
}

public func build<A, B, C, D, E, F, Value>(create: (A, B, C, D, E, F) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F) -> Value {
    return create(a, b, c, d, e, f)
}

public func build<A, B, C, D, E, F, G, Value>(create: (A, B, C, D, E, F, G) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G) -> Value {
    return create(a, b, c, d, e, f, g)
}

public func build<A, B, C, D, E, F, G, H, Value>(create: (A, B, C, D, E, F, G, H) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H) -> Value {
    return create(a, b, c, d, e, f, g, h)
}

public func build<A, B, C, D, E, F, G, H, I, Value>(create: (A, B, C, D, E, F, G, H, I) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I) -> Value {
    return create(a, b, c, d, e, f, g, h, i)
}

public func build<A, B, C, D, E, F, G, H, I, J, Value>(create: (A, B, C, D, E, F, G, H, I, J) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j)
}

public func build<A, B, C, D, E, F, G, H, I, J, K, Value>(create: (A, B, C, D, E, F, G, H, I, J, K) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J, _ k: K) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j, k)
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J, _ k: K, _ l: L) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j, k, l)
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J, _ k: K, _ l: L, _ m: M) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j, k, l, m)
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J, _ k: K, _ l: L, _ m: M, _ n: N) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n)
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J, _ k: K, _ l: L, _ m: M, _ n: N, _ o: O) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o)
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J, _ k: K, _ l: L, _ m: M, _ n: N, _ o: O, _ p: P) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p)
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J, _ k: K, _ l: L, _ m: M, _ n: N, _ o: O, _ p: P, _ q: Q) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q)
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J, _ k: K, _ l: L, _ m: M, _ n: N, _ o: O, _ p: P, _ q: Q, _ r: R) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r)
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J, _ k: K, _ l: L, _ m: M, _ n: N, _ o: O, _ p: P, _ q: Q, _ r: R, _ s: S) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s)
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J, _ k: K, _ l: L, _ m: M, _ n: N, _ o: O, _ p: P, _ q: Q, _ r: R, _ s: S, _ t: T) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t)
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J, _ k: K, _ l: L, _ m: M, _ n: N, _ o: O, _ p: P, _ q: Q, _ r: R, _ s: S, _ t: T, _ u: U) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u)
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J, _ k: K, _ l: L, _ m: M, _ n: N, _ o: O, _ p: P, _ q: Q, _ r: R, _ s: S, _ t: T, _ u: U, _ v: V) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v)
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J, _ k: K, _ l: L, _ m: M, _ n: N, _ o: O, _ p: P, _ q: Q, _ r: R, _ s: S, _ t: T, _ u: U, _ v: V, _ w: W) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w)
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J, _ k: K, _ l: L, _ m: M, _ n: N, _ o: O, _ p: P, _ q: Q, _ r: R, _ s: S, _ t: T, _ u: U, _ v: V, _ w: W, _ x: X) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x)
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J, _ k: K, _ l: L, _ m: M, _ n: N, _ o: O, _ p: P, _ q: Q, _ r: R, _ s: S, _ t: T, _ u: U, _ v: V, _ w: W, _ x: X, _ y: Y) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y)
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z) -> Value)(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J, _ k: K, _ l: L, _ m: M, _ n: N, _ o: O, _ p: P, _ q: Q, _ r: R, _ s: S, _ t: T, _ u: U, _ v: V, _ w: W, _ x: X, _ y: Y, _ z: Z) -> Value {
    return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z)
}
