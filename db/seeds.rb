Country.destroy_all

Country.create!(
  country: "ニュージーランド",
  
  description: "北島には首都ウェリントンや最大都市オークランド、そして南島にはイギリス風の美しい街並みで知られるクライストチャーチや、
                世界屈指のリゾートタウンであるクイーンズタウンがあります。
                日本から渡航する場合、成田国際空港からオークランド行きの直行便が就航しています。飛行時間は約10時間30分で、価格は往復約12-25万円ほどです。",
  
  price: "日本と比べてやや高め。通貨はNZD(ニュージーランドドル)で、1NZD = 約94円前後(2026年8月現在)です。",

  visa_timing: "
  ・日本を含むビザ免除国から3ヶ月以内の観光目的で入国する場合、ビザは不要ですが、NZeTA(ニュージーランド電子渡航認証)の取得が必要です。取得まで最大72時間かかるため、出発3日前までの申請が必要です。
    取得後2年間有効で、期間中は何度でも渡航可能となります。
    *申請にかかる費用は,専用ウェブサイトからの場合NZD$123,専用アプリからの場合NZD$117(国際観光税IVL(NZD$100)を含む）。
    *支払いにクレジットカードかデビットカード(visaまたはmastercardのみ対応)が必要です。
  ・NZTD(ニュージーランド入国申告)も合わせて必要です。申告は出発の24時間前から可能となり、専用のオンラインフォームまたはNZTDアプリから行います。この申告に費用はかかりません。",

  link: "https://www.immigration.govt.nz/visas/visa-waiver-visitor-visa/",

  preparation: "ニュージーランドに渡航する際に必要な、最重要準備を以下にまとめました。
  パスポートの残存有効期間:出国予定日から3ヶ月以上必要
  NZeTA(ニュージーランド電子渡航認証),
  NZTD(ニュージーランド入国申告)",
  
  useful_items: "日焼け止め(日差しが強いので必須です、サングラス",

  transportation: "レンタカー(日本と同じ左側通行)、長距離バス、短距離バス(オークランドなどの大都市ではバス路線が充実)、主要都市間を運行する飛行機、列車、北島と南島を繋ぐフェリーなど",

  cautions: "ニュージーランドではお酒もタバコも18歳以上からです。タバコに関しては特に注意が必要で、ニュージーランドでは特に指定の無い限り、室内環境での喫煙(電子タバコも含む)は法律により禁止されています。
             また、車のシートベルトの違反には罰金が課されますが、日本と異なり罰則は運転手ではなく違反者にかかります。",
   
  country_en: "New Zealand",

  description_en: "New Zealand is an island country in the southwestern Pacific Ocean, known for its beautiful natural landscapes, mountains, lakes, beaches, and unique wildlife. Wellington is the capital, while Auckland is the largest city. Popular destinations include Queenstown, Rotorua, Milford Sound, and the national parks.",       
  price_en: "New Zealand can be relatively expensive, especially for accommodation, dining, and activities in popular tourist areas. Costs vary by season and travel style. The local currency is the New Zealand dollar (NZD). Check current exchange rates and book accommodation and popular activities in advance.",    
  visa_timing_en: "Japanese passport holders visiting New Zealand for eligible short-term tourism generally need an NZeTA before travelling. An International Visitor Conservation and Tourism Levy (IVL) may also apply. Check the official New Zealand immigration website for the latest requirements before departure.",   
  preparation_en: "Check passport validity, apply for an NZeTA, and confirm any applicable entry declarations. Prepare accommodation details, return or onward travel information, and travel insurance before departure.",  
  useful_items_en: "Layered clothing, a waterproof jacket, comfortable walking shoes, sunscreen, insect repellent, and a suitable power adapter. Bring warm clothing for mountain areas and cooler seasons.",      
  transportation_en: "Domestic flights, intercity buses, trains on selected routes, ferries, and rental cars are common options. Renting a car can be useful for exploring rural areas, but allow extra time for winding roads and long distances.",       
  cautions_en: "Weather can change quickly, especially in mountainous areas. Follow local hiking and water-safety advice, check road conditions, and protect yourself from strong ultraviolet radiation. If driving, remember that vehicles travel on the left. Follow local laws and official travel advice."
)


Country.create!(
  country: "ベトナム",

  description: "東南アジアに位置するベトナムは、北部の首都ハノイ、中部の古都フエや世界遺産の街ホイアン、南部の大都市ホーチミンなど、地域によって異なる魅力を楽しめる国です。
                ハロン湾やメコンデルタなどの自然、フランス統治時代の街並み、寺院や市場など、歴史と文化を感じられるスポットも豊富です。
                日本からは成田・羽田・関西などからハノイやホーチミンへの直行便があります。飛行時間は約5〜6時間で、往復航空券は約5〜12万円ほどが目安です。",

  price: "日本と比べて安め。通貨はVND(ベトナムドン)で、1,000VNDは約6円前後(2026年8月現在)です。ローカル食堂や屋台を利用すれば、食費をかなり抑えることができます。",

  visa_timing: "
  ・日本国籍の場合、45日以内の観光目的などであればビザは不要です。
  ・ただし、入国時にパスポートの残存有効期間が6か月以上あり、ベトナムから出国する航空券などを所持している必要があります。
  ・45日を超えて滞在する場合などは、事前にe-Visaの取得が必要です。",

  link: "https://www.tokutenryoko.com/news/passage/13100",

  preparation: "ベトナムに渡航する際に必要な、最重要準備を以下にまとめました。
  パスポートの残存有効期間:入国時に6か月以上、
  帰国または第三国へ出国する航空券",

  useful_items: "虫よけ、日焼け止め、ウェットティッシュ、暑さ対策グッズ",

  transportation: "都市間の移動には国内線が便利です。ハノイやホーチミンでは路線バスやタクシー、配車アプリが利用できます。都市間を移動する場合は長距離バスや寝台列車も利用できます。",

  cautions: "ベトナムでは道路を走るバイクが非常に多いため、道路を横断するときは周囲の交通に十分注意しましょう。
             また、観光地やバイクタクシー乗車中はスリやひったくりに注意し、スマホストラップを活用する、カラビナなどで財布をバックに繋いでおく、などの防犯対策をおすすめします。",

   country_en: "Vietnam",
  
   description_en: "Vietnam is a Southeast Asian country known for its vibrant cities, historic towns, beaches, and distinctive cuisine. Hanoi is the capital, while Ho Chi Minh City is the largest city. Popular destinations include Ha Long Bay, Hoi An, and Da Nang. Travel times and flight prices depend on the departure airport, season, and airline.",  
   price_en: "Costs vary by destination and travel style. Street food and local restaurants are generally affordable, while hotels and tourist activities range from budget to luxury. The local currency is the Vietnamese dong (VND). Check current exchange rates before departure.",       
   visa_timing_en: "Japanese ordinary passport holders are generally eligible for visa-free stays of up to 45 days under Vietnam's current exemption policy. Longer stays or other travel purposes may require an e-visa or another visa. Entry conditions can change, so confirm the latest requirements through official Vietnamese immigration sources before booking.", 
   preparation_en: "Check passport validity, return or onward travel arrangements, accommodation details, and any entry requirements. Keep digital and paper copies of important travel documents.",      
   useful_items_en: "Lightweight clothing, comfortable walking shoes, sunscreen, insect repellent, a reusable water bottle, and a suitable power adapter.",
   transportation_en: "Transportation options include domestic flights, intercity trains, long-distance buses, taxis, ride-hailing services, and local buses. Traffic can be busy in major cities, so allow extra time for transfers.",
   cautions_en: "Road traffic can be challenging, especially for pedestrians. Protect valuables in crowded places, use reputable transport providers, and take care with food and drinking water. Follow local laws and check current travel advice."

)


Country.create!(
  country: "カンボジア",

  description: "東南アジアに位置するカンボジアは、世界遺産アンコール・ワットをはじめとするクメール遺跡が魅力の国です。
                シェムリアップでは、アンコール・ワットやアンコール・トム、タ・プロームなどの巨大な遺跡群を巡ることができます。
                首都プノンペンでは、王宮や国立博物館などからカンボジアの歴史や文化を知ることができます。
                日本からは成田・関西などからプノンペンやシェムリアップへの乗継便が利用できます。直行便よりも乗継便が中心で、往復航空券は約6〜12万円ほどが目安です。",

  price: "日本と比べて物価は安め。通貨はKHR(カンボジア・リエル)で、100KHRは約4円前後ですが、観光地では米ドルも広く使われています。ホテルや食事、トゥクトゥクなども比較的安く利用できます。",

  visa_timing: "
  ・日本国籍の場合、観光目的でも査証(ビザ)が必要です。観光ビザはオンラインのe-Visaまたは到着時のVisa on Arrivalで取得できます。ビザ料金はe-Visa(観光ビザ)が36米ドル、空港のVisa on Arrivalが30米ドルです。
  ・観光ビザの滞在期間は30日間（1回限り有効）です。
  ・入国手続きも必要です。カンボジア到着日の7日前から公式サイト(Cambodia e-Arrival(CeA))またはアプリを通して行うことができます。
",

link: "https://www.evisa.gov.kh/",

  preparation: "カンボジアに渡航する際に必要な、最重要準備を以下にまとめました。
  パスポートの残存有効期間:6か月以上、
  観光ビザまたはe-Visa、
  帰国または第三国への航空券",

  useful_items: "日焼け止め、虫よけ、帽子、歩きやすい靴、汗拭きタオル、折り畳み傘、サングラス",

  transportation: "シェムリアップではトゥクトゥクやタクシーが便利です。アンコール遺跡群を巡る場合はホテルなどで予約できるトゥクトゥクツアーを利用するのがおすすめです。都市間は長距離バス(寝台)や国内線を利用できます。",

  cautions: "アンコール遺跡群は日差しが強く、遺跡の階段を長時間歩くこともあるため、熱中症対策が重要です。
             また、観光地や市場ではスリやひったくりに注意してください。
             タイとの国境周辺には情勢が不安定な地域があるため、国境付近への旅行を計画する場合は最新の海外安全情報を必ず確認してください。",
  
  country_en: "Cambodia",
        description_en: "Cambodia is a Southeast Asian country famous for Angkor Wat, historic temples, and the capital city of Phnom Penh. Siem Reap is a popular base for exploring the Angkor archaeological complex, while the country also has rural landscapes and coastal destinations.",
        price_en: "Travel costs vary by location and comfort level. Local meals and transport can be inexpensive, while temple passes, guided tours, and higher-end accommodation add to the budget. The local currency is the Cambodian riel (KHR), and US dollars are also commonly used in many tourist areas. Check current exchange rates.",
        visa_timing_en: "Visa requirements depend on nationality, passport type, purpose, and length of stay. Visitors may need a visa or be eligible for an electronic visa or visa on arrival. Check the official Cambodian immigration or e-visa website for the rules and application timing that apply to your passport.",
        preparation_en: "Check passport validity and visa requirements in advance. Confirm whether an electronic arrival form or other entry declaration is required for your travel date. Keep copies of your passport, booking details, and travel insurance.",
        useful_items_en: "Lightweight clothing, comfortable shoes, sun protection, insect repellent, and clothing that covers shoulders and knees when visiting religious sites.",
        transportation_en: "Tuk-tuks, taxis, ride-hailing services, buses, and private transfers are common options. Long-distance journeys can take longer than expected because of road conditions and traffic.",
        cautions_en: "Respect temple rules and local customs. Stay hydrated in hot weather, protect yourself from mosquitoes, and use care when crossing roads. Use reputable guides and transport providers, and follow official safety advice."

         )

Country.create!(
  country: "マレーシア",

  description: "マレーシアは、近代的な都市と多民族文化、熱帯の自然が共存する国です。
                首都クアラルンプールではペトロナスツインタワーやイスラム美術館などを見ることができ、マラッカでは歴史的な街並みを楽しめます。
                また、ボルネオ島の熱帯雨林やランカウイ島など、自然を楽しめる場所も豊富です。
                日本からは成田・羽田・関西などからクアラルンプールへの直行便があります。飛行時間は約7〜8時間で、往復航空券は約5〜10万円ほどが目安です。",

  price: "日本と比べて物価はやや安め。通貨はMYR(マレーシアリンギット)で、1MYRは約37円前後(2026年8月現在)です。",

  visa_timing: "
  ・日本国籍の場合、観光目的で90日以内の滞在にはビザは不要です。
  ・入国前にはMalaysia Digital Arrival Card(MDAC)の登録が必要です。入国の３日前からオンラインで登録可能です。
  ",

  link:"https://www.my.emb-japan.go.jp/itpr_ja/newinfo_05122023.html",

  preparation: "マレーシアに渡航する際に必要な、最重要準備を以下にまとめました。
  パスポート残存有効期限:入国時に6ヶ月以上
  Malaysia Digital Arrival Card(MDAC),
  帰国または第三国への航空券
  現地通貨(MYR)またはクレジットカード",

  useful_items: "薄手の羽織り、日焼け止め、折りたたみ傘、モバイルバッテリー",

  transportation: "クアラルンプールではMRT、LRT、モノレールなどの公共交通機関が充実しています。配車アプリも便利です。都市間では長距離バスや国内線を利用できます。",

  cautions: "マレーシアはイスラム教を国の宗教としているため、モスクなどの宗教施設を訪れる際は服装やマナーに注意が必要です。
             また、スコールと呼ばれる急な大雨が降ることがあるため、折りたたみ傘があると便利です。",

  country_en: "Malaysia",
        
  description_en: "Malaysia combines modern cities, tropical rainforests, islands, and a multicultural food scene. Kuala Lumpur is the capital and a major transport hub. Popular destinations include Penang, Langkawi, Malacca, and parts of Malaysian Borneo.",
  price_en: "Costs depend on the destination and travel style. Hawker centres and local restaurants can offer good value, while hotels and island activities vary widely in price. The local currency is the Malaysian ringgit (MYR). Check current exchange rates before travelling.",
  visa_timing_en: "Japanese passport holders generally do not need a visa for short tourist visits within the permitted period. Travellers may need to complete the Malaysia Digital Arrival Card (MDAC) before arrival, subject to applicable exemptions and current rules. Check the official Malaysian immigration website for the latest requirements and deadlines.",
  preparation_en: "Check passport validity, visa-exemption conditions, and whether you must submit the Malaysia Digital Arrival Card. Keep accommodation details and onward travel information available.",
  useful_items_en: "Lightweight clothing, an umbrella or light rain jacket, sunscreen, insect repellent, comfortable shoes, and modest clothing for religious sites.",
  transportation_en: "Kuala Lumpur has rail services, buses, and taxis. Intercity buses, trains, domestic flights, and ferries connect many other destinations. Check schedules in advance for islands and rural areas.",
  cautions_en: "The climate is hot and humid, with heavy rain possible. Dress respectfully at religious sites, protect valuables, and use licensed or reputable transport. Check local rules and travel advice before departure."
      
)


Country.create!(
  country: "韓国",

  description: "日本から気軽に訪れることができる韓国は、歴史的な宮殿や伝統文化、韓国料理、カフェやショッピングまで、幅広く楽しめる国です。
                日本各地の空港からソウルや釜山への直行便が多数運航されています。東京からソウルまでは約2時間で、往復航空券は約2〜6万円ほどが目安です。",

  price: "日本と比べて大きく変わらないものも多いですが、食事や公共交通機関は比較的リーズナブルです。通貨はKRW(韓国ウォン)で、1,000KRWは約110円前後(2026現在)です。",

  visa_timing: "
  ・日本国籍の方は、90日以内の観光などの短期滞在であればビザは必要ありません。また、K-ETAも2026年12月31日までは申請不要です。
  ・2027年以降に渡航する場合は、K-ETAが必要かどうか、韓国政府の最新情報を確認してください。
  ・電子入国申告(e-Arrival Card)の申請が必要です。到着日の３日前からオンラインでの申告が可能です。",

  link: "http://www.anzen.mofa.go.jp/m/mbimmigration_003.html",

  preparation: "韓国に渡航する際に必要な、最重要準備を以下にまとめました。
  パスポート残存有効期限:入国時に３ヶ月以上が必要
  e-Arrival card",

  useful_items: "12月から2月に渡航する際は冷え込みが激しいため、カイロや防寒具を持っていくと安心です。地下鉄にはエレベーターがないことが多いので大きいキャリーケースは持ち運びが大変です。",

  transportation: "ソウルでは地下鉄とバスが非常に便利です。都市間移動にはKTXなどの高速鉄道や高速バスを利用できます。タクシーや配車アプリも利用できます。",

  cautions: "韓国では年上の方を敬う文化が根強いため、優先席は必要な方のために空けておきましょう。
             地下鉄やバスでは「気候同行カード」などの交通カードが便利です。バスは運転が比較的荒いため、乗車したらすぐに吊り革につかまるか着席しましょう。",
             
   country_en: "South Korea",
        description_en: "South Korea is known for its lively cities, historic palaces, mountain scenery, and contemporary culture. Seoul is the capital and a major destination for food, shopping, and museums. Busan, Jeju Island, and Gyeongju are also popular with visitors.",
        price_en: "Prices vary by city and season. Local meals and public transport can be reasonably priced, while accommodation in central areas may cost more during busy periods. The local currency is the South Korean won (KRW). Check current exchange rates.",
        visa_timing_en: "Japanese ordinary passport holders generally do not need a visa for short-term tourism, subject to the permitted period and entry conditions. Electronic travel authorization exemptions and entry procedures can change. Confirm the latest requirements through official Korean immigration sources before departure.",
        preparation_en: "Check passport validity, entry requirements, accommodation information, and transport options from the airport. Consider arranging a data plan or eSIM and a suitable payment method.",
        useful_items_en: "Comfortable walking shoes, weather-appropriate clothing, a power adapter if needed, and a translation or map app for use while travelling.",
        transportation_en: "Seoul and other major cities have extensive subway and bus networks. High-speed trains, intercity buses, taxis, and domestic flights connect destinations around the country.",
        cautions_en: "Follow local laws and public etiquette. Take care during busy rush hours, check weather conditions, and keep track of personal belongings in crowded areas. Some services may require local apps or payment methods."
     )

Country.create!(
  country: "中国",

  description: "中国には北京、上海、広州、西安、成都など多くの魅力的な都市があります。
                日本からは東京・大阪などから北京や上海、広州などへの直行便が運航されています。
                飛行時間は東京から北京まで約4時間、上海まで約3時間30分ほどで、価格は往復約4-10万円ほどです。",

  price: "日本と比べて比較的安め。通貨はCNY(中国人民元)で、1CNY = 約21円前後(2026年8月現在)です。",

  visa_timing: "
    ・日本の一般旅券を持つ人は、観光、ビジネス、親族・友人訪問、交流・訪問、トランジットなどを目的として30日以内の滞在をする場合、現在はビザが免除されています。
    このビザ免除措置は2026年12月31日まで有効とされています。
    ・30日を超えて滞在する場合や、ビザ免除の対象外となる目的で渡航する場合は、事前に中国ビザの取得が必要です。
    ・中国以外の国政の方が入国する際には還俗として入国カード(Foreigner's Arrival Card)の申告が必要です。
    ・入国カードのオンライン申告は無料で、中国到着日の72時間前から申請可能です。",
  
    link: "https://s.nia.gov.cn/ArrivalCardFillingPC/entry-registation-home",

  preparation: "中国に渡航する際に必要な、最重要準備を以下にまとめました。
  ・パスポート残存有効期限：入国時に6ヶ月以上が必要
  ・入国カード（オンライン)申請
  ・Googleなど日本で普段利用しているサービスが中国国内では利用できない場合があるため、百度地図（Baidu Maps）などの地図アプリをインストールしていくと便利です。",

  useful_items: "モバイルバッテリー、変換プラグ、翻訳アプリ、現地で利用できる決済手段",

  transportation: "高速鉄道、地下鉄、バス、タクシー、配車アプリ、国内線など。
                北京や上海などの大都市では地下鉄が発達しており、都市間の移動には高速鉄道が便利です。",

  cautions: "中国ではキャッシュレス決済が広く普及しているため、AlipayやWeChat Payなどを事前に準備しておくと便利です。
             また、日本で普段利用しているGoogle、LINEなどのサービスが利用できない場合があります。
             インターネット環境や決済方法について、出発前に準備しておくことをおすすめします。",

  country_en: "China",
        description_en: "China is a large and diverse country with historic landmarks, major modern cities, varied landscapes, and regional cuisines. Beijing is known for its imperial history, Shanghai for its skyline, and other destinations offer mountains, ancient towns, and cultural heritage sites.",
        price_en: "Travel costs vary considerably by city, season, and travel style. Public transport and local food can be good value, while high-speed rail, flights, and hotels vary in price. The local currency is the renminbi (RMB), commonly denominated in yuan (CNY). Check current exchange rates.",
        visa_timing_en: "Entry rules for Japanese passport holders can change and may depend on the purpose and length of stay. Do not rely on older visa-exemption information. Check the latest notice from the Chinese Embassy or official Chinese immigration authorities before purchasing tickets or travelling.",
        preparation_en: "Check the current visa or visa-exemption rules, passport validity, and any required arrival forms. Review access to maps, translation tools, mobile data, and payment services before departure. Keep accommodation and itinerary details available.",
        useful_items_en: "Comfortable shoes, weather-appropriate clothing, a power adapter, essential medicines in their original packaging, and offline copies of bookings and addresses.",
        transportation_en: "Major cities have extensive metro and bus networks. High-speed trains and domestic flights are widely used for long-distance travel. Check ticketing and identification requirements when booking transport.",
        cautions_en: "Internet access to some overseas websites and apps may be restricted. Payment systems and app requirements can differ from those in Japan. Follow local laws, respect rules at cultural sites, and check official travel advice before departure."
   
)


Country.create!(
  country: "イギリス",

  description: "イギリスにはロンドン、エディンバラ、マンチェスター、リバプールなど魅力的な都市があります。
                ロンドンではビッグ・ベンやバッキンガム宮殿、大英博物館などの歴史的な観光地を楽しめます。
                また、イングランドだけでなく、スコットランドやウェールズ、北アイルランドなど、
                地域によって異なる文化や美しい自然を見ることができます。
                日本からは東京・大阪などからロンドンへの直行便が運航されています。
                飛行時間は約14-15時間で、価格は往復約12-25万円ほどです。",

  price: "日本と比べて高め。通貨はGBP(イギリスポンド)で、1GBP = 約200円前後(2026年8月現在)です。",

  visa_timing: "・日本国籍の場合、観光などの短期滞在でビザは原則不要ですが、2026年2月25日以降、英国への渡航にはETA(電子渡航認証)の取得が必要です。
    ・ETAは観光目的などで最長6ヶ月までの渡航に利用できます。
    ・申請費用は£20で、申請には渡航に使用するパスポート、メールアドレス、クレジットカードなどが必要です。
    ・ETAは原則2年間、またはパスポートの有効期限まで有効です。
    ・入国カードは現在廃止されているため不要です。
    ",

  link: "https://www.gov.uk/eta",

  preparation: "イギリスに渡航する際に必要な、最重要準備を以下にまとめました。
  パスポート残存有効期限：帰国日まで有効であれば入国可能、
  ETA(電子渡航認証)の取得、
  クレジットカードなどの決済手段の準備、
  ",

  useful_items: "折りたたみ傘、耐水性のアウターなど、歩きやすい靴",

  transportation: "地下鉄、鉄道、バス、タクシー、配車アプリなど。
                ロンドンでは地下鉄やバスが非常に便利で、都市間の移動には鉄道が利用できます。
                オイスターカードやコンタクトレス決済に対応している交通機関もあります。",

  cautions: "地下鉄のトイレは有料ですが、VISAなどのクレジットカードタッチで利用できす場所がほとんどです。
             また、ロンドンなどの観光地ではスリが発生することがあるため、スマートフォンや財布などの貴重品は鞄につないでおくなどの防犯対策をするのがおすすめです。
             天候が変わりやすいため、雨具を持っておくと安心です。",

     country_en: "United Kingdom",
        description_en: "The United Kingdom includes England, Scotland, Wales, and Northern Ireland. London is the capital and a major destination for museums, theatres, and historic landmarks. Other popular destinations include Edinburgh, Oxford, Bath, and the countryside.",
        price_en: "The UK can be relatively expensive, especially for accommodation and dining in central London. Costs vary by region and season. The currency is the pound sterling (GBP). Check current exchange rates and budget for transport and attraction tickets.",
        visa_timing_en: "Japanese visitors travelling for eligible short stays generally do not need a standard visitor visa, but an Electronic Travel Authorisation (ETA) may be required before travel. Requirements depend on nationality, passport, and travel purpose. Check the official GOV.UK website and apply within the permitted timeframe.",
        preparation_en: "Check passport validity and whether you need a UK ETA or visa. Book accommodation and any time-slot attractions in advance, and confirm airport transfers and onward travel arrangements.",
        useful_items_en: "A waterproof jacket or compact umbrella, comfortable walking shoes, layers for changing weather, and a power adapter suitable for UK sockets.",
        transportation_en: "London has the Underground, buses, and rail services. National rail and coach networks connect cities, while local buses and trains serve regional areas. Compare ticket options and reserve popular routes in advance.",cautions_en: "Weather can change quickly. Keep valuables secure in busy tourist areas, follow road-crossing rules, and check the conditions of your travel authorization before departure. The UK includes four constituent countries with different local attractions and transport arrangements."
)


Country.create!(
  country: "ノルウェー",

  description: "ノルウェーは、フィヨルドやオーロラなど壮大な自然が魅力の国です。
                首都オスロでは美術館や公園を楽しむことができ、ベルゲンではカラフルな木造建築が並ぶ美しい街並みを見ることができます。
                また、北部ではオーロラ、夏には白夜を体験することができます。
                日本からはオスロなどへの直行便は限られており、ヨーロッパの主要都市を経由して渡航するのが一般的です。
                飛行時間は乗り継ぎを含めて約15-20時間ほどで、価格は往復約15-30万円ほどです。",

  price: "日本と比べてかなり高め。通貨はNOK(ノルウェークローネ)で、1NOK = 約15円前後(2026年8月現在)です。",

  visa_timing: "・日本国籍の場合、観光目的の短期滞在でビザは原則不要です。
    ・ノルウェーはシェンゲン協定加盟国のため、90日以内の滞在であれば、180日間の期間内で合計90日までビザなしで滞在できます。
    ・2026年8月現在、ETIASはまだ運用開始前ですが、2026年第4四半期に開始予定とされています。
    ・ETIASが開始された後は、日本などビザ免除国の旅行者も事前に渡航認証を取得する必要があります。",

  link: "http://www.anzen.mofa.go.jp/m/mbimmigration_166.html",

  preparation: "ノルウェーに渡航する際に必要な、最重要準備を以下にまとめました。
  パスポートの残存有効期限：出国予定日から3ヶ月以上必要、
  シェンゲン協定の滞在日数(180日間で最大90日)を確認、
  ETIAS開始後は渡航認証を取得、、
  防寒着や雨具の準備。
  特に冬にオーロラを見に行く場合は、十分な防寒対策が必要です。",

  useful_items: "防寒着、手袋、帽子、滑りにくい靴、雨具",

  transportation: "鉄道、バス、フェリー、飛行機、トラム、地下鉄など。
                オスロなどの都市では公共交通機関が充実しています。
                フィヨルド観光ではフェリーやクルーズを利用することが多く、都市間の移動には鉄道や国内線が便利です。",

  cautions: "ノルウェーは物価が非常に高いため、食費や交通費などをあらかじめ計算しておくことをおすすめします。
             冬は日照時間が短く、地域によっては非常に寒くなるため、防寒対策が重要です。
             また、フィヨルドや山岳地域を訪れる際には、天候の急変や足元に十分注意しましょう。",

 country_en: "Norway",
        description_en: "Norway is known for its fjords, mountains, coastal scenery, and northern lights. Oslo is the capital, while Bergen is a popular gateway to fjord country. Outdoor activities and scenic rail journeys are major attractions, particularly during the summer and winter seasons.",
        price_en: "Norway is generally an expensive destination for accommodation, dining, and transport. Costs vary by season and region. The currency is the Norwegian krone (NOK). Check current exchange rates and book accommodation and popular excursions early.",
        visa_timing_en: "Norway is part of the Schengen Area. Japanese passport holders generally do not need a visa for short visits within the Schengen short-stay limit, subject to the applicable conditions. Check current Schengen entry rules, passport requirements, and any new travel authorization requirements before departure.",
        preparation_en: "Check passport validity and Schengen entry conditions. Plan transport carefully if visiting fjords or remote areas, and review seasonal opening times for ferries, trails, and excursions.",
        useful_items_en: "Layered clothing, waterproof outerwear, sturdy walking shoes, gloves and a warm hat in cold seasons, and sun protection for outdoor activities.",
        transportation_en: "Trains, buses, ferries, domestic flights, and rental cars are useful depending on the route. Ferries and regional transport can have limited schedules, so check connections ahead of time.",
        cautions_en: "Weather can change rapidly, especially in mountains and coastal areas. Follow local hiking advice, check trail and road conditions, and prepare for cold weather even outside winter. Respect nature and local outdoor safety guidance."
   
)


Country.create!(
  country: "イタリア",

  description: "イタリアは、ローマ、フィレンツェ、ヴェネツィア、ミラノ、ナポリなど、
                歴史・芸術・ファッション・食文化を楽しめる都市が数多くあります。
                ローマではコロッセオやバチカン市国、フィレンツェではルネサンス芸術、
                ヴェネツィアでは美しい水の都の街並みを楽しむことができます。
                日本からは東京・大阪などからローマやミラノへの直行便が運航されています。
                飛行時間は約13-14時間で、価格は往復約12-25万円ほどです。",

  price: "日本と比べてやや高め。通貨はEUR(ユーロ)で、1EUR = 約170円前後(2026年8月現在)です。",

  visa_timing: "・日本国籍の場合、観光目的の短期滞在でビザは不要です。
    ・イタリアはシェンゲン協定加盟国のため、180日間の期間内で最大90日までビザなしで滞在できます。
    ・2026年9月現在、ETIASはまだ運用開始前ですが、2026年第4四半期に開始予定です。
    ・ETIAS開始後は、日本国籍を含むビザ免除国の旅行者は事前にETIASの取得が必要になります。
    ・ETIASの申請費用は20ユーロの予定です。
    ・入国カードの提出は不要です。",

  link: "https://www.esteri.it/en/",

  preparation: "イタリアに渡航する際に必要な、最重要準備を以下にまとめました。
  パスポートの残存有効期限：シェンゲン協定出国予定日から3ヶ月以上が必要、
  シェンゲン協定の滞在日数(180日間で最大90日)を確認、
  ETIAS開始後は渡航認証を取得、
  人気観光地では入場予約が必要な場合があるため、事前予約がおすすめです。",

  useful_items: "歩きやすい靴、セキュリティーポーチ、クレジットカードなどのスキミング防止ケース　など",

  transportation: "鉄道、地下鉄、バス、トラム、タクシー、フェリーなど。
                イタリア国内の都市間移動には高速鉄道が便利です。
                ローマやミラノなどの大都市では地下鉄やバスが利用できます。
                ヴェネツィアでは水上バスが主要な交通手段です。",

  cautions: "ローマ、ミラノ、フィレンツェ、ヴェネツィアなどの観光地では、スリや置き引きに注意しましょう。特に混雑した公共交通機関や観光スポットでは、バッグを体の前で持つなど、貴重品の管理を徹底することが大切です。
             また、教会や宗教施設を訪れる際は、露出の多い服装が禁止されている場合があるため、肩や膝が隠れる服装を用意しておくと安心です。",
             
  country_en: "Italy",
        description_en: "Italy is known for its art, architecture, historic cities, countryside, and regional cuisine. Rome is the capital, while Florence, Venice, Milan, Naples, and many smaller towns attract visitors for their distinct history and culture.",
        price_en: "Costs depend on the city, season, and travel style. Major tourist centres can be expensive, especially for accommodation and popular attractions. The currency is the euro (EUR). Check current exchange rates and reserve high-demand attractions where necessary.",
        visa_timing_en: "Italy is part of the Schengen Area. Japanese passport holders generally do not need a visa for short tourist visits within the Schengen short-stay limit, subject to entry conditions. Check current passport rules and any travel authorization requirements before departure.",
        preparation_en: "Check passport validity and Schengen entry conditions. Reserve popular museums and attractions in advance, and confirm train tickets and accommodation details.",
        useful_items_en: "Comfortable walking shoes, a small day bag, sun protection in warm months, layers for cooler evenings, and clothing appropriate for visiting churches and religious sites.",
        transportation_en: "Trains connect many major cities, while local buses, trams, metros, and regional trains serve urban areas. Rental cars can be useful in rural regions, but check restricted-traffic zones in historic centres.",
        cautions_en: "Watch for pickpocketing in crowded tourist areas and on public transport. Follow local traffic and restricted-zone rules, validate tickets where required, and respect dress codes at religious sites."
  
             )


Country.create!(
  country: "タイ",

  description: "タイは、首都バンコクを中心に、寺院・歴史・グルメ・ビーチ・ショッピングなど幅広い楽しみ方ができる国です。
                バンコクではワット・ポーやワット・アルンなどの寺院、チェンマイでは伝統的な文化や自然、
                プーケットやクラビでは美しいビーチを楽しむことができます。
                日本からは東京・大阪などからバンコクへの直行便が多く運航されています。
                飛行時間は約6-7時間で、価格は往復約5-10万円ほどです。",

  price: "日本と比べて安め。通貨はTHB(タイバーツ)で、1THB = 約4.5円前後(2026年8月現在)です。",

  visa_timing: "・日本国籍の場合、観光目的の短期滞在ではビザ免除制度が利用できますが、2026年9月15日からタイのビザ免除制度が変更される予定です。
    ・2026年9月15日以降は、これまでの60日間のビザ免除制度が見直され、国ごとの新しい制度が適用されます。
    ・そのため、渡航日が2026年9月15日以降の場合は、必ずタイ外務省の最新のビザ免除対象国・滞在可能日数を確認してください。
    ・オンライン上で事前登録をする入国書類「TDAC(THAILAND DIGITAL ARRIVAL CARD/タイデジタル到着カード)」の申請が必要です。
    ・タイ到着日の３日前から登録が可能です。",

  link: "https://tdac.immigration.go.th/arrival-card/#/home",

  preparation: "タイに渡航する際に必要な、最重要準備を以下にまとめました。
  パスポートの残存有効期限：入国時に6ヶ月以上、
  最新のビザ免除制度を確認",

  useful_items: "日焼け止め、虫よけ、薄手の長袖、帽子、サンダル、など",

  transportation: "BTS(スカイトレイン)、MRT(地下鉄)、バス、タクシー、配車アプリ、トゥクトゥク、鉄道、国内線など。
                バンコクではBTSやMRTが便利で、短距離移動には配車アプリも利用できます。
                地方都市や島への移動には国内線やバス、フェリーなどが利用できます。",

  cautions: "タイでは寺院などの宗教施設を訪れる際、肩や膝が隠れる服装が求められる場合があります。
             また、暑さや強い日差しによる熱中症に注意し、こまめに水分補給をしましょう。
             野良犬や野良猫にむやみに触れたり、食べ物を与えたりしないことも大切です。",

 country_en: "Thailand",
        description_en: "Thailand is known for its temples, beaches, tropical islands, and varied cuisine. Bangkok is the capital and a major transport hub. Chiang Mai, Phuket, Krabi, and other destinations offer different experiences, from cultural attractions to outdoor activities.",
        price_en: "Costs vary by destination and season. Street food and local transport can be affordable, while resorts, islands, and organised tours may cost more. The local currency is the Thai baht (THB). Check current exchange rates.",
        visa_timing_en: "Entry rules for Japanese passport holders, including visa-exemption periods and arrival requirements, can change. Check the official Thai immigration or embassy website before departure and confirm whether an arrival card or other online form is required for your travel date.",
        preparation_en: "Check passport validity and current entry conditions. Prepare accommodation and onward travel details, and confirm transport arrangements for islands or destinations outside major cities.",
        useful_items_en: "Lightweight clothing, sunscreen, insect repellent, comfortable sandals or walking shoes, and clothing that covers shoulders and knees for temple visits.",
        transportation_en: "Bangkok has rail services, buses, taxis, and ride-hailing options. Domestic flights, intercity buses, trains, ferries, and local songthaews serve other destinations.",
        cautions_en: "Heat and humidity can be intense. Stay hydrated, use sun protection, and take care on roads. Respect temple customs, follow local laws, and use reputable transport and tour providers."
    
)


Country.create!(
  country: "インドネシア",

  description: "インドネシアは、バリ島をはじめ、ジャワ島やロンボク島など多くの島からなる国です。
                バリ島では美しいビーチや寺院、ウブドの自然や芸術文化を楽しむことができます。
                ジャワ島には世界遺産のボロブドゥール遺跡やプランバナン寺院があり、
                自然・歴史・文化を組み合わせた旅行ができます。
                日本からは東京・大阪などからジャカルタやバリ島への直行便が運航されています。
                飛行時間は約7-8時間で、価格は往復約6-12万円ほどです。",

  price: "日本と比べて安め。通貨はIDR(インドネシアルピア)で、1,000IDR = 約9円前後(2026年8月現在)です。",

  visa_timing: "
・日本国籍の場合、インドネシアでは観光目的で入国する際にVisa on Arrival(VoA)またはe-VOAを利用することができます。
・VoAは入国時に取得でき、滞在期間は最初の30日間です。1回延長することで最大60日間まで滞在できます。
・e-VOAは渡航前にオンラインで申請することができ、入国時の手続きを簡略化できます。
・申請には有効期限が6ヶ月以上残っているパスポートと、インドネシアからの帰国または第三国への航空券が必要です。
・e-VOAはオンラインで申請・支払いができます。(発行費用500,000ルピア)
・All Indonesia(税関申告、検疫申告、入国審査に関する情報登録を統合した申告制度)の登録が必要です。
・インドネシア到着の3日前から入力可能です。料金はかかりません。
",

  link: "https://www.id.emb-japan.go.jp/itpr_ja/visaj_10_01.html",

  preparation: "インドネシアに渡航する際に必要な、最重要準備を以下にまとめました。
  パスポートの残存有効期限:入国時に6ヶ月以上必要、
  Visa on Arrivalまたはe-VOAの準備、
  All Indonesiaの登録、
  帰国または第三国への航空券",

  useful_items: "日焼け止め、虫よけ、薄手の長袖、サンダル、粉末ポカリ、胃薬",

  transportation: "配車アプリ、タクシー、バス、鉄道、国内線、フェリーなど。
                バリ島では配車アプリやタクシーが便利です。
                ジャワ島では鉄道が発達しており、ジャカルタから他の都市への移動にも利用できます。
                島から島への移動には国内線やフェリーが利用されます。",

  cautions: "インドネシアでは地域によって宗教や文化が異なるため、寺院や宗教施設を訪れる際には現地の服装やマナーを守りましょう。
             寺院に入る際に肌の露出を控える必要がある場合があります。
             水道水はそのまま飲まず、基本的にペットボトルの水を利用することをおすすめします。",

  country_en: "Indonesia",
        description_en: "Indonesia is an archipelago in Southeast Asia with thousands of islands and a wide range of cultures and landscapes. Jakarta is a major urban centre, while Bali, Yogyakarta, and other islands are popular for beaches, temples, nature, and cultural experiences.",
        price_en: "Costs vary significantly between islands and destinations. Local meals and transport may be affordable, while resort accommodation, island transfers, and guided activities can increase the budget. The local currency is the Indonesian rupiah (IDR). Check current exchange rates.",
        visa_timing_en: "Visa requirements depend on nationality, purpose, length of stay, and port of entry. Some travellers may be eligible for visa-free entry or a visa on arrival/e-visa, subject to conditions. Check the official Indonesian immigration website for the latest rules and whether an electronic customs or arrival declaration is required.",
        preparation_en: "Check passport validity, visa eligibility, and any required electronic arrival or customs forms. Confirm domestic flights, ferry schedules, accommodation details, and travel insurance before departure.",
        useful_items_en: "Lightweight clothing, sunscreen, insect repellent, comfortable shoes, swimwear where appropriate, and modest clothing for temples and religious sites.",
        transportation_en: "Domestic flights and ferries connect islands. In cities and tourist areas, taxis, ride-hailing services, buses, and private transfers may be available. Allow extra time for traffic and inter-island connections.",
        cautions_en: "Conditions vary widely between islands. Check local weather and volcanic or natural-hazard advisories, respect religious customs, and take care with road travel and ocean activities. Follow local laws and official travel advice."
   
)
 

# Tags

tag_names = [
  "🏛️ 遺跡・歴史",
  "🧳 一人旅",
  "💰 低予算",
  "📸 インスタ映え",
  "🚶 街歩き",
  "🌿 自然",
  "👭 友達と！",
  "♨️ のんびり",
  "🍴 グルメ",
  "🎨 アート",
  "🤱家族で",
  "🏖️ リゾート"
]

tag_names.each do |name|
  Tag.find_or_create_by!(name: name)
end