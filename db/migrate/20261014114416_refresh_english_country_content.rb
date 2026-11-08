class RefreshEnglishCountryContent < ActiveRecord::Migration[7.2]
  def up
    contents = {
      "ニュージーランド" => {
        country_en: "New Zealand",
        description_en: "New Zealand is an island country in the southwestern Pacific Ocean, known for its beautiful natural landscapes, mountains, lakes, beaches, and unique wildlife. Wellington is the capital, while Auckland is the largest city. Popular destinations include Queenstown, Rotorua, Milford Sound, and the national parks.",
        price_en: "New Zealand can be relatively expensive, especially for accommodation, dining, and activities in popular tourist areas. Costs vary by season and travel style. The local currency is the New Zealand dollar (NZD). Check current exchange rates and book accommodation and popular activities in advance.",
        visa_timing_en: "Japanese passport holders visiting New Zealand for eligible short-term tourism generally need an NZeTA before travelling and may be eligible for visa-waiver entry, subject to the applicable conditions. An International Visitor Conservation and Tourism Levy (IVL) may also apply. Check the official New Zealand immigration website for the latest requirements before departure.",
        preparation_en: "Check passport validity, apply for an NZeTA if required, and confirm any applicable entry declarations. Prepare accommodation details, return or onward travel information, and travel insurance before departure.",
        useful_items_en: "Layered clothing, a waterproof jacket, comfortable walking shoes, sunscreen, insect repellent, and a suitable power adapter. Bring warm clothing for mountain areas and cooler seasons.",
        transportation_en: "Domestic flights, intercity buses, trains on selected routes, ferries, and rental cars are common options. Renting a car can be useful for exploring rural areas, but allow extra time for winding roads and long distances.",
        cautions_en: "Weather can change quickly, especially in mountainous areas. Follow local hiking and water-safety advice, check road conditions, and protect yourself from strong ultraviolet radiation. If driving, remember that vehicles travel on the left. Follow local laws and official travel advice."
      },

      "ベトナム" => {
        country_en: "Vietnam",
        description_en: "Vietnam is a Southeast Asian country known for its vibrant cities, historic towns, beaches, and distinctive cuisine. Hanoi is the capital, while Ho Chi Minh City is the largest city. Popular destinations include Ha Long Bay, Hoi An, and Da Nang. Travel times and flight prices depend on the departure airport, season, and airline.",
        price_en: "Costs vary by destination and travel style. Street food and local restaurants are generally affordable, while hotels and tourist activities range from budget to luxury. The local currency is the Vietnamese dong (VND). Check current exchange rates before departure.",
        visa_timing_en: "Japanese ordinary passport holders are generally eligible for visa-free stays of up to 45 days under Vietnam's current exemption policy. Longer stays or other travel purposes may require an e-visa or another visa. Entry conditions can change, so confirm the latest requirements through official Vietnamese immigration sources before booking.",
        preparation_en: "Check passport validity, return or onward travel arrangements, accommodation details, and any entry requirements. Keep digital and paper copies of important travel documents.",
        useful_items_en: "Lightweight clothing, comfortable walking shoes, sunscreen, insect repellent, a reusable water bottle, and a suitable power adapter.",
        transportation_en: "Transportation options include domestic flights, intercity trains, long-distance buses, taxis, ride-hailing services, and local buses. Traffic can be busy in major cities, so allow extra time for transfers.",
        cautions_en: "Road traffic can be challenging, especially for pedestrians. Protect valuables in crowded places, use reputable transport providers, and take care with food and drinking water. Follow local laws and check current travel advice."
      },

      "カンボジア" => {
        country_en: "Cambodia",
        description_en: "Cambodia is a Southeast Asian country famous for Angkor Wat, historic temples, and the capital city of Phnom Penh. Siem Reap is a popular base for exploring the Angkor archaeological complex, while the country also has rural landscapes and coastal destinations.",
        price_en: "Travel costs vary by location and comfort level. Local meals and transport can be inexpensive, while temple passes, guided tours, and higher-end accommodation add to the budget. The local currency is the Cambodian riel (KHR), and US dollars are also commonly used in many tourist areas. Check current exchange rates.",
        visa_timing_en: "Visa requirements depend on nationality, passport type, purpose, and length of stay. Visitors may need a visa or be eligible for an electronic visa or visa on arrival. Check the official Cambodian immigration or e-visa website for the rules and application timing that apply to your passport.",
        preparation_en: "Check passport validity and visa requirements in advance. Confirm whether an electronic arrival form or other entry declaration is required for your travel date. Keep copies of your passport, booking details, and travel insurance.",
        useful_items_en: "Lightweight clothing, comfortable shoes, sun protection, insect repellent, and clothing that covers shoulders and knees when visiting religious sites.",
        transportation_en: "Tuk-tuks, taxis, ride-hailing services, buses, and private transfers are common options. Long-distance journeys can take longer than expected because of road conditions and traffic.",
        cautions_en: "Respect temple rules and local customs. Stay hydrated in hot weather, protect yourself from mosquitoes, and use care when crossing roads. Use reputable guides and transport providers, and follow official safety advice."
      },

      "マレーシア" => {
        country_en: "Malaysia",
        description_en: "Malaysia combines modern cities, tropical rainforests, islands, and a multicultural food scene. Kuala Lumpur is the capital and a major transport hub. Popular destinations include Penang, Langkawi, Malacca, and parts of Malaysian Borneo.",
        price_en: "Costs depend on the destination and travel style. Hawker centres and local restaurants can offer good value, while hotels and island activities vary widely in price. The local currency is the Malaysian ringgit (MYR). Check current exchange rates before travelling.",
        visa_timing_en: "Japanese passport holders generally do not need a visa for short tourist visits within the permitted period. Travellers may need to complete the Malaysia Digital Arrival Card (MDAC) before arrival, subject to applicable exemptions and current rules. Check the official Malaysian immigration website for the latest requirements and deadlines.",
        preparation_en: "Check passport validity, visa-exemption conditions, and whether you must submit the Malaysia Digital Arrival Card. Keep accommodation details and onward travel information available.",
        useful_items_en: "Lightweight clothing, an umbrella or light rain jacket, sunscreen, insect repellent, comfortable shoes, and modest clothing for religious sites.",
        transportation_en: "Kuala Lumpur has rail services, buses, and taxis. Intercity buses, trains, domestic flights, and ferries connect many other destinations. Check schedules in advance for islands and rural areas.",
        cautions_en: "The climate is hot and humid, with heavy rain possible. Dress respectfully at religious sites, protect valuables, and use licensed or reputable transport. Check local rules and travel advice before departure."
      },

      "韓国" => {
        country_en: "South Korea",
        description_en: "South Korea is known for its lively cities, historic palaces, mountain scenery, and contemporary culture. Seoul is the capital and a major destination for food, shopping, and museums. Busan, Jeju Island, and Gyeongju are also popular with visitors.",
        price_en: "Prices vary by city and season. Local meals and public transport can be reasonably priced, while accommodation in central areas may cost more during busy periods. The local currency is the South Korean won (KRW). Check current exchange rates.",
        visa_timing_en: "Japanese ordinary passport holders generally do not need a visa for short-term tourism, subject to the permitted period and entry conditions. Electronic travel authorization exemptions and entry procedures can change. Confirm the latest requirements through official Korean immigration sources before departure.",
        preparation_en: "Check passport validity, entry requirements, accommodation information, and transport options from the airport. Consider arranging a data plan or eSIM and a suitable payment method.",
        useful_items_en: "Comfortable walking shoes, weather-appropriate clothing, a power adapter if needed, and a translation or map app for use while travelling.",
        transportation_en: "Seoul and other major cities have extensive subway and bus networks. High-speed trains, intercity buses, taxis, and domestic flights connect destinations around the country.",
        cautions_en: "Follow local laws and public etiquette. Take care during busy rush hours, check weather conditions, and keep track of personal belongings in crowded areas. Some services may require local apps or payment methods."
      },

      "中国" => {
        country_en: "China",
        description_en: "China is a large and diverse country with historic landmarks, major modern cities, varied landscapes, and regional cuisines. Beijing is known for its imperial history, Shanghai for its skyline, and other destinations offer mountains, ancient towns, and cultural heritage sites.",
        price_en: "Travel costs vary considerably by city, season, and travel style. Public transport and local food can be good value, while high-speed rail, flights, and hotels vary in price. The local currency is the renminbi (RMB), commonly denominated in yuan (CNY). Check current exchange rates.",
        visa_timing_en: "Entry rules for Japanese passport holders can change and may depend on the purpose and length of stay. Do not rely on older visa-exemption information. Check the latest notice from the Chinese Embassy or official Chinese immigration authorities before purchasing tickets or travelling.",
        preparation_en: "Check the current visa or visa-exemption rules, passport validity, and any required arrival forms. Review access to maps, translation tools, mobile data, and payment services before departure. Keep accommodation and itinerary details available.",
        useful_items_en: "Comfortable shoes, weather-appropriate clothing, a power adapter, essential medicines in their original packaging, and offline copies of bookings and addresses.",
        transportation_en: "Major cities have extensive metro and bus networks. High-speed trains and domestic flights are widely used for long-distance travel. Check ticketing and identification requirements when booking transport.",
        cautions_en: "Internet access to some overseas websites and apps may be restricted. Payment systems and app requirements can differ from those in Japan. Follow local laws, respect rules at cultural sites, and check official travel advice before departure."
      },

      "イギリス" => {
        country_en: "United Kingdom",
        description_en: "The United Kingdom includes England, Scotland, Wales, and Northern Ireland. London is the capital and a major destination for museums, theatres, and historic landmarks. Other popular destinations include Edinburgh, Oxford, Bath, and the countryside.",
        price_en: "The UK can be relatively expensive, especially for accommodation and dining in central London. Costs vary by region and season. The currency is the pound sterling (GBP). Check current exchange rates and budget for transport and attraction tickets.",
        visa_timing_en: "Japanese visitors travelling for eligible short stays generally do not need a standard visitor visa, but an Electronic Travel Authorisation (ETA) may be required before travel. Requirements depend on nationality, passport, and travel purpose. Check the official GOV.UK website and apply within the permitted timeframe.",
        preparation_en: "Check passport validity and whether you need a UK ETA or visa. Book accommodation and any time-slot attractions in advance, and confirm airport transfers and onward travel arrangements.",
        useful_items_en: "A waterproof jacket or compact umbrella, comfortable walking shoes, layers for changing weather, and a power adapter suitable for UK sockets.",
        transportation_en: "London has the Underground, buses, and rail services. National rail and coach networks connect cities, while local buses and trains serve regional areas. Compare ticket options and reserve popular routes in advance.",
        cautions_en: "Weather can change quickly. Keep valuables secure in busy tourist areas, follow road-crossing rules, and check the conditions of your travel authorization before departure. The UK includes four constituent countries with different local attractions and transport arrangements."
      },

      "ノルウェー" => {
        country_en: "Norway",
        description_en: "Norway is known for its fjords, mountains, coastal scenery, and northern lights. Oslo is the capital, while Bergen is a popular gateway to fjord country. Outdoor activities and scenic rail journeys are major attractions, particularly during the summer and winter seasons.",
        price_en: "Norway is generally an expensive destination for accommodation, dining, and transport. Costs vary by season and region. The currency is the Norwegian krone (NOK). Check current exchange rates and book accommodation and popular excursions early.",
        visa_timing_en: "Norway is part of the Schengen Area. Japanese passport holders generally do not need a visa for short visits within the Schengen short-stay limit, subject to the applicable conditions. Check current Schengen entry rules, passport requirements, and any new travel authorization requirements before departure.",
        preparation_en: "Check passport validity and Schengen entry conditions. Plan transport carefully if visiting fjords or remote areas, and review seasonal opening times for ferries, trails, and excursions.",
        useful_items_en: "Layered clothing, waterproof outerwear, sturdy walking shoes, gloves and a warm hat in cold seasons, and sun protection for outdoor activities.",
        transportation_en: "Trains, buses, ferries, domestic flights, and rental cars are useful depending on the route. Ferries and regional transport can have limited schedules, so check connections ahead of time.",
        cautions_en: "Weather can change rapidly, especially in mountains and coastal areas. Follow local hiking advice, check trail and road conditions, and prepare for cold weather even outside winter. Respect nature and local outdoor safety guidance."
      },

      "イタリア" => {
        country_en: "Italy",
        description_en: "Italy is known for its art, architecture, historic cities, countryside, and regional cuisine. Rome is the capital, while Florence, Venice, Milan, Naples, and many smaller towns attract visitors for their distinct history and culture.",
        price_en: "Costs depend on the city, season, and travel style. Major tourist centres can be expensive, especially for accommodation and popular attractions. The currency is the euro (EUR). Check current exchange rates and reserve high-demand attractions where necessary.",
        visa_timing_en: "Italy is part of the Schengen Area. Japanese passport holders generally do not need a visa for short tourist visits within the Schengen short-stay limit, subject to entry conditions. Check current passport rules and any travel authorization requirements before departure.",
        preparation_en: "Check passport validity and Schengen entry conditions. Reserve popular museums and attractions in advance, and confirm train tickets and accommodation details.",
        useful_items_en: "Comfortable walking shoes, a small day bag, sun protection in warm months, layers for cooler evenings, and clothing appropriate for visiting churches and religious sites.",
        transportation_en: "Trains connect many major cities, while local buses, trams, metros, and regional trains serve urban areas. Rental cars can be useful in rural regions, but check restricted-traffic zones in historic centres.",
        cautions_en: "Watch for pickpocketing in crowded tourist areas and on public transport. Follow local traffic and restricted-zone rules, validate tickets where required, and respect dress codes at religious sites."
      },

      "タイ" => {
        country_en: "Thailand",
        description_en: "Thailand is known for its temples, beaches, tropical islands, and varied cuisine. Bangkok is the capital and a major transport hub. Chiang Mai, Phuket, Krabi, and other destinations offer different experiences, from cultural attractions to outdoor activities.",
        price_en: "Costs vary by destination and season. Street food and local transport can be affordable, while resorts, islands, and organised tours may cost more. The local currency is the Thai baht (THB). Check current exchange rates.",
        visa_timing_en: "Entry rules for Japanese passport holders, including visa-exemption periods and arrival requirements, can change. Check the official Thai immigration or embassy website before departure and confirm whether an arrival card or other online form is required for your travel date.",
        preparation_en: "Check passport validity and current entry conditions. Prepare accommodation and onward travel details, and confirm transport arrangements for islands or destinations outside major cities.",
        useful_items_en: "Lightweight clothing, sunscreen, insect repellent, comfortable sandals or walking shoes, and clothing that covers shoulders and knees for temple visits.",
        transportation_en: "Bangkok has rail services, buses, taxis, and ride-hailing options. Domestic flights, intercity buses, trains, ferries, and local songthaews serve other destinations.",
        cautions_en: "Heat and humidity can be intense. Stay hydrated, use sun protection, and take care on roads. Respect temple customs, follow local laws, and use reputable transport and tour providers."
      },

      "インドネシア" => {
        country_en: "Indonesia",
        description_en: "Indonesia is an archipelago in Southeast Asia with thousands of islands and a wide range of cultures and landscapes. Jakarta is a major urban centre, while Bali, Yogyakarta, and other islands are popular for beaches, temples, nature, and cultural experiences.",
        price_en: "Costs vary significantly between islands and destinations. Local meals and transport may be affordable, while resort accommodation, island transfers, and guided activities can increase the budget. The local currency is the Indonesian rupiah (IDR). Check current exchange rates.",
        visa_timing_en: "Visa requirements depend on nationality, purpose, length of stay, and port of entry. Some travellers may be eligible for visa-free entry or a visa on arrival/e-visa, subject to conditions. Check the official Indonesian immigration website for the latest rules and whether an electronic customs or arrival declaration is required.",
        preparation_en: "Check passport validity, visa eligibility, and any required electronic arrival or customs forms. Confirm domestic flights, ferry schedules, accommodation details, and travel insurance before departure.",
        useful_items_en: "Lightweight clothing, sunscreen, insect repellent, comfortable shoes, swimwear where appropriate, and modest clothing for temples and religious sites.",
        transportation_en: "Domestic flights and ferries connect islands. In cities and tourist areas, taxis, ride-hailing services, buses, and private transfers may be available. Allow extra time for traffic and inter-island connections.",
        cautions_en: "Conditions vary widely between islands. Check local weather and volcanic or natural-hazard advisories, respect religious customs, and take care with road travel and ocean activities. Follow local laws and official travel advice."
      }

    }

    contents.each do |japanese_name, fields|
      country = Country.find_by!(country: japanese_name)
      country.update!(fields)
    end
  end

  def down
    # Keep the English content when rolling back this migration.
  end
end