# ==============================================================================
# KNOCK 6
# ==============================================================================
# ハッシュ内のキーに対応したパスを `.` 区切りで記述し、
# 該当するキーに対応する値を取り出せる関数を作りなさい。
# ※例外（存在しないキーへのパスを書いた…など）は考慮しなくても良い。
# ------------------------------------------------------------------------------
hash = {
  "top"=> {
    "first"=>  1,
    "second"=> 2,
    "third"=>  3,
  },
  "middle"=> {
    "first"=>  "left",
    "second"=> "center",
    "third"=>  "right",
  },
}

#
# path = "top.first"
# search_hash(hash, path) #=> 1
#
# path = "middle.third"
# search_hash(hash, path) #=> "right"

def search_hash(hash, path)
  split_path = path.split('.')
  p hash.dig(*split_path)
end

search_hash(hash, "top.first")