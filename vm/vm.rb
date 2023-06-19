class VendingMachine
  # ステップ０　お金の投入と払い戻しの例コード
  # ステップ１　扱えないお金の例コード

  # 10円玉、50円玉、100円玉、500円玉、1000円札を１つずつ投入できる。
  MONEY = [10, 50, 100, 500, 1000].freeze

  # （自動販売機に投入された金額をインスタンス変数の @slot_money に代入する）
  def initialize
    # 最初の自動販売機に入っている金額は0円
    @slot_money = 0
    @cola = {name: "コーラ", price: 150, stock: 5 }
    @water = {name: "水", price: 100, stock: 5 }
    @red_bull = {name: "レッドブル",price: 200, stock: 5 }
    @sales = 0
    @drinks = [@cola, @water, @red_bull]
  end

  def inform
    p @drinks.map do |drink|
      drink[:price] < @slot_money && drink[:stock] => 1
  end

end

  # 投入金額の総計を取得できる。
  def current_slot_money
    # 自動販売機に入っているお金を表示する
    @slot_money
  end

  # 10円玉、50円玉、100円玉、500円玉、1000円札を１つずつ投入できる。
  # 投入は複数回できる。
  def slot_money(money)
    # 想定外のもの（１円玉や５円玉。千円札以外のお札、そもそもお金じゃないもの（数字以外のもの）など）
    # が投入された場合は、投入金額に加算せず、それをそのまま釣り銭としてユーザに出力する。
    return ”対応していないものです” unless MONEY.include?(money)
    # 自動販売機にお金を入れる
    @slot_money += money
  end

  # 払い戻し操作を行うと、投入金額の総計を釣り銭として出力する。
  def return_money
    # 返すお金の金額を表示する
    puts @slot_money
    # 自動販売機に入っているお金を0円に戻す
    @slot_money = 0
  end

  def sell(drinks)
    case drinks
    when @cola
    
      if @cola[:stock] == 0 
        puts "売り切れ"
      elsif  @cola[:price] > @slot_money
        puts "お金を入れて"
      else 
        @cola[:stock] -= 1
        @sales += @cola[:price]
        @slot_money -= @cola[:price]
      end
    
    when @water

      if @water[:stock] == 0 
        puts "売り切れ"
      elsif  @water[:price] > @slot_money
        puts "お金を入れて"
      else 
        @water[:stock] -= 1
        @sales += @water[:price]
        @slot_money -= @water[:price]
      end

    when @red_bull

      if @red_bull[:stock] == 0 
        puts "売り切れ"
      elsif  @red_bull[:price] > @slot_money
        puts "お金を入れて"
      else 
        @red_bull[:stock] -= 1
        @sales += @red_bull[:price]
        @slot_money -= @red_bull[:price]
      end


    # puts @cola[:stock]
    # puts @sales
    # puts @slot_money
  end

  def test
    puts @drinks[0]
  end

  
  
  def replenished(drink_name,drink_price,drink_stock)
    drink_name = {}
    drink_name [price] = drink_price
    drink_name [stock] = drink_stock
    drinks = {}
    drinks [drink_nmae] = drink_
    #drink_types = {name: drink_name, price: drink_price, stock: drink_stock}
    @drinks = { drink_name: {price: drink_price, stock: drink_stock}}
    #drinks << drink_types
    @cola = {price: 150, stock: 5 }
    @water = {price: 150, stock: 5 }
    @tea = {price: 150, stock: 5 }  
  end


  def 
end

# http://devtesting.jp/tddbc/?TDDBC%E5%A4%A7%E9%98%AA3.0%2F%E8%AA%B2%E9%A1%8C