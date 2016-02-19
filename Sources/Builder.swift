//
//  Builder.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/11/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

// MARK: Builder

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, Value>(create: (A) -> Value) -> (A) -> Value {
    return { a in
        create(a)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, Value>(create: (A, B) -> Value) -> (A, B) -> Value {
    return { a, b in
        create(a, b)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, Value>(create: (A, B, C) -> Value) -> (A, B, C) -> Value {
    return { a, b, c in
        create(a, b, c)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, Value>(create: (A, B, C, D) -> Value) -> (A, B, C, D) -> Value {
    return { a, b, c, d in
        create(a, b, c, d)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, Value>(create: (A, B, C, D, E) -> Value) -> (A, B, C, D, E) -> Value {
    return { a, b, c, d, e in
        create(a, b, c, d, e)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, Value>(create: (A, B, C, D, E, F) -> Value) -> (A, B, C, D, E, F) -> Value {
    return { a, b, c, d, e, f in
        create(a, b, c, d, e, f)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, Value>(create: (A, B, C, D, E, F, G) -> Value) -> (A, B, C, D, E, F, G) -> Value {
    return { a, b, c, d, e, f, g in
        create(a, b, c, d, e, f, g)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, Value>(create: (A, B, C, D, E, F, G, H) -> Value) -> (A, B, C, D, E, F, G, H) -> Value {
    return { a, b, c, d, e, f, g, h in
        create(a, b, c, d, e, f, g, h)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, Value>(create: (A, B, C, D, E, F, G, H, I) -> Value) -> (A, B, C, D, E, F, G, H, I) -> Value {
    return { a, b, c, d, e, f, g, h, i in
        create(a, b, c, d, e, f, g, h, i)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, Value>(create: (A, B, C, D, E, F, G, H, I, J) -> Value) -> (A, B, C, D, E, F, G, H, I, J) -> Value {
    return { a, b, c, d, e, f, g, h, i, j in
        create(a, b, c, d, e, f, g, h, i, j)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, K, Value>(create: (A, B, C, D, E, F, G, H, I, J, K) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K) -> Value {
    return { a, b, c, d, e, f, g, h, i, j, k in
        create(a, b, c, d, e, f, g, h, i, j, k)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, K, L, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L) -> Value {
    return { a, b, c, d, e, f, g, h, i, j, k, l in
        create(a, b, c, d, e, f, g, h, i, j, k, l)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M) -> Value {
    return { a, b, c, d, e, f, g, h, i, j, k, l, m in
        create(a, b, c, d, e, f, g, h, i, j, k, l, m)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N) -> Value {
    return { a, b, c, d, e, f, g, h, i, j, k, l, m, n in
        create(a, b, c, d, e, f, g, h, i, j, k, l, m, n)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O) -> Value {
    return { a, b, c, d, e, f, g, h, i, j, k, l, m, n, o in
        create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) -> Value {
    return { a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p in
        create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q) -> Value {
    return { a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q in
        create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R) -> Value {
    return { a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r in
        create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S) -> Value {
    return { a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s in
        create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T) -> Value {
    return { a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t in
        create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U) -> Value {
    return { a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u in
        create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V) -> Value {
    return { a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v in
        create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W) -> Value {
    return { a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w in
        create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X) -> Value {
    return { a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x in
        create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y) -> Value {
    return { a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y in
        create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y)
    }
}

@available(*, deprecated, message="Use the given initializer directly instead")
public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z) -> Value) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z) -> Value {
    return { a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z in
        create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z)
    }
}
