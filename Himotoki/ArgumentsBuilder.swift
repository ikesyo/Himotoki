//
//  ArgumentsBuilder.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/11/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

// MARK: Arguments builder

public func build<A, Value>(create: (A) -> Value)(_ a: A?) -> Value? {
    if let a = a {
        return create(a)
    }
    return nil
}

public func build<A, B, Value>(create: (A, B) -> Value)(_ a: A?, @autoclosure _ b: () -> B?) -> Value? {
    if let a = a, b = b() {
        return create(a, b)
    }
    return nil
}

public func build<A, B, C, Value>(create: (A, B, C) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?) -> Value? {
    if let a = a, b = b(), c = c() {
        return create(a, b, c)
    }
    return nil
}

public func build<A, B, C, D, Value>(create: (A, B, C, D) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?) -> Value? {
    if let a = a, b = b(), c = c(), d = d() {
        return create(a, b, c, d)
    }
    return nil
}

public func build<A, B, C, D, E, Value>(create: (A, B, C, D, E) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e() {
        return create(a, b, c, d, e)
    }
    return nil
}

public func build<A, B, C, D, E, F, Value>(create: (A, B, C, D, E, F) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f() {
        return create(a, b, c, d, e, f)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, Value>(create: (A, B, C, D, E, F, G) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g() {
        return create(a, b, c, d, e, f, g)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, Value>(create: (A, B, C, D, E, F, G, H) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h() {
        return create(a, b, c, d, e, f, g, h)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, Value>(create: (A, B, C, D, E, F, G, H, I) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i() {
        return create(a, b, c, d, e, f, g, h, i)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, Value>(create: (A, B, C, D, E, F, G, H, I, J) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j() {
        return create(a, b, c, d, e, f, g, h, i, j)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, Value>(create: (A, B, C, D, E, F, G, H, I, J, K) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k() {
        return create(a, b, c, d, e, f, g, h, i, j, k)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l() {
        return create(a, b, c, d, e, f, g, h, i, j, k, l)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m() {
        return create(a, b, c, d, e, f, g, h, i, j, k, l, m)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n() {
        return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o() {
        return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p() {
        return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q() {
        return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r() {
        return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?, @autoclosure _ s: () -> S?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s() {
        return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?, @autoclosure _ s: () -> S?, @autoclosure _ t: () -> T?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t() {
        return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?, @autoclosure _ s: () -> S?, @autoclosure _ t: () -> T?, @autoclosure _ u: () -> U?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t(), u = u() {
        return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?, @autoclosure _ s: () -> S?, @autoclosure _ t: () -> T?, @autoclosure _ u: () -> U?, @autoclosure _ v: () -> V?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t(), u = u(), v = v() {
        return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?, @autoclosure _ s: () -> S?, @autoclosure _ t: () -> T?, @autoclosure _ u: () -> U?, @autoclosure _ v: () -> V?, @autoclosure _ w: () -> W?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t(), u = u(), v = v(), w = w() {
        return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?, @autoclosure _ s: () -> S?, @autoclosure _ t: () -> T?, @autoclosure _ u: () -> U?, @autoclosure _ v: () -> V?, @autoclosure _ w: () -> W?, @autoclosure _ x: () -> X?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t(), u = u(), v = v(), w = w(), x = x() {
        return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?, @autoclosure _ s: () -> S?, @autoclosure _ t: () -> T?, @autoclosure _ u: () -> U?, @autoclosure _ v: () -> V?, @autoclosure _ w: () -> W?, @autoclosure _ x: () -> X?, @autoclosure _ y: () -> Y?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t(), u = u(), v = v(), w = w(), x = x(), y = y() {
        return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, Value>(create: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z) -> Value)(_ a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?, @autoclosure _ s: () -> S?, @autoclosure _ t: () -> T?, @autoclosure _ u: () -> U?, @autoclosure _ v: () -> V?, @autoclosure _ w: () -> W?, @autoclosure _ x: () -> X?, @autoclosure _ y: () -> Y?, @autoclosure _ z: () -> Z?) -> Value? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t(), u = u(), v = v(), w = w(), x = x(), y = y(), z = z() {
        return create(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z)
    }
    return nil
}
