/// 5最长回文子串
/// - Parameter s: 输入的字符串
/// - Returns: 返回最长回文子串

func longestPalindrome(_ s: String) -> String {

    if s.count == 0 {
        return ""
    }

    if s.count == 1 {
        return s
    }

    // 字符串预处理
    var ss = [Character]()
    for c in s {
        ss.append("#")
        ss.append(c)                                                           
    }
    ss.append("#")

    var p = Array<Int>(repeating: 0, count: s.count * 2 + 1)
    var i = 1, mx = 0, center = 0, j = 0
    var maxCenter = 0
    while i < ss.count {
        // 说明以i为中心时，已有匹配的回文字符子串
        if mx - i > 0 {
            // i关于对称中心id的对称点
            j = 2 * center - i
            p[i] = min(p[j], mx - i)
        } else {
            p[i] = 1
        }
        if i - p[i] >= 0 && i + p[i] < ss.count {
            while ss[i - p[i]] == ss[i + p[i]] {
                p[i] += 1
                if i - p[i] < 0 || i + p[i] >= ss.count {
                    break
                }
            }
        }
        if p[i] + i > mx {
            mx = p[i] + i
            center = i
        }
        if p[maxCenter] < p[i] {
            maxCenter = i
        }
        i += 1
    }
    let ret = ss[(maxCenter - p[maxCenter] + 1) ... (maxCenter + p[maxCenter] - 1)].filter { $0 != "#"}
    return String(ret)
}

