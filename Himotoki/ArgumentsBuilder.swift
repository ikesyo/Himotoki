//
//  ArgumentsBuilder.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/11/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

// MARK: Arguments builder

public func build<A>(a: A?) -> (A)? {
    if let a = a {
        return (a)
    }
    return nil
}

public func build<A, B>(a: A?, @autoclosure _ b: () -> B?) -> (A, B)? {
    if let a = a, b = b() {
        return (a, b)
    }
    return nil
}

public func build<A, B, C>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?) -> (A, B, C)? {
    if let a = a, b = b(), c = c() {
        return (a, b, c)
    }
    return nil
}

public func build<A, B, C, D>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?) -> (A, B, C, D)? {
    if let a = a, b = b(), c = c(), d = d() {
        return (a, b, c, d)
    }
    return nil
}

public func build<A, B, C, D, E>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?) -> (A, B, C, D, E)? {
    if let a = a, b = b(), c = c(), d = d(), e = e() {
        return (a, b, c, d, e)
    }
    return nil
}

public func build<A, B, C, D, E, F>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?) -> (A, B, C, D, E, F)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f() {
        return (a, b, c, d, e, f)
    }
    return nil
}

public func build<A, B, C, D, E, F, G>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?) -> (A, B, C, D, E, F, G)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g() {
        return (a, b, c, d, e, f, g)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?) -> (A, B, C, D, E, F, G, H)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h() {
        return (a, b, c, d, e, f, g, h)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?) -> (A, B, C, D, E, F, G, H, I)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i() {
        return (a, b, c, d, e, f, g, h, i)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?) -> (A, B, C, D, E, F, G, H, I, J)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j() {
        return (a, b, c, d, e, f, g, h, i, j)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?) -> (A, B, C, D, E, F, G, H, I, J, K)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k() {
        return (a, b, c, d, e, f, g, h, i, j, k)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?) -> (A, B, C, D, E, F, G, H, I, J, K, L)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l() {
        return (a, b, c, d, e, f, g, h, i, j, k, l)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?, @autoclosure _ s: () -> S?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?, @autoclosure _ s: () -> S?, @autoclosure _ t: () -> T?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?, @autoclosure _ s: () -> S?, @autoclosure _ t: () -> T?, @autoclosure _ u: () -> U?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t(), u = u() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?, @autoclosure _ s: () -> S?, @autoclosure _ t: () -> T?, @autoclosure _ u: () -> U?, @autoclosure _ v: () -> V?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t(), u = u(), v = v() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?, @autoclosure _ s: () -> S?, @autoclosure _ t: () -> T?, @autoclosure _ u: () -> U?, @autoclosure _ v: () -> V?, @autoclosure _ w: () -> W?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t(), u = u(), v = v(), w = w() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?, @autoclosure _ s: () -> S?, @autoclosure _ t: () -> T?, @autoclosure _ u: () -> U?, @autoclosure _ v: () -> V?, @autoclosure _ w: () -> W?, @autoclosure _ x: () -> X?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t(), u = u(), v = v(), w = w(), x = x() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?, @autoclosure _ s: () -> S?, @autoclosure _ t: () -> T?, @autoclosure _ u: () -> U?, @autoclosure _ v: () -> V?, @autoclosure _ w: () -> W?, @autoclosure _ x: () -> X?, @autoclosure _ y: () -> Y?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t(), u = u(), v = v(), w = w(), x = x(), y = y() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z>(a: A?, @autoclosure _ b: () -> B?, @autoclosure _ c: () -> C?, @autoclosure _ d: () -> D?, @autoclosure _ e: () -> E?, @autoclosure _ f: () -> F?, @autoclosure _ g: () -> G?, @autoclosure _ h: () -> H?, @autoclosure _ i: () -> I?, @autoclosure _ j: () -> J?, @autoclosure _ k: () -> K?, @autoclosure _ l: () -> L?, @autoclosure _ m: () -> M?, @autoclosure _ n: () -> N?, @autoclosure _ o: () -> O?, @autoclosure _ p: () -> P?, @autoclosure _ q: () -> Q?, @autoclosure _ r: () -> R?, @autoclosure _ s: () -> S?, @autoclosure _ t: () -> T?, @autoclosure _ u: () -> U?, @autoclosure _ v: () -> V?, @autoclosure _ w: () -> W?, @autoclosure _ x: () -> X?, @autoclosure _ y: () -> Y?, @autoclosure _ z: () -> Z?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t(), u = u(), v = v(), w = w(), x = x(), y = y(), z = z() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z)
    }
    return nil
}
