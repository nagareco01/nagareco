# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8

Label.create(:label_name => 'ユニバーサルミュージック',)
Label.create(:label_name => 'ビデオメーカー',)
Label.create(:label_name => 'トイズファクトリー',)
Label.create(:label_name => 'POLYD',)
Label.create(:label_name => 'キングレコード',)
Label.create(:label_name => '日本コロムビア',)
Label.create(:label_name => 'エイベックス',)
Label.create(:label_name => 'ワーナーミュージック・ジャパン',)

Genre.create(:genre_name => 'J-Pop',)
Genre.create(:genre_name => 'K-Pop',)
Genre.create(:genre_name => 'Rock',)
Genre.create(:genre_name => 'House',)
Genre.create(:genre_name => 'HipHop/R&B',)
Genre.create(:genre_name => 'Techno',)
Genre.create(:genre_name => 'Soundtrack',)
Genre.create(:genre_name => 'Jazz',)

Artist.create(:artist_name => '乃木坂46',)
Artist.create(:artist_name => 'Seventeen',)
Artist.create(:artist_name => 'Boys and Men',)
Artist.create(:artist_name => 'Little Glee Monster',)
Artist.create(:artist_name => 'B2 Takes!',)
Artist.create(:artist_name => 'Hey!Say!Jump',)
Artist.create(:artist_name => 'Luna Sea',)
Artist.create(:artist_name => '宮野真守',)

Cd.create(:name => 'Sing Out!', :description => 'description', :price => '1000', :stock => '10', :sale_status => '販売中', :artist_id => '1', :label_id => '1', :genre_id => '1')
Cd.create(:name => 'Happy Ending', :description => 'description', :price => '1500', :stock => '10', :sale_status => '販売中', :artist_id => '2', :label_id => '4', :genre_id => '2')
Cd.create(:name => '頭の中のフィルム', :description => 'description', :price => '1000', :stock => '0', :sale_status => '販売停止中', :artist_id => '3', :label_id => '2', :genre_id => '3')
Cd.create(:name => '君に届くまで', :description => 'description', :price => '2000', :stock => '10', :sale_status => '販売中', :artist_id => '4', :label_id => '6', :genre_id => '4')
Cd.create(:name => 'Growing', :description => 'description', :price => '1200', :stock => '10', :sale_status => '販売中', :artist_id => '5', :label_id => '5', :genre_id => '5')
Cd.create(:name => 'Lucky Unlucky', :description => 'description', :price => '1200', :stock => '10', :sale_status => '販売中', :artist_id => '6', :label_id => '7', :genre_id => '6')
Cd.create(:name => '宇宙の詩', :description => 'description', :price => '800', :stock => '10', :sale_status => '販売中', :artist_id => '7', :label_id => '3', :genre_id => '7')
Cd.create(:name => 'アンコール', :description => 'description', :price => '3000', :stock => '10', :sale_status => '販売中', :artist_id => '8', :label_id => '8', :genre_id => '8')

Disc.create(:disc_number => '1', :cd_id => '1')
Disc.create(:disc_number => '2', :cd_id => '1')
Disc.create(:disc_number => '1', :cd_id => '2')
Disc.create(:disc_number => '1', :cd_id => '3')
Disc.create(:disc_number => '1', :cd_id => '4')
Disc.create(:disc_number => '2', :cd_id => '4')
Disc.create(:disc_number => '1', :cd_id => '5')
Disc.create(:disc_number => '1', :cd_id => '6')
Disc.create(:disc_number => '1', :cd_id => '7')
Disc.create(:disc_number => '1', :cd_id => '8')
Disc.create(:disc_number => '2', :cd_id => '8')
Disc.create(:disc_number => '3', :cd_id => '8')

