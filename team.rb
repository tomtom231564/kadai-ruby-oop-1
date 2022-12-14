# クラス定義
class Team

  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose,:draw
  
  # インスタンスを初期化するための、特別なメソッド
  def initialize(name,win,lose,draw)
    
    self.name =name
    self.win = win
    self.lose = lose
    self.draw=draw
  end

  # インスタンスが持つメソッド（処理）
  def calc_win_rate()
    #勝率を戻り値とするメソッドにしてください。勝率は 勝ち数/(勝ち数+負け数) で算出
    syouritu=(self.win.to_f) / (self.lose+self.win)
    return syouritu
  end
  
  def show_team_result()
    #インスタンス変数の値を使って 
    #○○ の2020年の成績は △△勝 □□敗 ☆☆分、勝率は 0.▽▽▽▽▽▽です。 と表示するメソッド
  
    syouritu=calc_win_rate()
    puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は#{syouritu}です。"
  end

end

# インスタンスの生成と、変数への代入
#6チーム分の Team クラスのインスタンスを生成しinitializeで
#各インスタンス変数（名前・勝ち数・負け数・引き分け数）を初期化してください
giants = Team.new("Giants",67,45,8)
tigers= Team.new("Tigers",60,53,7)
dragons= Team.new("Dragons",60,55,5)
bayStars= Team.new("BayStars",56,58,6)
carp= Team.new("Carp",52,56,12)
swallows= Team.new("Swallows",41,69,10)


# インスタンスの使用
#各インスタンスの show_team_result メソッドを呼び出して、
#「出力結果」のように表示してください
giants.show_team_result()
tigers.show_team_result()
dragons.show_team_result()
bayStars.show_team_result()
carp.show_team_result()
swallows.show_team_result()