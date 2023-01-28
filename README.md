# BrotOS
1/28 error.hppのcode_names_がなぜか同クラス内のメンバ関数からアクセスしようとするとリンクエラー。code_names_をstd::arrayからchar const * [20]に変えて回避できたので一旦これで応急処置
