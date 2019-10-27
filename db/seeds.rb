# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# 管理者
Admin.create(email: 'admin@gmail.com',password: 'admin1')
#   Character.create(name: 'Luke', movie: movies.first)
# 付属品
Accessory.create!(accessorie_name: 'アームミラー')
Accessory.create(accessorie_name: 'ハンドルミラー')
Accessory.create(accessorie_name: 'ボトルケージ')
Accessory.create(accessorie_name: '補助輪')
Accessory.create(accessorie_name: 'ギアチェンジ')
Accessory.create(accessorie_name: 'スマホホルダー')
Accessory.create(accessorie_name: 'ラック')
Accessory.create(accessorie_name: 'カゴ')
Accessory.create(accessorie_name: 'バック')
Accessory.create(accessorie_name: '子供乗せ（前）')
Accessory.create(accessorie_name: '子供乗せ（後）')
Accessory.create(accessorie_name: '鍵')

# 市
City.create(city_name: '大阪市')
City.create(city_name: '堺市')
City.create(city_name: '岸和田市')
City.create(city_name: '豊中市')
City.create(city_name: '池田市')
City.create(city_name: '吹田市')
City.create(city_name: '泉大津市')
City.create(city_name: '高槻市')
City.create(city_name: '貝塚市')
City.create(city_name: '守口市')
City.create(city_name: '枚方市')
City.create(city_name: '茨木市')
City.create(city_name: '八尾市')
City.create(city_name: '泉佐野市')
City.create(city_name: '富田林市')
City.create(city_name: '寝屋川市')
City.create(city_name: '河内長野市')
City.create(city_name: '松原市')
City.create(city_name: '大東市')
City.create(city_name: '和泉市')
City.create(city_name: '箕面市')
City.create(city_name: '柏原市')
City.create(city_name: '羽曳野市')
City.create(city_name: '門真市')
City.create(city_name: '摂津市')
City.create(city_name: '高石市')
City.create(city_name: '藤井寺市')
City.create(city_name: '東大阪市')
City.create(city_name: '泉南市')
City.create(city_name: '四條畷市')
City.create(city_name: '交野市')
City.create(city_name: '大阪狭山市')
City.create(city_name: '阪南市')

# ハンドル
Handle.create(handle_type: 'フラットバー')
Handle.create(handle_type: 'ライザーバー')
Handle.create(handle_type: 'ドロップハンドル')
Handle.create(handle_type: 'ブルホーン')
Handle.create(handle_type: '鬼ハン')

# 性別
Sex.create(sex: '男性')
Sex.create(sex: '女性')
Sex.create(sex: 'その他')

# 預金種別
DepositType.create(deposit_type: '普通貯金')
DepositType.create(deposit_type: '通常貯蓄貯金')
DepositType.create(deposit_type: '通常貯金')
DepositType.create(deposit_type: '総合口座')
DepositType.create(deposit_type: '一般振替口座')

# 自転車種類
BicycleType.create(bicycle_type: 'ロードバイク')
BicycleType.create(bicycle_type: 'マウンテンバイク')
BicycleType.create(bicycle_type: 'クロスバイク')
BicycleType.create(bicycle_type: 'シクロクロス')
BicycleType.create(bicycle_type: 'ピストバイク')
BicycleType.create(bicycle_type: 'ミニベロ')
BicycleType.create(bicycle_type: 'シティサイクル(ママチャリ)')
BicycleType.create(bicycle_type: '折りたたみ自転車')
BicycleType.create(bicycle_type: '電動アシスト自転車')