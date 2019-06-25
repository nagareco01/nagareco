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
Label.create(label_name:"よしもとミュージック")
Label.create(label_name:"Virgin Music(JPN)")
Label.create(label_name:"トイズファクトリー")
Label.create(label_name:"Buzzic")
Label.create(label_name:"ブシロードミュージック")
Label.create(label_name:"インディーズ・メーカー")

Genre.create(:genre_name => 'J-Pop',)
Genre.create(:genre_name => 'Rock',)
Genre.create(:genre_name => 'Dance',)
Genre.create(:genre_name => 'Jazz',)
Genre.create(:genre_name => '演歌',)
Genre.create(:genre_name => 'インディーズ',)

Artist.create(artist_name:"RADIO FISH")
Artist.create(artist_name:"GLIM SPANKY")
Artist.create(artist_name:"BRAHMAN")
Artist.create(artist_name:"Gendy 100km")
Artist.create(artist_name:"新田恵海")
Artist.create(artist_name:"宮沢昭")

Cd.create(name:"NEWTON", price:"1650", stock:"13", sale_status:"販売中", artist_id:"1", label_id:"9", genre_id:"1", image_id:"" )
Cd.create(name:"WORLD IS MINE(Type-B)", price:"2700", sale_status:"販売中", artist_id:"1", label_id:"9", genre_id:"1", description:"内容紹介
「PERFECT HUMAN」のコンポーザー“JUVENILE“の新曲「GOLDEN TOWER」は、 ゲストボーカリストに実力派シンガー“當山みれい“を迎え、これまでとは違う広がりを見せ、 さらには話題のテクノユニット“80KIDZ“との新曲「東京大革命」では、 「フリースタイルダンジョン」で話題となったラッパー“焚巻“を迎えて、 藤森とのラップバトルが衝撃的です。
大ヒット曲「PERFECT HUMAN」のリミックスを“TAKU from m-flo“が担当し、 新たな魅力を引き出しています。

[CD]
・黄金時代
・ULTRA TIGER
・あの日見た神様の名前を思い出していつかきっと泣いてしまう
・NKT34
・GOLDEN TOWER(feat.當山みれい)
・さよなら
・東京大革命(feat.焚巻&345/凛として時雨)
・MIND BEACH
・INVISIBLE EMPEROR
・PERFECT HUMAN (m-flo☆Taku Remember 1999 Samba House Remix)
・PERFECT HUMAN (m-flo☆Taku Calrissian Trap Remix)
・ワンチャンCOCO夏☆物語
・WANDA runs with you

※曲順未定/タイトル予定

メディア掲載レビューほか
「PERFECT HUMAN」のヒットでおさまらないポテンシャルを秘めたRADIO FISHの期待作が完成!「PERFECT HUMAN」のコンポーザーJUVENILEによる「GOLDEN TOWER」は、ゲストヴォーカリストに実力派シンガー“當山みれい”を迎え、これまでは違う広がりを見せ、さらには話題のテクノユニット“80KIDZ”との「東京大革命」では、<フリースタイルダンジョン>で話題となったラッパー“焚巻”を迎えて、藤森とのラップバトルが衝撃的! (C)RS", image_id:"")
# Cd.create(name:"LOOKING FOR THE MAGIC[通常盤]", price:"2800", sale_status:"販売中", artist_id:"2", label_id:"10", genre_id:"2", description:"“至上のロック”をかき鳴らす4thアルバム『LOOKING FOR THE MAGIC』リリース！

# 5月には自身初となる日本武道館公演を大成功させ、今年のFUJI ROCKではメインステージであるGREEN STAGEで大きな爪痕を残すライブを披露し、その勢いは止まらない男女二人組新世代ロックユニットGLIM SPANKY（グリム・スパンキー）。
# どんな時代でも万人に向けて、“至上のロック”をかき鳴らし続ける、そんなGLIM SPANKYの“今”が凝縮された、世界を目指す作品だ。

# 今アルバムには、『不能犯』（主演：松坂桃李）の主題歌で、iTunes総合チャートでも1位を獲得した、GLIM SPANKYの代表曲ともいえる「愚か者たち」、テレビ朝日系 木曜ミステリー『警視庁・捜査一課長 season3』（主演:内藤剛志）主題歌の琴線を揺さぶるミディアムテンポ曲「All Of Us」、そしてアサヒ飲料「WILKINSON」とコラボレーションした、スタジアム級ヘビーロック曲「ハートが冷める前に」を収録。

# 【通常盤】
# CDのみ", image_id:"" )
# Cd.create(name:"BIZARRE CARNIVAL[通常盤]", price:"2800", sale_status:"販売中", artist_id:"2", label_id:"10", genre_id:"2", image_id:"")
# Cd.create(name:"尽未来際 (通常盤)", price:"3000", sale_status:"販売中", artist_id:"3", label_id:"11", genre_id:"2", description:"内容紹介
# 今年、結成20周年を迎えるBRAHMAN。 バンド結成以来、4人は一貫して独立独歩の活動を続け、数々の名曲と激演で多くのパンクスたちの胸を震わせてきた。
# そんな名曲群が結集した作品が登場！「尽未来際」というタイトル通り、彼らを新たなる未来へと導く。
# 今作は今秋に開催されるBRAHMAN主催20th Anniversary Liveイベントとも強く結びつき、このアニバーサリーイヤーをさらに盛り上げる。

# BRAHMAN
# 20th Anniversary Album『尽未来際』
# 2015.8.12（wed）RELEASE

# 通常盤(2CD) TFCC-86530 ￥2,778＋税
# 【CD1】THE EARLY 10 YEARS（全21曲） ※全曲リマスタリング音源
# 【CD2】THE LAST 10 YEARS（全21曲） ※全曲リマスタリング音源　※曲目は、下記別表参照

# ■連動応募特典（封入）が決定。
# ★7/1発売シングル「其限」初回盤および通常盤初回生産分に封入されている応募券を切り取り、
# 8/12発売アルバム「尽未来際」初回限定盤A<20th Anniversary Edition>、
# 初回限定盤Bおよび通常盤初回生産分に封入されるハガキに貼って
# 必要事項を記入して応募すると、抽選で200名に「BRAHMAN 20周年記念復刻Tシャツ」をプレゼント。
# 復刻Tシャツは、過去20年の間に作られたBRAHMANのTシャツから５種をセレクトした。

# 選ばれたデザインは下記の通り。
# 1997 LIVE T
# 2000 RISING SUN ROCK FES T
# 2002 hope against hope tour FINAL T
# 2002 LIVE T
# 2003 Tour '03 Hands and Feet T
# 以上の中から希望のデザインとサイズ＜S / M / L / XL＞を選ぶことができる。
# 締切は2015年8月末日消印有効。

# ★「尽未来祭」幕張メッセ　ライブチケット先行抽選権
# 日程：２０１５年１１月１４日（土）・１５日（日）
# 　 先行抽選期間：８月 １２日～ ９月 １０日 ※シリアルナンバー入り

# CD収録内容
# 【CD1】THE EARLY 10 YEARS（全21曲） ※全曲リマスタリング音源
# TONGFARR / FOR ONE'S LIFE / SEE OFF / GOIN' DOWN / GREAT HELP / BASIS / SHADOW PLAY /
# PLASTIC SMILE / BOX / BEYOND THE MOUNTAIN / DEEP / NO LIGHT THEORY / Z / 時の鐘 /
# ARRIVAL TIME / THAT'S ALL / THERE'S NO SHORTER WAY IN THIS LIFE / ANSWER FOR… /
# NEW SENTIMENT / ARTMAN / THE SAME
# 【CD2】THE LAST 10 YEARS（全21曲） ※全曲リマスタリング音源
# 初期衝動 / THE ONLY WAY / 賽の河原 / THE VOID / 露命 / EPIGRAM / SPECULATION / 其限 / 鼎の問 /
# A WHITE DEEP MORNING / DOUBLE-BLIND DOCUMENTS / CIRCLE BACK /（ a piece of）BLUE MOON /
# 遠国 / FAR FROM... / CAUSATION / LOSE ALL / 警醒 / PLACEBO / 霹靂 / 虚空ヲ掴ム

# ●7月1日に2年10ヶ月振りとなる新曲「其限」を発表したBRAHMAN。箭内道彦が初めて映画監督を務めるノン・フィクション作品、
# 映画『ブラフマン』も公開され、彼らの20周年イヤーはとてつもない勢いで回転を始めている。
# この記念すべき年を祝うキーワードとして掲げられている「尽未来際」（仏教用語で“永遠の未来”）。
# これをタイトルに冠した2枚組ベスト盤「尽未来際」が8月12日に発表される。これまでの代表曲を網羅することで、
# 新規のファンには入門編、古参のファンには手元に置いておきたい作品として機能。この4人組は、絶え間ないライブ活動を通して
# 得てきたものを、スタジオワークでじっくりと煮詰めた上でこれまで作品にしてきた。それはまるで熟練の職人のようであり、
# だからこそ1曲1曲がとてつもないパワーを放ち、多くのリスナーの心を掴んできた。今作はただ人気曲を集めたというわけではなく、
# BRAHMAN激闘の歴史を凝縮したものなのである。
# ●初回限定盤には、20年の歴史を総ざらいした蔵出し映像をパッケージしたDVDがつく。中には、初出以来一度も人の目に触れることの
# なかった秘蔵映像もあり、昔からのファンはもちろんのこと、最近彼らの存在を知った新規リスナーにとってもかなり貴重な内容に
# なっている。なにせ20年分である。内容の濃さは推して知るべし。
# ●BRAHMANの「尽未来際」はまだまだ続く。今秋には首都圏某所にて彼らが主催する20th Anniversary Liveイベントが開催される。
# まだ詳細は明かせないが、BRAHMANの4人でなければ到底実現不可能な内容になることは間違いない。世代を問わず、
# 全ロック／パンクキッズが間違いなく狂喜することになるだろう。全形態にそのイベントチケットの先行抽選権を封入する。
# メディア掲載レビューほか
# 2015年、結成20周年を迎えるBRAHMANにとって記念すべき年を祝うキーワードとして掲げられている【尽未来際(仏教用語で“永遠の未来”)】をタイトルに冠した2枚組ベスト盤が発売。バンド結成以来、一貫して独立独歩の活動を続け、数々の名曲と激演で多くのパンクスたちの胸を震わせてきた名曲群が結集された作品。 (C)RS", image_id:"")
# Cd.create(name:"梵唄 -bonbai- (通常盤)", price:"2800", sale_status:"販売中", artist_id:"3", label_id:"11", genre_id:"2", description:"内容紹介
# 【CD収録内容】　初回限定盤/通常盤
# 1.真善美
# 2.雷同
# 3.EVERMORE FOREVER MORE
# 4.AFTER-SENSATION
# 5.其限
# 6.今夜
# 7.守破離
# 8.怒涛の彼方
# 9.不倶戴天
# 10.ナミノウタゲ
# 11.天馬空を行く
# 12.満月の夕

# <guest musicians>
# track6 Chorus: 細美武士 (the HIATUS / MONOEYES)
# track7 Vocal: KO (SLANG)
# track8 Trumpet: NARGO (TOKYO SKA PARADISE ORCHESTRA)
# Trombone: 北原雅彦 (TOKYO SKA PARADISE ORCHESTRA)
# Tenor sax: GAMO (TOKYO SKA PARADISE ORCHESTRA)
# Baritone sax: 谷中敦 (TOKYO SKA PARADISE ORCHESTRA)
# track10 Chorus: ハナレグミ
# track12 三線 / Chorus / 囃子: 中川敬 (SOUL FLOWER UNION)
# Guitar / Chorus / 囃子: 山口洋 (HEAT WAVE)
# Chorus / 囃子: うつみようこ

# <タイアップ情報>
# 「其限」　※映画「ブラフマン」主題歌
# 「今夜」　※映画「あゝ荒野」 主題歌
# 「守破離」※キックボクシングイベント「KNOCK OUT」公式テーマソング
# 「ナミノウタゲ」　※映画「生きる街」主題歌


# 激動の時代を駆け抜け、ジャンルの壁を飛び越え、 シーンにおける存在感をさらに高めているBRAHMAN。
# 5年ぶりとなるフルアルバムで真の境地へ到達。
# 過去最大級の重みと力強さで、数々の名曲と、己の生き様を４人が叩きつける。

# ■BRAHMANのパフォーマンスは年々凄みを増している。前作「超克」のリリースから５年の間に全国各地を走り回り、ライブハウス、フェス、被災地、仮設住宅、ありとあらゆる場所に足を運んだ結果、彼らの周りには何物にも代えがたい仲間が増えていた。

# ■そんな環境は４人が生み出す音楽にも影響を与えた。BRAHMANの内側に迫った映画「ブラフマン」の主題歌「其限」をはじめ、平易な言葉で深い心情や豊かな情景を描き出す楽曲がいくつも生まれる一方、怒髪天を衝く勢いで怒りを綴った「不倶戴天」のようなハードコアナンバーも吐き出した。彼らが創る音楽はより豊かになった。より深くなった。より多くのこころに届くようになった。その集大成が今作「梵唄 -bonbai-」である。

# ■５年ぶりとなるフルアルバムを一聴して分かるのは、彼らが自分たちの持ちうる全てをこの作品に注ぎ込んだということ。ここには、ハードコア、パンク、ロック、ブルースなどあらゆるジャンルの音が収まっているが、これを“ミクスチャー”なんて言葉でくくることはできない。しかし、なぜ「守破離」や「不倶戴天」といったこれまでにないハードコアナンバー、「ナミノウタゲ」や「満月の夕」といった胸を打つメロウなナンバー、そして、「AFTER-SENSATION」や「EVERMORE FOERVER MORE」といったメロディックなパンクナンバーが同居し得るのだろうか。考えられる答えがひとつある――実際に鳴っているのは楽器と声かも知れないが、ここではメンバー４人の“己”が鳴っているのだ。今作には、今の時代を生きる平凡な４人の人間が、この５年間を生きてきた証が生々しく刻まれている。彼らが経た苦悩、激闘、喜び、憤怒、馬鹿騒ぎ、慈しみ、深い愛情……喜怒哀楽だけでは表現しきれない、あらゆる感情が詰まっているのだ。

# ■「今夜」、「ナミノウタゲ」、「満月の夕」などを聴けば分かるように、パンクシーン以外にも届きうる音楽を４人が鳴らすようになったことは、今作のポイントのひとつ。盟友と言える仲間たちと共に作り上げた楽曲も自然と増えた。当然ながら、話題作りのためではない。

# ■今作のタイトルは「梵唄 -bonbai-」。この聞き慣れない言葉を分かりやすくひと言で表すならば「、歌」だろうか。そのこと以上に重要なのは、バンド名の由来にもなっている「梵」という字を冠したことにある。これは彼らにとって、自身のバンド名をタイトルにしたに等しい。それだけのものが込められた作品になったということだ。

# ■なお、初回限定盤には2015年8月12日に新宿アンチノックにて行われた「尽未来際 ～開闢～」の模様を完全ノーカットで収録する。長年BRAHMANを追いかけてきたファンに「ベストライブは？」と質問を投げかければ、おそらく多くのライブが挙がることだろう。そんななか、「実はあのライブが一番よかった」と言われるのがこのライブだ。この日のライブは2ステージ制で、場内の出入り口付近で繰り広げたグチャグチャのフロアライブから、ステージへ移っての後半戦までノンストップで駆け抜けた圧倒的な一夜となった。このライブスタイル、実は日本が誇るハードコアバンドGAUZEの恒例企画「後ろから前から」のオマージュで、GAUZEのメンバー直々に許可を得て行われたものだ。ラストに披露されたGAUZEの楽曲のカバーで、BRAHMANは彼らへのリスペクトを示した。

# ■場内すし詰め状態の凄まじい熱気のなかで展開したこのライブはスペシャモバイルにて生配信されたが、配信終了直後からリピートを望む声が殺到。「いつかは映像化を」と考えてはいたものの、あの強烈な空気感をどのようにどのタイミングでパッケージしたらいいものか、長い間制作陣を悩ませた。そして、遂にそのときが来た。５年ぶりとなるフルアルバム「梵唄 -bonbai-」、この傑作に付属させてこそ、「尽未来際 ～開闢～」の映像は活きるのではないか。今や伝説となった灼熱の一夜が、２年半の時を経て多くのファンのもとへと届けられることとなったのだ。

# ■リリースの２日後には単独では初となる日本武道館公演「八面玲瓏」を控えており、さらに３月３日からはレコ発ツアー「Tour 2018 梵匿 -bonnoku-」がスタートする。全国35ヶ所36公演に及ぶロングツアーだ。

# ■「孤高のバンド」と評されることの多かったBRAHMANだが、もはやその言葉には違和感を覚える。人生の荒波に揉まれながら、今を泥臭く生きる４人が、この生々しい音楽を鳴らし、我々とともに歩いていくのだ。
# メディア掲載レビューほか
# 激動の時代を駆け抜け、ジャンルの壁を飛び越え、 シーンにおける存在感をさらに高めているBRAHMAN。5年ぶりとなるフルアルバムで真の境地へ到達。過去最大級の重みと力強さで、数々の名曲と、己の生き様を4人が叩きつける。 (C)RS", image_id:"")
# Cd.create(name:"感恩報謝", price:"2100", sale_status:"販売中", artist_id:"4", label_id:"12", genre_id:"1", description:"内容紹介
# 長野県出身、1月27日生まれ、AB型。2012年7月、男性ソロアーティスト“Gendy 100km”としてデビュー。デビュー曲となった『NAKAMA ~想いはひとつ~ feat. 大野勢太郎(NACK5メインパーソナリスト)』はNACK5パワーセレクション、更に地上波スポーツ番組イメージソングに選ばれる。
# また、ロンドン五輪に日本代表として選出され演奏したヴァイオリニスト“末延麻裕子”と共演した楽曲『タンス』は、古館プロジェクト(報道ステーションでもお馴染み)ポータルサイト”TAN-SU”テーマソングとなり、楽曲『キミと花火』は打ち上げ数で国内最大の花火大会である信州諏訪湖花火のイメージソングに選ばれた。
# その他、日テレ系テレビ岩手の人気番組”鉄神ガンライザー”公式イメージソングに楽曲『魔法のチカラ』が抜擢され、“影山ヒロノブ”とのCDが発売。2012年末より全国で順次公開されている、映画”たべんさい~広島・ラーメン物語”主題歌を務める。

# メディア掲載レビューほか
# 2012年に“Gendy 100km”としてデビューした長野県出身の男性ソロ・アーティストによるアルバム。 (C)RS", image_id:"")
# Cd.create(name:"EMUSIC 32 -meets you-", price:"2400", sale_status:"販売中", artist_id:"5",label_id:"12", genre_id:"1", image_id:"")
# Cd.create(name:"BULL TROUT(いわな)", price:"2333", sale_status:"販売中", artist_id:"6", label_id:"13", genre_id:"4", description:"長らく廃盤だった和ジャズの大名盤、遂に復刻!! 
# 和ジャズの中で精神性の高さを求めるならば、なんといってもこの「いわな」でしょう。冬頃のリリースを予定しておりましたが、様々な方より復刻希望のリクエストがあったため、リリースを早めました。当時、もし本作が海外の人気レーベルから発表されていたら、世界的に「名盤」という扱いを受けていたに違いありません。そんなことを平気で言えてしまうくらい、凄い内容なのです。
# ■メンバー:宮沢昭(ts, per), 佐藤允彦(p, per), 荒川康男(b, per), 富樫雅彦(ds, per), 瀬上養之助(per) ■監修:塙 耕記
# ■解説:沼田 順 ■録音:1969年6月30日, 7月14日
# ■原盤:ビクター(SMJX-10068)", image_id:"")
# Cd.create(name:"山女魚", price:"1620", sale_status:"販売中", artist_id:"6", label_id:"5", genre_id:"4", description:"内容紹介
# 【商品番号:KICJ-2641】

# --松本英彦と実力を競った宮沢昭の初リーダー作--

# <収録曲>
# 1.山女魚
# 2.メモリーズ・スルー・シック・グラセス
# 3.フライ・キャスティング
# 4.ライク・サムワン・イン・ラヴ
# 5.アウト・オブ・ノーホエア
# 6.香わしきたそがれ
# 7.ライク・ソニー

# (tr1-4)宮沢 昭(ts)、佐藤允彦(p)、原田政長(b)、原田寛治(dr)
# (tr5-7)宮沢 昭(ts)、渡辺貞夫(as,fl)、原田忠幸(bs,cl)、仲野 彰(tp,tb)、
# 東本安博(tb)、松本光彦(tb)、青木 武(b,tb)、
# 佐藤允彦(p)、原田政長(b)、猪俣 猛(dr)

# 監修:久保田二郎 

# 【1962年5月7、14日録音 日本都市センター・ホール】

# *********************************************

# 《キングレコードが誇る日本のジャズ名盤が最新リマスタリングで復活! 》
# 現在入手困難となっている1950年代から80年代までの伝説的名盤を高音質SHM-CDでお届けします。
# 監修とライナー執筆は、日本のジャズにまつわる数多くの著書を残している小川隆夫氏。

# ****************************************************************************************************
# ■■KING LEGENDARY JAZZ COLLECTION 50 “5:1プレゼント・キャンペーン“開催! ! ■■
# ◆“KING LEGENDARY JAZZ COLLECTION“シリーズ(対象商品番号:KICJ-2611~2660 / 定価:各1,500+税)
# 全50タイトルの中から5枚ご購入の方全員にお好きなタイトルを1タイトルプレゼントキャンペーン開催! ! 
# ◆ 詳しくは封入の応募要項をご覧下さい。
# (応募の締切:2019年6月7日(当日消印有効))
# メディア掲載レビューほか
# キング・レコードが誇る日本のジャズ名盤が最新リマスタリングで復活!現在入手困難となっている1950年代から80年代までの伝説的名盤を高音質SHM-CDでお届けする“KING LEGENDARY JAZZ COLLECTION 50”シリーズ。本作は、日本ジャズ史における最高のテナー・サックス奏者・宮沢昭が放つモダン・ジャズの歴史的作品。 (C)RS", image_id:"")

Disc.create(disc_number:"1", cd_id:"1")
Disc.create(disc_number:"1", cd_id:"2")
Disc.create(disc_number:"1", cd_id:"3")
Disc.create(disc_number:"1", cd_id:"4")
Disc.create(disc_number:"1", cd_id:"5")
Disc.create(disc_number:"2", cd_id:"5")
Disc.create(disc_number:"1", cd_id:"6")
Disc.create(disc_number:"1", cd_id:"7")
Disc.create(disc_number:"1", cd_id:"8")
Disc.create(disc_number:"1", cd_id:"9")
Disc.create(disc_number:"1", cd_id:"10")


Song.create(song_name:"Gamber", song_number:"1", disc_id:"1")
Song.create(song_name:"No.55", song_number:"2", disc_id:"1")
Song.create(song_name:"また逢える日まで", song_number:"3", disc_id:"1")
Song.create(song_name:"東京大革命(NEWTON Live ver.)", song_number:"4", disc_id:"1")
Song.create(song_name:"GOLDEN TOWER(NEWTON Live ver.)", song_number:"5", disc_id:"1")
Song.create(song_name:"INVISIBLE EMPEROR(NEWTON Live ver.)", song_number:"6", disc_id:"1")
Song.create(song_name:"NEW GOD(NEWTON Live ver.)", song_number:"7", disc_id:"1")
Song.create(song_name:"BURNING FESTIVAL(NEWTON Live ver.)", song_number:"8", disc_id:"1")
Song.create(song_name:"ULTRA TIGER", song_number:"1", disc_id:"2")
Song.create(song_name:"GOLDEN TOWER[feat.當山みれい]", song_number:"2", disc_id:"2")
Song.create(song_name:"東京大革命[feat.焚巻&345/凛として時雨]", song_number:"3", disc_id:"2")
Song.create(song_name:"NKT34", song_number:"4", disc_id:"2")
Song.create(song_name:"INVISIBLE EMPEROR", song_number:"5", disc_id:"2")
Song.create(song_name:"あの日見た神様の名前を思い出していつかきっと泣いてしまう", song_number:"6", disc_id:"2")
Song.create(song_name:"黄金時代", song_number:"7", disc_id:"2")
Song.create(song_name:"WONDERLAND", song_number:"8", disc_id:"2")
Song.create(song_name:"ワンチャンCOCO夏☆物語[feat.焚巻&JUVENILE]", song_number:"9", disc_id:"2")
Song.create(song_name:"MIND BEACH", song_number:"10", disc_id:"2")
Song.create(song_name:"さよなら", song_number:"11", disc_id:"2")
Song.create(song_name:"PERFECT HUMAN [m-flo☆Taku Remember 1999 Samba House Remix]", song_number:"12", disc_id:"2")
Song.create(song_name:"PERFECT HUMAN [m-flo☆Taku Calrissian Trap Remix]", song_number:"13", disc_id:"2")
Song.create(song_name:"4 Dimensional Desert", song_number:"1", disc_id:"3")
Song.create(song_name:"Love Is There", song_number:"2", disc_id:"3")
Song.create(song_name:"TV Show", song_number:"3", disc_id:"3")
Song.create(song_name:"ハートが冷める前に　(アサヒ飲料「WILKINSON」コラボレーション曲)", song_number:"4", disc_id:"3")
Song.create(song_name:"The Flowers　(三越伊勢丹グループ『2018花々祭 WILD FLOWERS〜花を愛する人々〜キャンペーンオリジナルソング』)", song_number:"5", disc_id:"3")
Song.create(song_name:"In the air 　（モバイルのために生まれたオーディオブランド『GLIDiC』タイアップ曲）", song_number:"6", disc_id:"3")
Song.create(song_name:"愚か者たち　（映画『不能犯』主題歌）（AbemaTV『格闘代理戦争2ndシーズン』主題歌）", song_number:"7", disc_id:"3")
Song.create(song_name:"Hello Sunshine　（メ～テレ『デルサタ』『デルサタ11』番組テーマ曲）", song_number:"8", disc_id:"3")
Song.create(song_name:"All Of Us　（テレビ朝日系列ドラマ『警視庁・捜査一課長 season3』主題歌）", song_number:"9", disc_id:"3")
Song.create(song_name:"To The Music　　（NHKワールドJAPAN・BSプレミアム『J-MELO』エンディングテーマ）", song_number:"10", disc_id:"3")
Song.create(song_name:"Looking For The Magic　", song_number:"11", disc_id:"3")
Song.create(song_name:"THE WALL", song_number:"1", disc_id:"3")
Song.create(song_name:"BIZARRE CARNIVAL", song_number:"2", disc_id:"3")
Song.create(song_name:"The Trip", song_number:"3", disc_id:"3")
Song.create(song_name:"吹き抜く風のように", song_number:"4", disc_id:"3")
Song.create(song_name:"Velvet Theater", song_number:"5", disc_id:"3")
Song.create(song_name:"END ROLL", song_number:"6", disc_id:"3")
Song.create(song_name:"Sonntag", song_number:"7", disc_id:"3")
Song.create(song_name:"ビートニクス（映画『DCスーパーヒーローズ vs 鷹の爪団』主題歌）", song_number:"8", disc_id:"3")
Song.create(song_name:"美しい棘", song_number:"9", disc_id:"3")
Song.create(song_name:"白昼夢", song_number:"10", disc_id:"3")
Song.create(song_name:"アイスタンドアローン", song_number:"11", disc_id:"3")
Song.create(song_name:"TONGFARR", song_number:"1", disc_id:"4")
Song.create(song_name:"FOR ONE’S LIFE", song_number:"2", disc_id:"4")
Song.create(song_name:"SEE OFF", song_number:"3", disc_id:"4")
Song.create(song_name:"GOIN’ DOWN", song_number:"4", disc_id:"4")
Song.create(song_name:"GREAT HELP", song_number:"5", disc_id:"4")
Song.create(song_name:"BASIS", song_number:"6", disc_id:"4")
Song.create(song_name:"SHADOW PLAY", song_number:"7", disc_id:"4")
Song.create(song_name:"PLASTIC SMILE", song_number:"8", disc_id:"4")
Song.create(song_name:"BOX", song_number:"9", disc_id:"4")
Song.create(song_name:"BEYOND THE MOUNTAIN", song_number:"10", disc_id:"4")
Song.create(song_name:"初期衝動", song_number:"1", disc_id:"5")
Song.create(song_name:"THE ONLY WAY", song_number:"2", disc_id:"5")
Song.create(song_name:"賽の河原", song_number:"3", disc_id:"5")
Song.create(song_name:"THE VOID", song_number:"4", disc_id:"5")
Song.create(song_name:"露命", song_number:"5", disc_id:"5")
Song.create(song_name:"EPIGRAM", song_number:"6", disc_id:"5")
Song.create(song_name:"SPECULATION", song_number:"7", disc_id:"5")
Song.create(song_name:"其限", song_number:"8", disc_id:"5")
Song.create(song_name:"鼎の問", song_number:"9", disc_id:"5")
Song.create(song_name:"A WHITE DEEP MORNING", song_number:"10", disc_id:"5")
Song.create(song_name:"真善美", song_number:"1", disc_id:"6")
Song.create(song_name:"雷同", song_number:"2", disc_id:"6")
Song.create(song_name:"EVERMORE FOREVER MORE", song_number:"3", disc_id:"6")
Song.create(song_name:"AFTER-SENSATION", song_number:"4", disc_id:"6")
Song.create(song_name:"其限", song_number:"5", disc_id:"6")
Song.create(song_name:"今夜", song_number:"6", disc_id:"6")
Song.create(song_name:"守破離", song_number:"7", disc_id:"6")
Song.create(song_name:"怒涛の彼方", song_number:"8", disc_id:"6")
Song.create(song_name:"不倶戴天", song_number:"9", disc_id:"6")
Song.create(song_name:"ナミノウタゲ", song_number:"10", disc_id:"6")
Song.create(song_name:"天馬空を行く", song_number:"11", disc_id:"6")
Song.create(song_name:"満月の夕", song_number:"12", disc_id:"6")
Song.create(song_name:"感恩報謝", song_number:"1", disc_id:"7")
Song.create(song_name:"with you", song_number:"2", disc_id:"7")
Song.create(song_name:"魔法のチカラ", song_number:"3", disc_id:"7")
Song.create(song_name:"相思相愛", song_number:"4", disc_id:"7")
Song.create(song_name:"たいせつなひと", song_number:"5", disc_id:"7")
Song.create(song_name:"タンス feat.末延麻裕子", song_number:"6", disc_id:"7")
Song.create(song_name:"ありがとう。ふるさと", song_number:"7", disc_id:"7")
Song.create(song_name:"奇跡のひかり", song_number:"8", disc_id:"7")
Song.create(song_name:"かけがえのない宝物 feat.丸本莉子", song_number:"9", disc_id:"7")
Song.create(song_name:"素晴らしい未来の為に", song_number:"10", disc_id:"7")
Song.create(song_name:"32 -meets you-", song_number:"1", disc_id:"8")
Song.create(song_name:"君に咲く愛のうた", song_number:"2", disc_id:"8")
Song.create(song_name:"コイスルマチカド", song_number:"3", disc_id:"8")
Song.create(song_name:"Colorful Parade", song_number:"4", disc_id:"8")
Song.create(song_name:"In the Ring", song_number:"5", disc_id:"8")
Song.create(song_name:"マスカレイド", song_number:"6", disc_id:"8")
Song.create(song_name:"勿忘草", song_number:"7", disc_id:"8")
Song.create(song_name:"Bon Voyage!", song_number:"8", disc_id:"8")
Song.create(song_name:"Baby Call My Name (だめんずうぉ〜か〜 THE Movie ジェラシー編 EDテーマ)", song_number:"9", disc_id:"8")
Song.create(song_name:"my youth", song_number:"10", disc_id:"8")
Song.create(song_name:"UNITED", song_number:"11", disc_id:"8")
Song.create(song_name:"いわな", song_number:"1", disc_id:"9")
Song.create(song_name:"河ます", song_number:"2", disc_id:"9")
Song.create(song_name:"あゆ", song_number:"3", disc_id:"9")
Song.create(song_name:"虹ます", song_number:"4", disc_id:"9")
Song.create(song_name:"山女魚", song_number:"1", disc_id:"10")
Song.create(song_name:"メモリーズ・スルー・シック・グラセス", song_number:"2", disc_id:"10")
Song.create(song_name:"フライ・キャスティング", song_number:"3", disc_id:"10")
Song.create(song_name:"ライク・サムワン・イン・ラヴ", song_number:"4", disc_id:"10")
Song.create(song_name:"アウト・オブ・ノーホエア", song_number:"5", disc_id:"10")
Song.create(song_name:"香わしきたそがれ", song_number:"6", disc_id:"10")
Song.create(song_name:"ライク・ソニー", song_number:"7", disc_id:"10")


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