Song.create(:song_name => 'Sing Out!', :song_number => '1', :disc_id => '1')
Song.create(:song_name => 'Out Sing!', :song_number => '2', :disc_id => '1')
Song.create(:song_name => 'しんぐあうと！', :song_number => '1', :disc_id => '2')
Song.create(:song_name => 'シングアウト！', :song_number => '2', :disc_id => '2')
Song.create(:song_name => 'あうとしんぐ！', :song_number => '3', :disc_id => '2')
Song.create(:song_name => 'Happy Ending', :song_number => '1', :disc_id => '3')
Song.create(:song_name => 'Ending Happy', :song_number => '2', :disc_id => '3')
Song.create(:song_name => '頭の中のフィルム', :song_number => '1', :disc_id => '4')
Song.create(:song_name => 'フィルムの中の頭', :song_number => '2', :disc_id => '4')
Song.create(:song_name => '君に届くまで', :song_number => '1', :disc_id => '5')
Song.create(:song_name => '届くまで君に', :song_number => '1', :disc_id => '6')
Song.create(:song_name => 'growing', :song_number => '1', :disc_id => '7')
Song.create(:song_name => 'ラッキーアンラッキー', :song_number => '1', :disc_id => '8')
Song.create(:song_name => '宇宙の詩', :song_number => '1', :disc_id => '9')
Song.create(:song_name => 'アンコール', :song_number => '1', :disc_id => '10')
Song.create(:song_name => 'アルコール', :song_number => '2', :disc_id => '10')
Song.create(:song_name => 'ラブコール', :song_number => '3', :disc_id => '10')
Song.create(:song_name => 'encore', :song_number => '1', :disc_id => '11')
Song.create(:song_name => 'alchol', :song_number => '2', :disc_id => '11')
Song.create(:song_name => 'love call', :song_number => '3', :disc_id => '11')
Song.create(:song_name => '餡子', :song_number => '1', :disc_id => '12')
Song.create(:song_name => 'お酒', :song_number => '2', :disc_id => '12')

client = Client.new(:last_name => '相葉', :first_name => '雅紀', :last_name_kana => 'アイバ', :first_name_kana => 'マサキ', :email => 'aiba@gmail.com', :address => '千葉県船橋市', :post_code => '100-1000', :telephone => '100-1000-1000', :password => 'arashi')
client.save!
client = Client.new(:last_name => '松本', :first_name => '潤也', :last_name_kana => 'マツモト', :first_name_kana => 'ジュンヤ', :email => 'matsu@gmail.com', :address => '東京都練馬区', :post_code => '100-1000', :telephone => '100-1000-1000', :password => 'arashi')
client.save!
client = Client.new(:last_name => '二宮', :first_name => '和也', :last_name_kana => 'ニノミヤ', :first_name_kana => 'カズヤ', :email => 'nino@gmail.com', :address => '東京都江戸川区', :post_code => '100-1000', :telephone => '100-1000-1000', :password => 'arashi')
client.save!
client = Client.new(:last_name => '大野', :first_name => '智史', :last_name_kana => 'オオノ', :first_name_kana => 'サトシ', :email => 'oono@gmail.com', :address => '東京都渋谷区', :post_code => '100-1000', :telephone => '100-1000-1000', :password => 'arashi')
client.save!
client = Client.new(:last_name => '櫻井', :first_name => '翔也', :last_name_kana => 'サクライ', :first_name_kana => 'ショウヤ', :email => 'saku@gmail.com', :address => '東京都中央区', :post_code => '100-1000', :telephone => '100-1000-1000', :password => 'arashi')
client.save!

admin = Admin.new(:email => 'nagareco@gmail.com', :password => 'nagareco')
admin.save!

Address.create(:last_name => '相葉', :first_name => '雅紀', :sub_post_code => '100-1000', :sub_address => '東京都八王子市', :client_id => '1')
Address.create(:last_name => 'wents', :first_name => 'eji', :sub_post_code => '100-1000', :sub_address => '沖縄県沖縄市', :client_id => '3')
Address.create(:last_name => '櫻井', :first_name => '翔也', :sub_post_code => '100-1000', :sub_address => '神奈川県鎌倉市', :client_id => '5')
Address.create(:last_name => '長瀬', :first_name => '智也', :sub_post_code => '100-1000', :sub_address => '北海道函館市', :client_id => '5')
Address.create(:last_name => '国分', :first_name => '太一', :sub_post_code => '100-1000', :sub_address => '東京都練馬区', :client_id => '5')
