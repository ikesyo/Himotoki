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

public func build<A, B>(a: A?, @autoclosure b: () -> B?) -> (A, B)? {
    if let a = a, b = b() {
        return (a, b)
    }
    return nil
}

public func build<A, B, C>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?) -> (A, B, C)? {
    if let a = a, b = b(), c = c() {
        return (a, b, c)
    }
    return nil
}

public func build<A, B, C, D>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?) -> (A, B, C, D)? {
    if let a = a, b = b(), c = c(), d = d() {
        return (a, b, c, d)
    }
    return nil
}

public func build<A, B, C, D, E>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?) -> (A, B, C, D, E)? {
    if let a = a, b = b(), c = c(), d = d(), e = e() {
        return (a, b, c, d, e)
    }
    return nil
}

public func build<A, B, C, D, E, F>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?) -> (A, B, C, D, E, F)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f() {
        return (a, b, c, d, e, f)
    }
    return nil
}

public func build<A, B, C, D, E, F, G>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?, @autoclosure g: () -> G?) -> (A, B, C, D, E, F, G)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g() {
        return (a, b, c, d, e, f, g)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?, @autoclosure g: () -> G?, @autoclosure h: () -> H?) -> (A, B, C, D, E, F, G, H)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h() {
        return (a, b, c, d, e, f, g, h)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?, @autoclosure g: () -> G?, @autoclosure h: () -> H?, @autoclosure i: () -> I?) -> (A, B, C, D, E, F, G, H, I)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i() {
        return (a, b, c, d, e, f, g, h, i)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?, @autoclosure g: () -> G?, @autoclosure h: () -> H?, @autoclosure i: () -> I?, @autoclosure j: () -> J?) -> (A, B, C, D, E, F, G, H, I, J)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j() {
        return (a, b, c, d, e, f, g, h, i, j)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?, @autoclosure g: () -> G?, @autoclosure h: () -> H?, @autoclosure i: () -> I?, @autoclosure j: () -> J?, @autoclosure k: () -> K?) -> (A, B, C, D, E, F, G, H, I, J, K)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k() {
        return (a, b, c, d, e, f, g, h, i, j, k)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?, @autoclosure g: () -> G?, @autoclosure h: () -> H?, @autoclosure i: () -> I?, @autoclosure j: () -> J?, @autoclosure k: () -> K?, @autoclosure l: () -> L?) -> (A, B, C, D, E, F, G, H, I, J, K, L)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l() {
        return (a, b, c, d, e, f, g, h, i, j, k, l)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?, @autoclosure g: () -> G?, @autoclosure h: () -> H?, @autoclosure i: () -> I?, @autoclosure j: () -> J?, @autoclosure k: () -> K?, @autoclosure l: () -> L?, @autoclosure m: () -> M?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?, @autoclosure g: () -> G?, @autoclosure h: () -> H?, @autoclosure i: () -> I?, @autoclosure j: () -> J?, @autoclosure k: () -> K?, @autoclosure l: () -> L?, @autoclosure m: () -> M?, @autoclosure n: () -> N?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?, @autoclosure g: () -> G?, @autoclosure h: () -> H?, @autoclosure i: () -> I?, @autoclosure j: () -> J?, @autoclosure k: () -> K?, @autoclosure l: () -> L?, @autoclosure m: () -> M?, @autoclosure n: () -> N?, @autoclosure o: () -> O?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?, @autoclosure g: () -> G?, @autoclosure h: () -> H?, @autoclosure i: () -> I?, @autoclosure j: () -> J?, @autoclosure k: () -> K?, @autoclosure l: () -> L?, @autoclosure m: () -> M?, @autoclosure n: () -> N?, @autoclosure o: () -> O?, @autoclosure p: () -> P?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?, @autoclosure g: () -> G?, @autoclosure h: () -> H?, @autoclosure i: () -> I?, @autoclosure j: () -> J?, @autoclosure k: () -> K?, @autoclosure l: () -> L?, @autoclosure m: () -> M?, @autoclosure n: () -> N?, @autoclosure o: () -> O?, @autoclosure p: () -> P?, @autoclosure q: () -> Q?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?, @autoclosure g: () -> G?, @autoclosure h: () -> H?, @autoclosure i: () -> I?, @autoclosure j: () -> J?, @autoclosure k: () -> K?, @autoclosure l: () -> L?, @autoclosure m: () -> M?, @autoclosure n: () -> N?, @autoclosure o: () -> O?, @autoclosure p: () -> P?, @autoclosure q: () -> Q?, @autoclosure r: () -> R?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?, @autoclosure g: () -> G?, @autoclosure h: () -> H?, @autoclosure i: () -> I?, @autoclosure j: () -> J?, @autoclosure k: () -> K?, @autoclosure l: () -> L?, @autoclosure m: () -> M?, @autoclosure n: () -> N?, @autoclosure o: () -> O?, @autoclosure p: () -> P?, @autoclosure q: () -> Q?, @autoclosure r: () -> R?, @autoclosure s: () -> S?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?, @autoclosure g: () -> G?, @autoclosure h: () -> H?, @autoclosure i: () -> I?, @autoclosure j: () -> J?, @autoclosure k: () -> K?, @autoclosure l: () -> L?, @autoclosure m: () -> M?, @autoclosure n: () -> N?, @autoclosure o: () -> O?, @autoclosure p: () -> P?, @autoclosure q: () -> Q?, @autoclosure r: () -> R?, @autoclosure s: () -> S?, @autoclosure t: () -> T?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?, @autoclosure g: () -> G?, @autoclosure h: () -> H?, @autoclosure i: () -> I?, @autoclosure j: () -> J?, @autoclosure k: () -> K?, @autoclosure l: () -> L?, @autoclosure m: () -> M?, @autoclosure n: () -> N?, @autoclosure o: () -> O?, @autoclosure p: () -> P?, @autoclosure q: () -> Q?, @autoclosure r: () -> R?, @autoclosure s: () -> S?, @autoclosure t: () -> T?, @autoclosure u: () -> U?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t(), u = u() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V>(a: A?, @autoclosure b: () -> B?, @autoclosure c: () -> C?, @autoclosure d: () -> D?, @autoclosure e: () -> E?, @autoclosure f: () -> F?, @autoclosure g: () -> G?, @autoclosure h: () -> H?, @autoclosure i: () -> I?, @autoclosure j: () -> J?, @autoclosure k: () -> K?, @autoclosure l: () -> L?, @autoclosure m: () -> M?, @autoclosure n: () -> N?, @autoclosure o: () -> O?, @autoclosure p: () -> P?, @autoclosure q: () -> Q?, @autoclosure r: () -> R?, @autoclosure s: () -> S?, @autoclosure t: () -> T?, @autoclosure u: () -> U?, @autoclosure v: () -> V?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t(), u = u(), v = v() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v)
    }
    return nil
}
