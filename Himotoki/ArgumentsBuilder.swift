//
//  ArgumentsBuilder.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/11/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

// MARK: Arguments builder

public func build<A1>(a1: A1?) -> (A1)? {
    if let a1 = a1 {
        return (a1)
    }
    return nil
}

public func build<A1, A2>(a1: A1?, @autoclosure a2: () -> A2?) -> (A1, A2)? {
    if let a1 = a1, a2 = a2() {
        return (a1, a2)
    }
    return nil
}

public func build<A1, A2, A3>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?) -> (A1, A2, A3)? {
    if let a1 = a1, a2 = a2(), a3 = a3() {
        return (a1, a2, a3)
    }
    return nil
}

public func build<A1, A2, A3, A4>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?) -> (A1, A2, A3, A4)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4() {
        return (a1, a2, a3, a4)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?) -> (A1, A2, A3, A4, A5)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5() {
        return (a1, a2, a3, a4, a5)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?) -> (A1, A2, A3, A4, A5, A6)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6() {
        return (a1, a2, a3, a4, a5, a6)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?, @autoclosure a7: () -> A7?) -> (A1, A2, A3, A4, A5, A6, A7)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6(), a7 = a7() {
        return (a1, a2, a3, a4, a5, a6, a7)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?, @autoclosure a7: () -> A7?, @autoclosure a8: () -> A8?) -> (A1, A2, A3, A4, A5, A6, A7, A8)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6(), a7 = a7(), a8 = a8() {
        return (a1, a2, a3, a4, a5, a6, a7, a8)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?, @autoclosure a7: () -> A7?, @autoclosure a8: () -> A8?, @autoclosure a9: () -> A9?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6(), a7 = a7(), a8 = a8(), a9 = a9() {
        return (a1, a2, a3, a4, a5, a6, a7, a8, a9)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?, @autoclosure a7: () -> A7?, @autoclosure a8: () -> A8?, @autoclosure a9: () -> A9?, @autoclosure a10: () -> A10?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6(), a7 = a7(), a8 = a8(), a9 = a9(), a10 = a10() {
        return (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?, @autoclosure a7: () -> A7?, @autoclosure a8: () -> A8?, @autoclosure a9: () -> A9?, @autoclosure a10: () -> A10?, @autoclosure a11: () -> A11?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6(), a7 = a7(), a8 = a8(), a9 = a9(), a10 = a10(), a11 = a11() {
        return (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?, @autoclosure a7: () -> A7?, @autoclosure a8: () -> A8?, @autoclosure a9: () -> A9?, @autoclosure a10: () -> A10?, @autoclosure a11: () -> A11?, @autoclosure a12: () -> A12?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6(), a7 = a7(), a8 = a8(), a9 = a9(), a10 = a10(), a11 = a11(), a12 = a12() {
        return (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?, @autoclosure a7: () -> A7?, @autoclosure a8: () -> A8?, @autoclosure a9: () -> A9?, @autoclosure a10: () -> A10?, @autoclosure a11: () -> A11?, @autoclosure a12: () -> A12?, @autoclosure a13: () -> A13?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6(), a7 = a7(), a8 = a8(), a9 = a9(), a10 = a10(), a11 = a11(), a12 = a12(), a13 = a13() {
        return (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?, @autoclosure a7: () -> A7?, @autoclosure a8: () -> A8?, @autoclosure a9: () -> A9?, @autoclosure a10: () -> A10?, @autoclosure a11: () -> A11?, @autoclosure a12: () -> A12?, @autoclosure a13: () -> A13?, @autoclosure a14: () -> A14?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6(), a7 = a7(), a8 = a8(), a9 = a9(), a10 = a10(), a11 = a11(), a12 = a12(), a13 = a13(), a14 = a14() {
        return (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?, @autoclosure a7: () -> A7?, @autoclosure a8: () -> A8?, @autoclosure a9: () -> A9?, @autoclosure a10: () -> A10?, @autoclosure a11: () -> A11?, @autoclosure a12: () -> A12?, @autoclosure a13: () -> A13?, @autoclosure a14: () -> A14?, @autoclosure a15: () -> A15?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6(), a7 = a7(), a8 = a8(), a9 = a9(), a10 = a10(), a11 = a11(), a12 = a12(), a13 = a13(), a14 = a14(), a15 = a15() {
        return (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?, @autoclosure a7: () -> A7?, @autoclosure a8: () -> A8?, @autoclosure a9: () -> A9?, @autoclosure a10: () -> A10?, @autoclosure a11: () -> A11?, @autoclosure a12: () -> A12?, @autoclosure a13: () -> A13?, @autoclosure a14: () -> A14?, @autoclosure a15: () -> A15?, @autoclosure a16: () -> A16?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6(), a7 = a7(), a8 = a8(), a9 = a9(), a10 = a10(), a11 = a11(), a12 = a12(), a13 = a13(), a14 = a14(), a15 = a15(), a16 = a16() {
        return (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?, @autoclosure a7: () -> A7?, @autoclosure a8: () -> A8?, @autoclosure a9: () -> A9?, @autoclosure a10: () -> A10?, @autoclosure a11: () -> A11?, @autoclosure a12: () -> A12?, @autoclosure a13: () -> A13?, @autoclosure a14: () -> A14?, @autoclosure a15: () -> A15?, @autoclosure a16: () -> A16?, @autoclosure a17: () -> A17?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6(), a7 = a7(), a8 = a8(), a9 = a9(), a10 = a10(), a11 = a11(), a12 = a12(), a13 = a13(), a14 = a14(), a15 = a15(), a16 = a16(), a17 = a17() {
        return (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?, @autoclosure a7: () -> A7?, @autoclosure a8: () -> A8?, @autoclosure a9: () -> A9?, @autoclosure a10: () -> A10?, @autoclosure a11: () -> A11?, @autoclosure a12: () -> A12?, @autoclosure a13: () -> A13?, @autoclosure a14: () -> A14?, @autoclosure a15: () -> A15?, @autoclosure a16: () -> A16?, @autoclosure a17: () -> A17?, @autoclosure a18: () -> A18?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6(), a7 = a7(), a8 = a8(), a9 = a9(), a10 = a10(), a11 = a11(), a12 = a12(), a13 = a13(), a14 = a14(), a15 = a15(), a16 = a16(), a17 = a17(), a18 = a18() {
        return (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?, @autoclosure a7: () -> A7?, @autoclosure a8: () -> A8?, @autoclosure a9: () -> A9?, @autoclosure a10: () -> A10?, @autoclosure a11: () -> A11?, @autoclosure a12: () -> A12?, @autoclosure a13: () -> A13?, @autoclosure a14: () -> A14?, @autoclosure a15: () -> A15?, @autoclosure a16: () -> A16?, @autoclosure a17: () -> A17?, @autoclosure a18: () -> A18?, @autoclosure a19: () -> A19?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6(), a7 = a7(), a8 = a8(), a9 = a9(), a10 = a10(), a11 = a11(), a12 = a12(), a13 = a13(), a14 = a14(), a15 = a15(), a16 = a16(), a17 = a17(), a18 = a18(), a19 = a19() {
        return (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?, @autoclosure a7: () -> A7?, @autoclosure a8: () -> A8?, @autoclosure a9: () -> A9?, @autoclosure a10: () -> A10?, @autoclosure a11: () -> A11?, @autoclosure a12: () -> A12?, @autoclosure a13: () -> A13?, @autoclosure a14: () -> A14?, @autoclosure a15: () -> A15?, @autoclosure a16: () -> A16?, @autoclosure a17: () -> A17?, @autoclosure a18: () -> A18?, @autoclosure a19: () -> A19?, @autoclosure a20: () -> A20?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6(), a7 = a7(), a8 = a8(), a9 = a9(), a10 = a10(), a11 = a11(), a12 = a12(), a13 = a13(), a14 = a14(), a15 = a15(), a16 = a16(), a17 = a17(), a18 = a18(), a19 = a19(), a20 = a20() {
        return (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?, @autoclosure a7: () -> A7?, @autoclosure a8: () -> A8?, @autoclosure a9: () -> A9?, @autoclosure a10: () -> A10?, @autoclosure a11: () -> A11?, @autoclosure a12: () -> A12?, @autoclosure a13: () -> A13?, @autoclosure a14: () -> A14?, @autoclosure a15: () -> A15?, @autoclosure a16: () -> A16?, @autoclosure a17: () -> A17?, @autoclosure a18: () -> A18?, @autoclosure a19: () -> A19?, @autoclosure a20: () -> A20?, @autoclosure a21: () -> A21?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6(), a7 = a7(), a8 = a8(), a9 = a9(), a10 = a10(), a11 = a11(), a12 = a12(), a13 = a13(), a14 = a14(), a15 = a15(), a16 = a16(), a17 = a17(), a18 = a18(), a19 = a19(), a20 = a20(), a21 = a21() {
        return (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21)
    }
    return nil
}

public func build<A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21, A22>(a1: A1?, @autoclosure a2: () -> A2?, @autoclosure a3: () -> A3?, @autoclosure a4: () -> A4?, @autoclosure a5: () -> A5?, @autoclosure a6: () -> A6?, @autoclosure a7: () -> A7?, @autoclosure a8: () -> A8?, @autoclosure a9: () -> A9?, @autoclosure a10: () -> A10?, @autoclosure a11: () -> A11?, @autoclosure a12: () -> A12?, @autoclosure a13: () -> A13?, @autoclosure a14: () -> A14?, @autoclosure a15: () -> A15?, @autoclosure a16: () -> A16?, @autoclosure a17: () -> A17?, @autoclosure a18: () -> A18?, @autoclosure a19: () -> A19?, @autoclosure a20: () -> A20?, @autoclosure a21: () -> A21?, @autoclosure a22: () -> A22?) -> (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21, A22)? {
    if let a1 = a1, a2 = a2(), a3 = a3(), a4 = a4(), a5 = a5(), a6 = a6(), a7 = a7(), a8 = a8(), a9 = a9(), a10 = a10(), a11 = a11(), a12 = a12(), a13 = a13(), a14 = a14(), a15 = a15(), a16 = a16(), a17 = a17(), a18 = a18(), a19 = a19(), a20 = a20(), a21 = a21(), a22 = a22() {
        return (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22)
    }
    return nil
}
