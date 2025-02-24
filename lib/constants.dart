DataTypes dataType = DataTypes.animals;

enum DataTypes {
  animals,
  arabCountries,
  fruits,
  vegetables,
  sports,
  desserts,
  cartoonCharacters,
  famousPeople;

  String get name => switch (this) {
        DataTypes.animals => 'حيوانات',
        DataTypes.arabCountries => 'دول عربية',
        DataTypes.fruits => 'فواكه',
        DataTypes.vegetables => 'خضراوات',
        DataTypes.sports => 'رياضة',
        DataTypes.desserts => 'حلويات',
        DataTypes.cartoonCharacters => 'شخصيات كرتونية',
        DataTypes.famousPeople => 'شخصيات مشهورة',
      };
}

List<String> get data => [
      if (dataType == DataTypes.animals) ..._animals,
      if (dataType == DataTypes.arabCountries) ..._arabCountries,
      if (dataType == DataTypes.fruits) ..._fruits,
      if (dataType == DataTypes.vegetables) ..._vegetables,
      if (dataType == DataTypes.sports) ..._sports,
      if (dataType == DataTypes.desserts) ..._desserts,
      if (dataType == DataTypes.cartoonCharacters) ..._cartoonCharacters,
      if (dataType == DataTypes.famousPeople) ..._famousPeople,
    ];
const _arabCountries = [
  "🇲🇷 موريتانيا",
  "🇲🇦 المغرب",
  "🇩🇿 الجزائر",
  "🇹🇳 تونس",
  "🇱🇾 ليبيا",
  "🇪🇬 مصر",
  "🇸🇩 السودان",
  "🇸🇴 الصومال",
  "🇩🇯 جيبوتي",
  "🇰🇲 جزر القمر",
  "🇸🇾 سوريا",
  "🇵🇸 فلسطين",
  "🇮🇶 العراق",
  "🇱🇧 لبنان",
  "🇯🇴 الاردن",
  "🇸🇦 السعودية",
  "🇰🇼 الكويت",
  "🇧🇭 البحرين",
  "🇶🇦 قطر",
  "🇴🇲 سلطنة عمان",
  "🇦🇪 الإمارات",
  "🇾🇪 اليمن",
];

const _fruits = [
  "🍎 تفاح",
  "🍌 موز",
  "🍇 عنب",
  "🍓 فراولة",
  "🍉 بطيخ",
  "🍑 خوخ",
  "🍒 كرز",
  "🍍 أناناس",
  "🥭 مانجو",
  "🥝 كيوي",
  "🍋 ليمون",
  "🍊 برتقال",
  "🍈 شمام",
  "🥥 جوز الهند",
  "🍐 إجاص",
  " توت أزرق",
  "🍅 طماطم", // Technically a fruit!
  "🥑 أفوكادو",
  "🍏 تفاح أخضر",
  " زيتون", // Olive is a fruit!
];

const _animals = [
  "🦁 أسد",
  "🐯 نمر",
  "🐆 فهد",
  "🐺 ذئب",
  "🐻 دب",
  "🦊 ثعلب",
  "🐾 ضبع",
  "🦌 غزال",
  "🐘 فيل",
  "🦒 زرافة",
  "🦛 فرس النهر",
  "🦏 وحيد القرن",
  "🐃 جاموس",
  "🦍 غوريلا",
  "🐒 شمبانزي",
  "🦉 بومة",
  "🦅 صقر",
  "🦅 نسر",
  "🦜 ببغاء",
  "🕊️ حمامة",
  "🐦‍⬛ غراب",
  "🐦 نورس",
  "🐧 بطريق",
  "🐼 باندا",
  "🐊 تمساح",
  "🐢 سلحفاة",
  "🐍 أفعى",
  "🐸 ضفدع",
  "⭐ نجم البحر",
  "🎐 قنديل البحر",
  "🐬 دلفين",
  "🐋 حوت",
  "🦈 قرش",
  "🐙 إخطبوط",
  "🐇 أرنب",
  "🐿️ سنجاب",
  " قندس",
  "🐹 هامستر",
  "🐁 فأر",
  "🐀 جرذ",
  "🦔 نيص",
  "🦨 ظربان",
  "🦝 راكون",
  "🦘 كنغر",
  "🐨 كوالا",
  "🐎 حصان",
  "🐴 حمار",
  " بغل",
  "🐄 بقرة",
  "🐂 ثور",
  "🐑 خروف",
  "🐐 ماعز",
  "🐪 جمل",
  "🦙 لاما",
  "🐕 كلب",
  "🐈 قط",
  "🐓 دجاجة",
  "🐓 ديك",
  "🦆 بط",
  "🦢 أوز",
  "🦢 بجع",
  "🦃 نعامة",
  "🦚 طاووس",
  "🐦 هدهد",
  "🐜 نمل",
  "🐝 نحلة",
  "🐝 دبور",
  "🦋 فراشة",
  "🦗 جرادة",
  " صرصور",
  " خنفساء",
  "🕷️ عنكبوت",
  "🦂 عقرب",
  "🐟 سمكة",
];

const _vegetables = [
  "🥕 جزر",
  "🥦 بروكلي",
  "🥒 خيار",
  "🌶️ فليفلة",
  "🧅 بصل",
  "🧄 ثوم",
  "🥔 بطاطس",
  "🥬 خس",
  "🌽 ذرة",
  "🍆 باذنجان",
  "🥑 أفوكادو",
  "🥜 فول سوداني",
  "بازلاء",
  "فاصوليا خضراء",
  "🍄 فطر",
  "🌿 بقدونس",
  "🌿 كزبرة",
  "🌿 نعناع",
  "🌿 ريحان",
  "🌿 سبانخ",
  "🌿 جرجير",
];

