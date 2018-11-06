var pool : Array<Int> = Array(1...400)
pool.removeSubrange(265...278)
pool.removeSubrange(285...299)
pool.removeSubrange(303...319)

var exclude : Array<Int> = [122, 242, 52, 100, 330, 116, 115]

pool = pool.filter { !exclude.contains($0) }
pool.shuffle()

let loc : Int = Int.random(in : 0 ..< pool.count)
let luckyOne : Int = pool[loc]

print("당첨 번호는 \(luckyOne)입니다! 축하합니다 🎉")
