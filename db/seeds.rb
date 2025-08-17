# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Tag.create([
  { name: '総合博物館' },
  { name: '歴史・民俗郷土資料館' },
  { name: '美術館' },
  { name: '自然観・動物園・植物園・水族館' },
  { name: '文学館・記念館' },
  { name: 'ミュージアムショップ・売店' },
  { name: 'レストラン' },
  { name: '喫茶店・喫茶コーナー' },
  { name: '図書館・レファレンスコーナー' }
])