const _desserts = [
  "🍰 كعكة",
  "🧁 كب كيك",
  "🍮 كاسترد",
  "🍩 دونات",
  "🍪 كوكيز",
  "🍫 شوكولاتة",
  "🍬 حلوى",
  "🍭 مصاصة",
  "🍦 آيس كريم",
  "🍨 آيس كريم",
  "🍧 مثلجات",
  "🍫 براوني",
  "🧇 وافل",
  "🥞 بانكيك",
  "🍯 عسل",
  "🍮 فطيرة كريمية",
  "🍮 تيراميسو",
  "🍮 تشيز كيك",
  "🍮 كريب",
  "🍮 كعكة الجبن",
  "🍮 كعكة الجزر",
  "🍮 كعكة الشوكولاتة",
  "🍮 كعكة الفانيليا",
  "🍮 كعكة الليمون",
  "🍮 كعكة القهوة",
];

const _sports = [
  "⚽ كرة القدم",
  "🏀 كرة السلة",
  "🏈 كرة القدم الأمريكية",
  "🎾 التنس",
  "🏐 الكرة الطائرة",
  "🏓 تنس الطاولة",
  "🏸 الريشة الطائرة",
  "🥊 الملاكمة",
  "🤼 المصارعة",
  "🏊‍♂️ السباحة",
  "🚴‍♂️ ركوب الدراجات",
  "🏃‍♂️ الجري",
  "🏋️‍♂️ رفع الأثقال",
  "⛷️ التزلج",
  "🏄‍♂️ ركوب الأمواج",
];

const _cartoonCharacters = [
  "ميكي ماوس",
  "بطوط",
  "بندق",
  "توم",
  "جيري",
  "سبونج بوب",
  "بسيط",
  "ساندي",
  "شفيق",
  "مستر سلطع",
  "باغز باني",
  "دافي داك",
  "تويتي",
  "سيلفستر",
  "باباي",
  "سكوبي دو",
  "وودي وودبيكر",
  "شريك",
  "فيونا",
  "النمر الوردي",
  "سابق",
  "لاحق",
  "لاحق",
  "كونان",
  "الرجل الاخضر",
  "الرجل الحديدي",
  "كابتن أمريكا",
  "باتمان",
  "سبايدرمان",
  "سوبر مان",
  "بن تن",
  "غوكو",
  "فيجيتا",
  "سيمبا",
  "سندباد",
  "علاء الدين",
  "ياسمينة",
  "سونيك",
  "كابتن ماجد",
  "بسام",
  "عدنان",
  "لينا",
  "القناع الاخضر",
  "ماشا",
  "ماوكلي",
  "دكستر",
  "نقار الخشب",
  "النمر المقنع",
  "همتارو",
];

const _famousPeople = [
  "محمد علي", // Muhammad Ali
  "ألبرت أينشتاين", // Albert Einstein
  "مهاتما غاندي", // Mahatma Gandhi
  "ليونيل ميسي", // Lionel Messi
  "كريستيانو رونالدو", // Cristiano Ronaldo
  "مايكل جوردان", // Michael Jordan
  "ستيف جوبز", // Steve Jobs
  "بيل غيتس", // Bill Gates
  "ماريا كوري", // Marie Curie
  "إسحاق نيوتن", // Isaac Newton
  "ليوناردو دافنشي", // Leonardo da Vinci
  "بابلو بيكاسو", // Pablo Picasso
  "بيتهوفن", // Ludwig van Beethoven
  "شكسبير", // William Shakespeare
  "أرسطو", // Aristotle
  "أفلاطون", // Plato
  "سقراط", // Socrates
  "نابليون بونابرت", // Napoleon Bonaparte
  "أديسون", // Thomas Edison
  "ستيفن هوكينغ", // Stephen Hawking
  "بروس لي", // Bruce Lee
  "جاكي شان", // Jackie Chan
  "أرنولد شوارزنيجر", // Arnold Schwarzenegger
  "سيلفستر ستالون", // Sylvester Stallone
  "توم كروز", // Tom Cruise
  "براد بيت", // Brad Pitt
  "ليوناردو دي كابريو", // Leonardo DiCaprio
  "مايكل جاكسون", // Michael Jackson
  "أم كلثوم", // Umm Kulthum
  "فيروز", // Fairuz
  "عبد الحليم حافظ", // Abdel Halim Hafez
  "محمد عبد الوهاب", // Mohamed Abdel Wahab
  "مصطفى محمود", // Mustafa Mahmoud
  "عمر المختار", // Omar Al-Mukhtar
  "صلاح الدين الأيوبي", // Saladin
  "هارون الرشيد", // Harun al-Rashid
  "ابن سينا", // Avicenna
  "ابن خلدون", // Ibn Khaldun
  "الخوارزمي", // Al-Khwarizmi
  "ابن الهيثم", // Alhazen
  "جابر بن حيان", // Jabir ibn Hayyan
  "الرازي", // Al-Razi
  "ابن بطوطة", // Ibn Battuta
  "ابن رشد", // Averroes
  "ابن النفيس", // Ibn al-Nafis
  "ابن البيطار", // Ibn al-Baitar
  "ابن ماجد", // Ahmad ibn Majid
  "ابن عربي", // Ibn Arabi
  "ابن تيمية", // Ibn Taymiyyah
  "ابن قيم الجوزية", // Ibn Qayyim al-Jawziyya
  "ابن حزم", // Ibn Hazm
  "ابن الجوزي", // Ibn al-Jawzi
  "ابن عساكر", // Ibn Asakir
  "ابن كثير", // Ibn Kathir
  "ابن منظور", // Ibn Manzur
  "ابن قدامة", // Ibn Qudamah
  "ابن حجر العسقلاني", // Ibn Hajar al-Asqalani
];
