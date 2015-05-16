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

public func build<A, B>(a: A?, b: B?) -> (A, B)? {
    if let a = a, b = b {
        return (a, b)
    }
    return nil
}

public func build<A, B, C>(a: A?, b: B?, c: C?) -> (A, B, C)? {
    if let a = a, b = b, c = c {
        return (a, b, c)
    }
    return nil
}

public func build<A, B, C, D>(a: A?, b: B?, c: C?, d: D?) -> (A, B, C, D)? {
    if let a = a, b = b, c = c, d = d {
        return (a, b, c, d)
    }
    return nil
}

public func build<A, B, C, D, E>(a: A?, b: B?, c: C?, d: D?, e: E?) -> (A, B, C, D, E)? {
    if let a = a, b = b, c = c, d = d, e = e {
        return (a, b, c, d, e)
    }
    return nil
}

public func build<A, B, C, D, E, F>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?) -> (A, B, C, D, E, F)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f {
        return (a, b, c, d, e, f)
    }
    return nil
}

public func build<A, B, C, D, E, F, G>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?, g: G?) -> (A, B, C, D, E, F, G)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f, g = g {
        return (a, b, c, d, e, f, g)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?, g: G?, h: H?) -> (A, B, C, D, E, F, G, H)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f, g = g, h = h {
        return (a, b, c, d, e, f, g, h)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?, g: G?, h: H?, i: I?) -> (A, B, C, D, E, F, G, H, I)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f, g = g, h = h, i = i {
        return (a, b, c, d, e, f, g, h, i)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?, g: G?, h: H?, i: I?, j: J?) -> (A, B, C, D, E, F, G, H, I, J)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f, g = g, h = h, i = i, j = j {
        return (a, b, c, d, e, f, g, h, i, j)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?, g: G?, h: H?, i: I?, j: J?, k: K?) -> (A, B, C, D, E, F, G, H, I, J, K)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f, g = g, h = h, i = i, j = j, k = k {
        return (a, b, c, d, e, f, g, h, i, j, k)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?, g: G?, h: H?, i: I?, j: J?, k: K?, l: L?) -> (A, B, C, D, E, F, G, H, I, J, K, L)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f, g = g, h = h, i = i, j = j, k = k, l = l {
        return (a, b, c, d, e, f, g, h, i, j, k, l)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?, g: G?, h: H?, i: I?, j: J?, k: K?, l: L?, m: M?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f, g = g, h = h, i = i, j = j, k = k, l = l, m = m {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?, g: G?, h: H?, i: I?, j: J?, k: K?, l: L?, m: M?, n: N?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f, g = g, h = h, i = i, j = j, k = k, l = l, m = m, n = n {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?, g: G?, h: H?, i: I?, j: J?, k: K?, l: L?, m: M?, n: N?, o: O?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f, g = g, h = h, i = i, j = j, k = k, l = l, m = m, n = n, o = o {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?, g: G?, h: H?, i: I?, j: J?, k: K?, l: L?, m: M?, n: N?, o: O?, p: P?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f, g = g, h = h, i = i, j = j, k = k, l = l, m = m, n = n, o = o, p = p {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?, g: G?, h: H?, i: I?, j: J?, k: K?, l: L?, m: M?, n: N?, o: O?, p: P?, q: Q?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f, g = g, h = h, i = i, j = j, k = k, l = l, m = m, n = n, o = o, p = p, q = q {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?, g: G?, h: H?, i: I?, j: J?, k: K?, l: L?, m: M?, n: N?, o: O?, p: P?, q: Q?, r: R?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f, g = g, h = h, i = i, j = j, k = k, l = l, m = m, n = n, o = o, p = p, q = q, r = r {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?, g: G?, h: H?, i: I?, j: J?, k: K?, l: L?, m: M?, n: N?, o: O?, p: P?, q: Q?, r: R?, s: S?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f, g = g, h = h, i = i, j = j, k = k, l = l, m = m, n = n, o = o, p = p, q = q, r = r, s = s {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?, g: G?, h: H?, i: I?, j: J?, k: K?, l: L?, m: M?, n: N?, o: O?, p: P?, q: Q?, r: R?, s: S?, t: T?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f, g = g, h = h, i = i, j = j, k = k, l = l, m = m, n = n, o = o, p = p, q = q, r = r, s = s, t = t {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?, g: G?, h: H?, i: I?, j: J?, k: K?, l: L?, m: M?, n: N?, o: O?, p: P?, q: Q?, r: R?, s: S?, t: T?, u: U?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f, g = g, h = h, i = i, j = j, k = k, l = l, m = m, n = n, o = o, p = p, q = q, r = r, s = s, t = t, u = u {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u)
    }
    return nil
}

public func build<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V>(a: A?, b: B?, c: C?, d: D?, e: E?, f: F?, g: G?, h: H?, i: I?, j: J?, k: K?, l: L?, m: M?, n: N?, o: O?, p: P?, q: Q?, r: R?, s: S?, t: T?, u: U?, v: V?) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V)? {
    if let a = a, b = b, c = c, d = d, e = e, f = f, g = g, h = h, i = i, j = j, k = k, l = l, m = m, n = n, o = o, p = p, q = q, r = r, s = s, t = t, u = u, v = v {
        return (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v)
    }
    return nil
}
