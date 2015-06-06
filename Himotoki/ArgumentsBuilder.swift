//
//  ArgumentsBuilder.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/11/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

// MARK: Arguments builder

public func build<A1>(a: A1?) -> (A1)? {
    if let a = a {
        return (a)
    }
    return nil
}

public func build<A1, A2>(a: A1?, @autoclosure b: () -> A2?) -> (A1, A2)? {
    if let a = a, b = b() {
        return (a, b)
    }
    return nil
}

public func build<A1, A2, A3>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?) -> (A1, A2, A3)? {
    if let a = a, b = b(), c = c() {
        return (a, b, c)
    }
    return nil
}

public func build<A1, A2, A3, A4>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?) -> (A1, A2, A3, A4)? {
    if let a = a, b = b(), c = c(), d = d() {
        return (a, b, c, d)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?) -> (A1, A2, A3, A4, A5)? {
    if let a = a, b = b(), c = c(), d = d(), e = e() {
        return (a, b, c, d, e)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?) -> (A1, A2, A3, A4, A5, A6)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f() {
        return (a, b, c, d, e, f)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?, @autoclosure g: () -> A7?) -> (A1, A2, A3, A4, A5, A6, A7)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g() {
        return (a, b, c, d, e, f, g)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?, @autoclosure g: () -> A7?, @autoclosure h: () -> A8?) -> (A1, A2, A3, A4, A5, A6, A7, A8)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h() {
        return (a, b, c, d, e, f, g, h)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?, @autoclosure g: () -> A7?, @autoclosure h: () -> A8?, @autoclosure i: () -> A9?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i() {
        return (a, b, c, d, e, f, g, h, i)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?, @autoclosure g: () -> A7?, @autoclosure h: () -> A8?, @autoclosure i: () -> A9?, @autoclosure j: () -> A10?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j() {
        return (a, b, c, d, e, f, g, h, i, j)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?, @autoclosure g: () -> A7?, @autoclosure h: () -> A8?, @autoclosure i: () -> A9?, @autoclosure j: () -> A10?, @autoclosure k: () -> A11?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k() {
        return (a, b, c, d, e, f, g, h, i, j, k)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?, @autoclosure g: () -> A7?, @autoclosure h: () -> A8?, @autoclosure i: () -> A9?, @autoclosure j: () -> A10?, @autoclosure k: () -> A11?, @autoclosure l: () -> A12?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l() {
        return (a, b, c, d, e, f, g, h, i, j, k, l)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?, @autoclosure g: () -> A7?, @autoclosure h: () -> A8?, @autoclosure i: () -> A9?, @autoclosure j: () -> A10?, @autoclosure k: () -> A11?, @autoclosure l: () -> A12?, @autoclosure m: () -> A13?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?, @autoclosure g: () -> A7?, @autoclosure h: () -> A8?, @autoclosure i: () -> A9?, @autoclosure j: () -> A10?, @autoclosure k: () -> A11?, @autoclosure l: () -> A12?, @autoclosure m: () -> A13?, @autoclosure n: () -> A14?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?, @autoclosure g: () -> A7?, @autoclosure h: () -> A8?, @autoclosure i: () -> A9?, @autoclosure j: () -> A10?, @autoclosure k: () -> A11?, @autoclosure l: () -> A12?, @autoclosure m: () -> A13?, @autoclosure n: () -> A14?, @autoclosure o: () -> A15?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?, @autoclosure g: () -> A7?, @autoclosure h: () -> A8?, @autoclosure i: () -> A9?, @autoclosure j: () -> A10?, @autoclosure k: () -> A11?, @autoclosure l: () -> A12?, @autoclosure m: () -> A13?, @autoclosure n: () -> A14?, @autoclosure o: () -> A15?, @autoclosure p: () -> A16?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?, @autoclosure g: () -> A7?, @autoclosure h: () -> A8?, @autoclosure i: () -> A9?, @autoclosure j: () -> A10?, @autoclosure k: () -> A11?, @autoclosure l: () -> A12?, @autoclosure m: () -> A13?, @autoclosure n: () -> A14?, @autoclosure o: () -> A15?, @autoclosure p: () -> A16?, @autoclosure q: () -> A17?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?, @autoclosure g: () -> A7?, @autoclosure h: () -> A8?, @autoclosure i: () -> A9?, @autoclosure j: () -> A10?, @autoclosure k: () -> A11?, @autoclosure l: () -> A12?, @autoclosure m: () -> A13?, @autoclosure n: () -> A14?, @autoclosure o: () -> A15?, @autoclosure p: () -> A16?, @autoclosure q: () -> A17?, @autoclosure r: () -> A18?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?, @autoclosure g: () -> A7?, @autoclosure h: () -> A8?, @autoclosure i: () -> A9?, @autoclosure j: () -> A10?, @autoclosure k: () -> A11?, @autoclosure l: () -> A12?, @autoclosure m: () -> A13?, @autoclosure n: () -> A14?, @autoclosure o: () -> A15?, @autoclosure p: () -> A16?, @autoclosure q: () -> A17?, @autoclosure r: () -> A18?, @autoclosure s: () -> A19?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?, @autoclosure g: () -> A7?, @autoclosure h: () -> A8?, @autoclosure i: () -> A9?, @autoclosure j: () -> A10?, @autoclosure k: () -> A11?, @autoclosure l: () -> A12?, @autoclosure m: () -> A13?, @autoclosure n: () -> A14?, @autoclosure o: () -> A15?, @autoclosure p: () -> A16?, @autoclosure q: () -> A17?, @autoclosure r: () -> A18?, @autoclosure s: () -> A19?, @autoclosure t: () -> A20?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?, @autoclosure g: () -> A7?, @autoclosure h: () -> A8?, @autoclosure i: () -> A9?, @autoclosure j: () -> A10?, @autoclosure k: () -> A11?, @autoclosure l: () -> A12?, @autoclosure m: () -> A13?, @autoclosure n: () -> A14?, @autoclosure o: () -> A15?, @autoclosure p: () -> A16?, @autoclosure q: () -> A17?, @autoclosure r: () -> A18?, @autoclosure s: () -> A19?, @autoclosure t: () -> A20?, @autoclosure u: () -> A21?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t(), u = u() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21, A22>(a: A1?, @autoclosure b: () -> A2?, @autoclosure c: () -> A3?, @autoclosure d: () -> A4?, @autoclosure e: () -> A5?, @autoclosure f: () -> A6?, @autoclosure g: () -> A7?, @autoclosure h: () -> A8?, @autoclosure i: () -> A9?, @autoclosure j: () -> A10?, @autoclosure k: () -> A11?, @autoclosure l: () -> A12?, @autoclosure m: () -> A13?, @autoclosure n: () -> A14?, @autoclosure o: () -> A15?, @autoclosure p: () -> A16?, @autoclosure q: () -> A17?, @autoclosure r: () -> A18?, @autoclosure s: () -> A19?, @autoclosure t: () -> A20?, @autoclosure u: () -> A21?, @autoclosure v: () -> A22?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21, A22)? {
    if let a = a, b = b(), c = c(), d = d(), e = e(), f = f(), g = g(), h = h(), i = i(), j = j(), k = k(), l = l(), m = m(), n = n(), o = o(), p = p(), q = q(), r = r(), s = s(), t = t(), u = u(), v = v() {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v)
    }
    return nil
}
