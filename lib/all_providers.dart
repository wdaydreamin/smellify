import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'models/article_model.dart';
import 'models/fragrance_model.dart';
import 'models/preferences_model.dart';
import 'models/preferences_photos.dart';

final articleProvider = Provider<List<Article>>((ref) => [
      const Article(
        id: '1',
        title: '"Nota" nedir?',
        subtitle:
            '\t Parfümü esanslar oluşturuyor ve bu esansların kalıcılık süreleri özelliklerine göre değişiklik gösteriyor. Nota da burada devreye giriyor.',
        body1:
            '\t Parfüm dünyasında kullanılan terimler ile müzik dünyasında kullanılan terimler fazlasıyla benzeşir. Bunun sebebi, büyük olasılık, her iki farklı dünyanın da soyut kavramlara ve duyulara hitap etmesidir. Bir müzik parçasını nasıl elle tutamıyorsak ve algımızda soyut bir anlam, bir duygusal coşku yaratabiliyorsa, parfüm ve kokulu ürünler için de aynı şey geçerlidir. Üstelik her iki farklı disiplinin eserleri de zaman içinde organik yapıları değişken olan ürünlerdir. Bir müzik parçasında nasıl intro, kreşendo ve final bölümleri varsa, bir parfümde de aynı şekilde zamana bağlı değişkenlik mevcuttur. Bu noktadan hareketle nota, org, akor gibi kelimelerin her iki farklı soyut algı dünyasına yönelik ürünler için ortak olarak kullanıldığını görürüz.',
        body2:
            '\t Müzik dünyasını kendi uzmanlarına bırakıp, biz parfümlere dönelim. Her ne kadar biz gözle görülemediği için parfümleri "soyut" olarak tanımlasak da, onlar aslında muhtelif kimyasal koku moleküllerinin bir araya gelmesinden oluşurlar. Bu moleküllerin ne ağırlıkları ne de kuvvetleri birbirlerine benzemez. Bir kısmı daha hafif olduklarından daha çabuk havaya karışırlar, bu nedenle de onları daha önce algılarız. Bir kısmı ise moleküler ağırlıkları gereği bu havaya karışma süresini uzatır ve daha geç ortaya çıkarlar.',
        body3:
            '\t Bu durumu çizime döksek, ortaya bir piramit şekli çıkar. Bu piramidin en üst noktası, daha hafif moleküller, yani hemen havaya karışan ve ilk anda algıladığımız moleküllerden oluşur. Bu üst bölüme "üst notalar" denir.  Üst notalar genellikle meyvemsi kokulardan oluşur. Bu üst notalara ilişkin algımız, genelde 10-15 dakika ile sınırlıdır ve parfümü sıkıp da sokağa çıkıncaya kadar zaten etkilerini kaybederler. Bir başka deyişle, bu notalar sadece "açılış" yaparlar ancak satınalma kararını verdiğimiz zaman dilimine rastladıkları için ticari olarak çok önemlidirler.',
        body4:
            '\t Devam edelim: piramidimizin ikinci katmanında biraz daha geç havaya karışan çiçeksi veya aromatik kokular vardır. Bir parfümör parfümü formüle ederken hedef aldığı esas odak bu ikinci katman, yani "kalp notaları"dır. Parfümün karakteri, onu farklı ve beğenilir kılan bölüm, bu katmanın içinde gizlidir. Bu katmana "kalp" adı verilmesinin sebebi de budur ve bir parfüm alırken doğru algıya ulaşmak için aslında biraz süre geçirip kalp notaları algılamalı, satınalma kararımızı da ondan sonra vermemiz gerekir.Üçüncü ve tabanda yer alan katmana ise "baz notalar" denir. Burada yer alan moleküller, ağırlıkları en fazla olan moleküllerdir. Genelde sürüldükten 2 saat sonra ortaya çıkarlar ve kaybolana dek de algımıza yapışırlar. Görevleri, üst ve kalp notalara bir nevi altlık oluşturmak, parfümün genel kokusal profili bozmadan kalıcılığını desteklemektir.Her parfüm, bu piramidin her bir katmanı içinde yer alan onlarca farklı tekil notadan oluşur. Bu nedenle herhangi bir yazılı medyada parfümünüzün tanımını okurken, "meyve, çiçek ve odun" veya " şeftali, gül, amber" kelimelerini bir arada görürüz.',
        references: 'Vedat Ozan, Kokucuk',
        link: 'https://www.kokucuk.com/Sayfa-Nota-nedir--5.htm',
        authorImageUrl:
            'https://upload.wikimedia.org/wikipedia/tr/thumb/5/52/Vedat_Ozan.jpeg/1200px-Vedat_Ozan.jpeg?20151021121403',
        assetimage: 'assets/images/profumonotes.jpg',
      ),
      const Article(
        id: '2',
        title: 'Kokular neden anıları hatırlatır?',
        subtitle:
            '\t Bildik bir koku çocukluk anılarımıza kadar götürür bizi. Beynimizde neler oluyor da bunları düşünüyoruz?',
        question1: 'Karmaşık Duygular',
        body1:
            '\t Koku alma duyusu en eski duyudur; havadaki ve sudaki kimyasal maddeleri algılamak için gelişen, bakterilerin bile sahip olduğu ilkel duyulara kadar uzanır. Görme, işitme ve hatta dokunma duyusundan önce, canlıların etraflarındaki kimyasallara tepki verebilmesi için koku alma duyusu gelişmiştir önce.Görmek, insan gözündeki dört ışık duyargası ile mümkündür. Buradaki alıcı işlevi gören hücreler, ışığı beynin anlayacağı dilden elektrokimyasal sinyallere dönüştürür. Dokunma duyusu ise en az dört tür basınç ve ayrıca sıcak, soğuk ve acıyı algılayan çeşitli alıcılara bağlıdır.Fakat bunlar koku alma duyusunun yanında gölgede kalır. Çünkü insanda koku almayı sağlayan 1000’den fazla alıcı vardır. Bunlar yaşadığımız sürece yenilenir ve alışkın olduğumuz kokulara göre değişir. Bu karmaşık yapı çok sayıda farklı kokuyu birbirinden ayırmamızı sağlar.Ancak ayırabildiğimiz kokuların hepsi için bir isim bulamayız. Belki de hakkında en az konuştuğumuz duyumuz koku almadır. Bir şeyin nasıl göründüğünü ya da duyulduğunu iyi tarif edebilir, ama iş kokuya gelince onu bağlantı kurduğumuz şeyle ifade etmeye çalışırız; örneğin, çiçek gibi, ıslak köpek gibi, vs. olarak tanımlarız. Yani kokuyu, o kokuyu yaratan nesneyle ifade ederiz: “Hindistan cevizi”, “taze ekmek” gibi.',
        question2: 'Hafıza ve Koku',
        body2:
            '\t Bu bilgileri tekrarladıktan sonra, şimdi de önemli ipuçları neler diye bakalım? Beyinde kokuları işleme koyan ve “koku alma soğanı” olarak adlandırılan bölge, beyin çıkıntısı (hipokampüs) ile yan yanadır. Denizatı şeklindeki bu soğan, beyin zarından (korteks) gelen tüm bilgilerin toplandığı yerdir. Nörologlar hipokampüsün yeni olaylar için hafıza yaratmada önemli bir işlevi olduğunu tespit etti.Beyninin bu bölgesi hasara uğrayan kişiler hatırlamada zorluk çeker. Bisiklet sürme gibi yeni becerileri ve kişilerin isimleri gibi yeni bilgileri öğrenseler de bunlara dair hafıza oluşturamazlar. Bu aralıklı “epizodik hafıza”, işte benim büyükannemin evine yaptığımız ziyareti hatırlarken söz konusu olan hafızanın ta kendisi. Koku alma soğanı, yani kokunun beyindeki yeri, bu tür hafızanın kaynağı olan hipokampüsün yanında olduğu için kokular bazı anıları çağrıştırıyor diyebiliriz.',
        question3: 'Derinlere Dalmak',
        body3:
            '\t Fakat bu ipucu ne kadar güçlü olsa da dolaylı ve duruma bağlıdır aslında. O yüzden ikinci bir ipucu sunmak gerekir. Duyular arasında kokunun özgün özelliği doğrudan beynin derinliklerine gitmesidir. Oysa örneğin görme ve işitme duyuları gözde ve kulakta, yani ilgili organlarda başlar ve beynin diğer bölgelerine geçmeden önce, aktarma merkezi işlevi gören talamusa, yani ara beynin orta bölümüne geçer.Koku alma duyusu ise talamusa uğramadan doğrudan koku alma soğanına gider. Talamusta duraklamanın diğer duyular açısından nasıl bir işlev gördüğünü bilmiyoruz; ama diğerlerinin oluşturduğu sinyallerin beyindeki işlem merkezinden “daha uzakta” olduğunu söyleyebiliriz.Kokuları kelimelere dökmenin zorluğu bundan kaynaklı olabilir mi? Ya da derinlerde saklı kalmış anıların canlanmasını tetikleyebilir mi? Araştırmalar, olay ve olguları kelimelerle ifade etmenin hafızaya yararı olduğunu gösteriyor; fakat bu aynı zamanda konuyla ilgili duyguların azalmasına da yol açıyor. Anılarımızdan söz ederken olayı ve onun yarattığı deneyimi de hatırlamaya başlarız.',
        body4:
            '\t Büyükannemin oyuncak dolabına dönersek… Çocuk burnumun koku alıcıları dolabın kokusunu almış. Hiç isim bulamadığım bu koku doğrudan beynime hareket edip deneyimleri kodlayan bölgenin yanına yerleşmiş. Orada, dolapla ilgili, kelimelere hiç dökülmemiş, bilinçli olarak hatırlaması güç ama yine de hafızamda yer etmiş diğer anılarla karışmış. Yıllar sonra bugün o kokuyu aldığımda o çocukluk günleri geri geliyor işte.',
        references: 'Tom Stafford, BBC Future',
        link:
            'https://www.bbc.com/turkce/ozeldosyalar/2014/11/141127_vert_fut_koku_ve_anilar',
        authorImageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/BBC_News_2022_%28Alt%2C_boxed%29.svg/255px-BBC_News_2022_%28Alt%2C_boxed%29.svg.png',
        assetimage: 'assets/images/gecmisegotur.jpg',
      ),
      const Article(
        id: '3',
        title: 'Fransızlar neden parfümde bu kadar köklü bir geleneğe sahip?',
        subtitle:
            '\t Parfüm, latince, kokulu duman anlamına gelen “perfumum” kelimesinden gelmekte olup, tarihi ise oldukça eskidir.',
        body1:
            '\t Parfüm, latince, kokulu duman anlamına gelen “perfumum” kelimesinden gelmekte olup, tarihi ise oldukça eskidir.Günümüzden yaklaşık 5000 yıl önce, Mısırlılar güneş tanrıları Râ için güneşin doğuşundan batışına dek kokulu otlar yakarlardı.Ölülerini ise kokulu yağlar kullanarak mumyalar, mezarlarına parfüm şişeleri ve kokulu kremler koyarlardı. Nitekim, yapılan kazılarda Mısır Firavunu Tutankhamon’un mezarından parfüm şişeleri ve krem vazoları çıkarıldı. Mısırlılar günlük hayatlarında ise kokulu yağlar ve pomatlar kullanırdı. Bunlar içinde en çok tercih ettikleri “kyphi” adını verdikleri kokulu bir yağdı. Kyphi, bal, şarap, pirinç, mersin çiçeği, safran, katırtırnağı ve ardıç özlerinden oluşan bir karışımdı. Nefertiti yasemin banyosu yapar, banyodan sonra vücuduna sandal ağacı, amber ve ender rastlanan çiçek özleri sürerdi.Çağdaş niteliklere sahip ve bilinen ilk parfüm 14. yüzyılda, 1370 yılında yapıldı ve güzelliğiyle ünlü Macar kraliçesine atfedildi. Esans ve biberiye yağı ile alkol karışımından elde edilmiş, lavanta yağı ile zenginleştirilmiş bu karışıma özel bir isim verilmesi de unutulmamıştı: “Macar Suyu”.',
        body2:
            '\t 16. yüzyılda cam sanatının ilerlemesiyle birlikte parfümün gelişme süreci de hızlandı. O yıllarda parfümün en çok üretilip tüketildiği ülke Fransa idi. Fakat parfümün vücuda sürülmesinin hastalıklara neden olacağı düşünülür, parfüm sadece pis kokuları maskelemek için kullanılırdı. Bu nedenle giysilere, eldivenlere, mendillere, hatta mücevherlere bile parfüm sürülürdü.',
        body3:
            '\t 17. ve 18. yüzyıllarda, parfüm endüstrisi oldukça gelişti. Özellikle Fransanın Grasse bölgesi parfüm endüstrisinin merkezi haline geldi.20. yüzyılda parfümler muhteşem şişeleriyle birer sanat eseri halini aldı. Parfümler vücut kokularını bastırmak için değil, kişiliklerin altını çizmek için kullanılmaya başlandı ve çağdaş yaşamın vazgeçilmez bir parçası haline geldi.',
        body4:
            '\t Fransa’da bulunan ünlü Versailles (Versay Sarayı) ilk inşa edildiğinde (1661 yılında) tuvalet veya banyo düşünülmemiştir. Bunun sebebi o zamanki asillik anlayışında, asillerin istediği yerde ihtiyaçlarını giderebileceğidir. Bu sebeple Avrupada yaygın olarak Versailles sarayının kokusunun Avrupadaki tüm saraylardan eşsizolduğu söylenirdi. 1768 yılına kadar da sarayda işleyen tuvalet yoktu. 1789 yılında Fransız Devriminden sonra bütün sarayda sadece 9 tane tuvalet vardı ve bunlar sadece kral ve yakın aile üyelerine aitti. Sarayın geri kalan çalışanları lazımlık kullanırdı ve bu kokular daire ve genel atmosfer ile çalışanların giysilerini tamamen sarardı. Yasaklanmış olmasına rağmen lazımlıklar genellikle çalışanlar tarafından oda pencerelerinden dışarı boşaltılırdı. Herkes istediği yerde ihtiyacını giderdiği için Paris’te sokaklar, avlular, parklar pislik ve kokudan geçilmez haldeydi. Kral, 1606 yılında alenen ihtiyaç giderenlerden ceza alınmasını emretti. Suç işlerken yakalananlar çeyrek altın tutarında ceza ödemeye mahkum ediliyor, cezayı ödemeyenler ise 24 saat hapsediliyorlardı. Fransa kralının özel dairesine giden koridor, durmadan gidip gelenler yüzünden son derece pis idi. Sanki bir saraya değil de bir ahıra giriliyormuş gibiydi. İddiaya göre Fransa kralı 14. Luis sabahları avucuna damlatılan şarap hülasasıyla temizlendiğini zannediyormuş. Asla dişlerini yıkamamış, vücudunu ise alkol karıştırılmış suda ve ancak hasta olduğu zamanlarda yıkamıştır. Sarayda durum böyleyken, halk ise Sen Nehri’ne girerek pisliklerinden arınıyorlarmış.',
        references: 'Göktürk Aykut Aslan, Evrim Ağacı',
        link:
            'https://evrimagaci.org/soru/fransizlar-neden-parfum-isinde-bu-kadar-koklu-bir-tarihe-ve-gelenege-sahip-13723',
        authorImageUrl:
            'https://upload.wikimedia.org/wikipedia/tr/thumb/e/e3/Evrim_A%C4%9Fac%C4%B1_K%C4%B1rm%C4%B1z%C4%B1-Beyaz_Logosu.png/375px-Evrim_A%C4%9Fac%C4%B1_K%C4%B1rm%C4%B1z%C4%B1-Beyaz_Logosu.png',
        assetimage: 'assets/images/frenchperfume.jpg',
      ),
      const Article(
        id: '4',
        title: 'Parfüm tarihiyle ilgili 3 şey',
        subtitle:
            '\t Kokuların dünyası gerçekten de bizi oradan oraya taşıyabilir ve kim olduğumuzla ilgili hikayeler anlatabilir. Ve hala parfümlerle ilgili ortaya çıkmamış bir sürü ilginç bilgi var. Haydi, zamanda geriye gidelim ve her şeyin başladığı yeri keşfedelim!',
        question1: '1. Parfümün Kökeni Neresidir?',
        body1:
            '\t İlk parfümün kökeniyle ilgili birçok teori var ama dünyanın ilk parfüm üreticileri genelde Mezopotamyalılar, Persler ve Mısırlılar olarak görülüyor. Dünyada ilk parfüm üreten insan, Tapputi adında kimyacı bir kadınmış ve ilk kokuyu Mezopotamya, Babil’de mürrüsafi, yağlar ve çiçeklerden üretmiş. Mısır’da, yaklaşık 4000 yıl önce, insanlar parfümleri dini törenlerden cenazelere ve hatta günlük hayatta bile kullanıyorlarmış. Parfüm, güneş tanrısı Ra’nın teri olarak görülürmüş ve bu yüzden de parfüm sürmek kutsal bir eylemmiş. Hatta Mısırlıların, Nefertum adında başında nilüferlerden oluşan tacı taşıyan bir tanrıçaları bile vardı, ki nilüferler, şu anda bile en çok kullanılan parfüm içeriklerindendir. Persliler de parfüme çok değer verirdi ve kokular genelde politik statünün sembolü sayılırdı. O kadar çok parfüm kullanırlardı ki, kralların parfüm şişeleriyle resmedilmesi normal karşılanırdı! Ne zaman ki Yunanlılar ve Romalılar Acemistan’ı (İran) ele geçirdi, o zamandan itibaren parfüm bir sanat olarak görülmeye başlandı. Yavaşça dünyaya yayıldı ve 1190 yılında Paris’e geldiğinde ticari olarak gelişmeye başladı ve şu andaki dev sektör halini aldı.',
        question2: '2. Dünyanın İlk Parfümü Neydi?',
        body2:
            '\t Parfümlerin anlamı ve statüleri her ülkede farklı gelişmiştir, dolayısıyla bildiğimiz anlamda ilk modern parfüm üretilmeden önce çok farklı tarzda kokular parfüm olarak adlandırılmıştır. Fakat bildiğimiz anlamdaki parfümü, yani alkol solüsyonunda aromalı yağlarla oluşturulan parfümü asıl Macarlar bulmuştur. Özel kişisel kullanım için üretilen ilk parfüm, Macar Kraliçesi Elizabeth için geliştirilmiştir ve Avrupa’da Macar Suyu olarak bilinir. Koku ağırlıklı olarak biberiye ve taze kekik gibi doğal aromalar içermekteydi.',
        question3: '3. Dünyanın En Pahalı Bileşenleri Hangileridir?',
        body3:
            "\t Hiç düşündüğünüz gibi olmayabilir! En iyi ve en pahalı parfümler mutlak yağlardan, yani bitkilerden veya belirli çiçeklerden elde edilen konsantre, yüksek oranda aromatik ve yağlı karışımlardan oluşur. Doğal maddeler, genellikle çok nadir olduklarından, elde edilmesi çok zor olduğundan veya kanunlarla korunduklarından, en pahalı olanlardır. Dünyanın en pahalı içerikleri yasemin, Bulgar gülü, ud ağacı, misk ve süsendir. Dünyanın en pahalı içeriği ise, balinalarının sindirim sisteminde oluşan bir madde olan Ambergris'tir. Bir içeriğin fiyatının yüksek olmasının sebebi, doğal ud yağı gibi doğal kaynaklarının tükenmesi veya Madagaskar'daki ylang ylang gibi üretiminin mevsim dışı olması olabilir.",
        references: 'Rebecca Frisk Bengtsson, Oriflame',
        link:
            'https://tr.oriflame.com/beautyedit/health-beauty/three-things-you-didnt-know-about-the-history-of-perfume',
        authorImageUrl:
            'https://indiacityblog.com/wp-content/uploads/2020/12/Oriflame.jpg',
        assetimage: 'assets/images/tarihi.jpg',
      ),
      const Article(
        id: '5',
        title: 'Kokular Modumuzu Nasıl Değiştirir?',
        subtitle:
            '\t Söz konusu ruh halimizi değiştirmek olduğunda görünümümüze dikkat etmek dışında yapabileceğimiz şeyler var. Modumuza ya da yakalamak istediğimiz ruh haline uygun kokular tercih etmek bu konuda oldukça etkili olabiliyor. Örneğin kokusunu aldığımız bir aroma bizi farklı bir mekana veya zamana götürebilir. Modumuzu yükseltebilir ya da nahoş anıları canlandırabilir. Peki, kokuların ruh halimiz üzerindeki bu etkisinden günlük hayatta nasıl faydalanabiliriz?',
        question1: 'Mutluluk Veren Kokular',
        body1:
            '\t Vanilya ve gül kokuları başta olmak üzere bazı kokular herkes tarafından beğenilir. Bu hoş kokular bizi mutlu etmek ve moralimizi düzeltmekle kalmaz, aynı zamanda karar alma mekanizmamızı da etkiler. Araştırmalar, güzel kokuların bizi daha kolay para harcamaya yönelttiğini işaret ediyor. Demek ki mutluluğun bir bedeli varmış.',
        question2: 'Konstrasyon Sağlayan Kokular',
        body2:
            '\t Nane ve limon gibi keskin ve ferah kokular ise zihnimizi uyarma etkisine sahip olabiliyor. Bu ve benzeri kokular dikkatimizi yoğunlaştırmamızı sağlayarak iş performansımıza katkıda bulunabiliyorlar.',
        question3: 'Keyif Veren Kokular',
        body3:
            '\t Oda kokuları, genellikle koyu ve zengin aromatik notalarıyla, rahatlatıcı ve keyif verici özelliğe sahiptir. Bir odayı daha geniş ve ferah hale getirmek için salatalık, aloe vera veya narenciye kokuları doğru bir seçim olabilir. Buna karşılık baharatlı, odunsu ve tatlı kokular ise tam tersi etkiye sahiptir. ',
        references: 'Sanna Franklin, Oriflame',
        link:
            'https://tr.oriflame.com/beautyedit/health-beauty/how-scents-can-change-our-moods',
        authorImageUrl:
            'https://indiacityblog.com/wp-content/uploads/2020/12/Oriflame.jpg',
        assetimage: 'assets/images/parfummood.jpg',
      ),
    ]);
final fragranceProvider = Provider<List<DetailModel>>((ref) => [
      const DetailModel(
        id: '1',
        fragranceName: 'Bleu De Chanel',
        backgroundImage: 'assets/images/bleudechaneledp.jpg',
        product:
            "   Aromatik-odunsu karakteri ve dikkat çeken kokusu ile özgür erkeğe övgü. Mavinin gizemli ve koyu bir tonundaki şişesiyle zamandan bağımsız bir parfüm.Zarif kokusu ile BLEU DE CHANEL'in eau de parfum versiyonu, kararlılığı simgeleyen bir karakteri ortaya çıkarır.",
        inspiration:
            '   BLEU DE CHANEL herkes gibi olmayı veya kurallara bağlı kalmayı reddeden erkeklerin kokusudur. İçerikleri sayesinde kendi kaderini özgürce ve kararlılık ile belirleyen erkeklerin ruhunu yansıtır. Beklenmeyen anlarda öne plana çıkan bir karakter.',
        contens:
            '   BLEU DE CHANEL Eau de Parfum, Yeni Kaledonya sandal ağacının asaletini amberimsi sedir ve tonka fasulyesi notaları ile bir araya getiren aromatik-odunsu bir kokudur. Sıcak ve duyulara hitap eden bir etkisi vardır.',
        usage:
            '   Eau de parfum, kıyafetlere veya doğrudan vücuda uygulanarak benzersiz bir deneyim yaşatır.',
        productImage: 'assets/images/bleudechanel.jpg',
        productBrand: 'CHANEL',
        png: 'assets/images/bleupng.png',
        subtitle: 'Eau De Parfum',
      ),
      const DetailModel(
        id: '2',
        backgroundImage: 'assets/images/sauvage.jpg',
        fragranceName: 'Sauvage',
        product:
            "   Sauvage'ın güçlü tazeliği, yeni duygusal ve gizemli yönlerini ortaya çıkarıyor. Sulu Bergamot, duyusallığı arttırmak için baharatlı notaları davet ediyor; Ambroksan ve Papua Yeni Gine Vanilya aromasıyla etrafı sarılıyor. Dior Parfüm Yaratıcısı, François Demachy, ilhamını çöl alacakaranlığının büyülü saatinden alıyor. Gecenin soğuğu çölün yakıcılığıyla bu eşsiz kokuda buluşuyor.",
        inspiration:
            '   Parfümü bizlere dünyaca sunan parfümer François Demachy, “Sauvage, ilk önce pürüzlü, kaba bir taştı. Ona adeta keskiyle şekil verdim.” diyor. Güçlü ve erkeksi özelliklerle donatılmış bir koku olan Dior Sauvage, zaman ve moda tanımayan erkeklere sesleniyor. Özel tasarım şişesi de albeni sunuyor. Lüksün markası olan Dior’un bu parfüm şişesi, yuvarlak hatlarıyla bir görünüm taşıyor.',
        contens:
            '   Christian Dior Sauvage Erkek Parfümü, meşe yosunu ve ağaç reçinesi aromalarının yoğunluğunu taşıyor. Sade ve karmaşası olmayan, baştan sona uyum içinde seyreden bir koku olarak ilgi görüyor. Canlı, ferahlatan ve size kendinizi enerji dolu hissettiren özellikler içeriyor. Narenciye notaları, yosun kokuları, tatlı, sabunsu ve odunsu aromalarıyla bir bütünlük sunuyor.',
        usage:
            '   Her tür sosyal etkinlik için rahatça kullanabilirsiniz. Temiz teninize ve kıyafetlerinize  uygulayabilirsiniz. Kalıcı özelliği yüksek bir parfüm olduğu için yoğun oranda kullanmamak gerekiyor. ',
        productImage: 'assets/images/sauvagemini.jpg',
        productBrand: 'dior',
        png: 'assets/images/diorpng.png',
        subtitle: 'Sauvage',
      ),
      const DetailModel(
        id: '3',
        backgroundImage: 'assets/images/diorhomme.jpg',
        fragranceName: 'Dior Homme \nIntense',
        product:
            '   Christian Dior Homme Intense en cüretkar duyguların güçlü bir kompozisyonunu sunuyor. Kokusu bir davet gibi olan şehvetli bir yorum. Bağımlılık yaratacak güzellikteki Dior Homme Intense, baştan çıkarıcı formülüyle cezbediyor.',
        inspiration:
            "   Cömert ve güçlü bir Eau de Parfum'de prestij ve sofistikelik vücut buldu. Tekillik ve cesur duygusallık arasında, Dior Homme Intense, Iris'in şehvetli şıklığını Ekvator Ambrette Tohumunun misk ve meyveli aksanlarıyla harmanlayan, sofistike bir ize sahip odunsu bir amber kokusunda ortaya çıkar.",
        contens:
            '   Lavantanın rahatlatıcı kokusuyla açılış yapan erkek parfümü kalbinde iris çiçeğini taşıyor. İrisin temiz, karakteristik ve pudralı kokusu amber tohumları ile derinlik kazanıyor. Christian Dior Homme Intense parfüme vetiver ise maskülen karakterin anahtarını teslim ediyor. Parfümün dip notaları vanilya, misk ve odun üçlemesinin göz alıcı karışımıyla doygun ve karanlık.',
        usage:
            '   Kullanım süresi içinde azalan toskana kokusu ardından gelen odunsu notalar, parfümün erkeklerin günlük kullanımı için uygun bir seçenek olmasını sağlıyor. Temiz cilde ve kıyafetler üzerine yapılan kullanımda ise notaların gün boyu kalıcılıkları yükseltilebilir.',
        productImage: 'assets/images/diorhommemini.jpg',
        productBrand: 'DIOR',
        png: 'assets/images/diorhommepng.png',
        subtitle: 'intense',
      ),
      const DetailModel(
        id: '4',
        backgroundImage: 'assets/images/tomford.jpg',
        fragranceName: 'Black Orchid',
        product:
            '   Baharatlı, Oryantal Lüks ve sofistike bir koku olan Tom Ford Black Orchid, zengin koku ahenkleri, siyah orkideler ve baharattan meydana gelen cazibeli iksiriyle tenin doğal kokusuna eşlik ediyor.',
        inspiration:
            '   Black Orchid’in zengin notalarının ahenkli uyumu ve cezbedici formülünün şehvetli kokusuyla, Tom Ford modern ve zamansız bir dünyanın kapılarını aralıyor. çizgi detaylı siyah şişesindeki Black Orchid, ikonik tarzı ve romantik çekiciliği ile ardında unutulmaz bir etki bırakıyor.',
        contens:
            '   Parfümünün üst notaları taze bergamot ve siyah kuşüzümü ile karıştırılmış, black truffle ve ylang ylang’ dan oluşan duyulara hitap eden bir harman ile açılıyor. Orta notalarda koyu, çiçek kokuları ve zengin mevye aromalarının ahenkleri ile harmanlanmış, özel olarak aşılanıp yetiştirilmiş Tom Ford Black Orchid ile birleşiyor. Bu nota lotus ağacı ile derinleşiyor. Alt notaları noir gourmand ahengi, paçuli, tütsü ve vetiver ile dengelenmiş. Vanilya, sıcak balsam ve pürüzsüz sandal ağacına akıcı bir kremsilik katıyor.',
        usage:
            '   Tom Ford Black Orchid parfümü dört mevsime uygun bir parfüm olarak yorumlansa da içerisindeki esansların yoğunluğundan dolayı genellikle sonbahar ve kış aylarında tercih edilmesi gereken bir parfümdür.',
        productImage: 'assets/images/tomfordmini.jpg',
        productBrand: 'TOM FORD',
        png: 'assets/images/tomfordpng.png',
        subtitle: 'Eau De Parfum',
      ),
      const DetailModel(
        id: '5',
        backgroundImage: 'assets/images/bomb.jpg',
        fragranceName: 'Spicebomb Extreme',
        product:
            '   Viktor&Rolf, maskülen ve güçlü erkekler için Spicebomb’u sunuyor. Güçlülüğü, cesareti ve çekiciliği yansıtan bu parfüm, daha da yoğun baharatların karışımıyla yaratılan yoğun kokusuyla her açıdan maskülenliği ortaya çıkaracak özel bir el bombasının gücünü temsil ediyor.',
        inspiration:
            '   Muhteşem, pürüzsüz, rahat, baştan çıkarıcı bir koku... Lavanta, kimyon ve karabiber karışımı, maskülen tütün tonları ve hafif vanilya üzerinde bir sıcaklık izi bırakıyor. Vanilya pürüzsüz, baharat da güçlü ancak her ikisi de kokuya yumuşak ve rafine bir dokunuş katıyor.',
        contens:
            '   Başlangıçta gerçekten neredeyse bir baharat patlaması gibi ancak tütün ve vanilya tarafından yumuşatılıp, sonunda karakterini asla kaybetmeden giderek daha tatlı ve yumuşak hale geliyor. Viktor & Rolf tatlılık ve baharat dengesini tam olarak tutturmuş. Vanilya, tütün ve bibere karşı gerçekten iyi çalışıyor. Lavanta, kokuyu daha yumuşak ve aromatik hale getirmek için hoş bir dokunuş. Bol miktarda tarçın ve vanilya ile biraz biberle tamamlanan bu koku tam bir kış kokusu.',
        usage:
            '   Yaş sınırı olmadan, her ortamda rahatlıkla kullanabilirsiniz. Soğuk ve serin havalara çokça yakışan, iddialı ve ortamda kendini farkettiren parfümlerdendir. Ortam ısıtan parfüm arayışındaysanız ondan kopamayacaksınız.',
        productImage: 'assets/images/bombmini.jpg',
        productBrand: 'VIKTOR & ROLF',
        png: 'assets/images/viktorrolfpng.png',
        subtitle: 'Spicebomb Extreme',
      ),
      const DetailModel(
        id: '6',
        backgroundImage: 'assets/images/versace.jpg',
        fragranceName: 'Versace Eros',
        product:
            '   Versace, erkekler için yeni bir koku piyasaya sürüyor - Yunan mitolojisinden ilham alan ve Yunan mitolojisiyle derinden bağlantılı olan "Eros".',
        inspiration:
            '   Odunsu aşk, tutku, güzellik ve arzu. Versace Eros güçlü, tutkulu ve kendisinin efendisi bir erkeğin parfümü. Eros cilt üzerinde benzersiz bir hava, güven verici bir erkeksilik. Mükemmel ve gösterişli, Eros aşk namelerinin özü.',
        contens:
            '   Erkeksiliği yorumlayan bir koku: nane yaprakları, italyan limon kabuğu ve yeşil elma karışımından elde edilen yoğun, canlı ve coşkulu bir freshliğe sahip parlak bir koku; tonka fasulyesi, amber, ıtır ve vanilya gibi oryantal, etkileyici ve sarıp sarmalayan koku notalarının verdiği bağimlılık yaratıcı bir haz; odunsu notaları sembolize eden yoğunluk ve güç kazandırıcı atlas ve virginia sedir ağacı, vetiver ve meşe yosunu.',
        usage:
            '   Koku kendi vücudunuzun sıcaklığı ile yoğunlaşır. Daha uzun süreli, daha güçlü bir koku için diz ve dirseklerinizin iç eklemlerine uygulayın.',
        productImage: 'assets/images/versacemini.jpg',
        productBrand: 'VERSACE',
        png: 'assets/images/versacepng.png',
        subtitle: 'Eau De Parfum',
      ),
      const DetailModel(
        id: '7',
        backgroundImage: 'assets/images/stronger.jpg',
        fragranceName: 'Stronger With You Intensely',
        product:
            '   Bir aşk hikayesinde erkeği temsil eden yeni koku. Stronger With You Intensely, kokuların yarattığı duyusal denge, bugünün genç erkeklerinin, derin aşk hikayesine yön verebilecek bir bütünlüğe ve yoğunluğa sahip.',
        inspiration:
            '   Emporio Armani Stronger With You Intensely, foujer vurguları ile oryantal-odunsu bir koku. Yeni ve genç bir aşkın heyecanını anlatıyor. Bir erkekte en beğenilen parfümlerin başında gelen Stronger With You Intensely kalıcılığı ve fark edilirliği ile de tam bir performans bombası. Sonbahar- kış aylarında kullanımı en çok keyif veren designer parfümlerden.',
        contens:
            '   Yeni yoğun parfümün karakterini simgeleyen yıllanmış konyak renginde bir koku. Üst notasında pempe biber ve menekşe yapraklarının karışımı, orta notasında lavanta , adaçayı ve tarçın esansı, alt notasında vanilya esansı, kristalleşmiş kestane ve tonka fasülyesi esansı.',
        usage:
            '   Daha yoğun bir parfüm deneyimi için, Parfum tüm zenginliği ile direkt olarak vücuda, özellikle en sıcak bölgelerine (boyun ve bilekler) uygulanır.',
        productImage: 'assets/images/strongermini.jpg',
        productBrand: 'ARMANI',
        png: 'assets/images/strongerwithyoupng.png',
        subtitle: 'intensely',
      ),
      const DetailModel(
        id: '8',
        backgroundImage: 'assets/images/bleudechanelparfum.jpg',
        fragranceName: 'Blue De Chanel - Parfum',
        product:
            '   Aromatik-odunsu karakteri ve dikkat çeken kokusu ile özgür erkeğe övgü. Mavinin gizemli ve koyu bir tonundaki şişesiyle zamandan bağımsız bir parfüm. BLEU DE CHANEL Parfum, saf ve derin bir karaktere sahip başarılı bir kompozisyondur. Hedeflerine ulaşmayı ve kendine güveni vurgulayan yoğun erkeksi bir imza.',
        inspiration:
            '   BLEU DE CHANEL herkes gibi olmayı veya kurallara bağlı kalmayı reddeden erkeklerin kokusudur. İçerikleri sayesinde kendi kaderini özgürce ve kararlılık ile belirleyen erkeklerin ruhunu yansıtır. Beklenmeyen anlarda öne plana çıkan bir karakter.',
        contens:
            '   BLEU DE CHANEL Parfum aromatik, yoğun odunsu bir kokudur. Güçlü bir ferahlık hissi ile açılan üst notaları, cömert ve güçlü notaları açığa çıkararak yoğun ve sofistike bir iz bırakan, görkemli Yeni Kaledonya sandal ağacı ile aydınlatılmış değerli bir akord takip eder.',
        usage:
            '   Daha yoğun bir parfüm deneyimi için, Parfum tüm zenginliği ile direkt olarak vücuda, özellikle en sıcak bölgelerine (boyun ve bilekler) uygulanır.',
        productImage: 'assets/images/bleudechanelparfummini.jpg',
        productBrand: 'CHANEL',
        png: 'assets/images/bleupng.png',
        subtitle: 'parfum',
      ),
    ]);
final preferencesModelProvider = Provider<List<PreferencesModel>>((ref) => [
      PreferencesModel(
        id: '1',
        backgroundImage: 'assets/images/fourseasons.jpg',
        title: 'MEVSİMLER',
        subtitle: '"Mevsimsel parfüm tercihleri"',
        preferencesPhotos: [
          PreferencesPhotos(
              backgroundImage: 'assets/images/spring.jpg',
              title: 'için \n parfüm seçimleri',
              subtitle: 'İLKBAHAR MEVSİMİ',
              explanation: 'için \n parfüm seçimleri',
              body:
                  "\t İlkbahar, doğanın yenilenmesini, çiçeklenmeyi, yumuşaklığı ve tazeliği simgeleyen bir mevsimdir. 'Tazelik' kategorisiyle ilişkilendirilebilecek belirli bir kişilik türünü çekecektir.\n\n  Yaz günleri gibi, bahar mevsiminin havası da ağır eau de parfum formülasyonları için değil, ruh halini rahatlatan hafif, sakinleştirici kokular için ideal . Isı ile çok fazla öne çıkmadıkları için daha hafif kokular, tercihen deniz, çiçek veya narenciye kokuları seçin.\n\n  Dior'dan Miss Dior Roses N'Roses Eau de Toilette ve Jo Malone'den Londra Lavanta ve Kişniş Kolonyası bahar günleri için en iyi kokulardan bazıları.\n\n  Bu mevsimde taze çiçek kokuları tam da size göredir. Kokunun çok kadınsı olacağından korkuyorsanız, daha erkeksi bir koku için odunsu bir kokuya sahip bir kolonya seçebilirsiniz. Yves Saint Laurent kolonyaları bahar ayları için harikadır.",
              titletwo: 'İlkbahar: Taze Çiçek Kokuları ile Ferahlayın'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/summer.jpg',
              title: 'YAZ',
              subtitle: 'YAZ MEVSİMİ',
              explanation: 'için \n parfüm seçimleri',
              body:
                  "\t Yaz mevsimi, sıcak havalara, güneşli günlerin keyfine, deniz kenarlarına ve tatillere özgüdür. Bu mevsim, canlı renklerle, taze meyvelerle ve çiçeklerle doludur. İnsanlar, yazın canlı, enerjik ve hareketli atmosferine uygun hafif, taze ve ferahlatıcı kokular tercih ederler. Bu nedenle, yaz mevsimi genellikle narenciye, deniz notaları, çiçeksi ve hafif baharatlı kokular ile ilişkilendirilir.\n\n  Yaz mevsiminde, insanlar genellikle hafif ve ferahlatıcı kokuları tercih ederler. Narenciye, çiçeksi, yeşil, odunsu ve deniz notalarını içeren bu tür kokular, yoğun koku kombinasyonlarının rahatsızlık verici olabileceği sıcak hava ve yüksek nem seviyelerine karşı iyi bir seçimdir.\n\n  Narenciye notaları, taze meyvelerden elde edilen portakal, limon, greyfurt ve mandalina gibi kokularla hafif ve taze bir his yaratır. Çiçeksi notalar, yasemin, gül, frezya ve portakal çiçeği gibi çiçeklerin hafif ve tatlı kokularını içerir. Yeşil notalar, taze kesilmiş çimen, yaprak ve tomurcukların kokusunu yansıtır.\n\n  Odunsu notalar, sedir, paçuli ve sandal ağacı gibi kokuların daha sıcak ve yoğun bir his yaratırken, deniz notaları taze, tuzlu ve ferah bir his yaratır ve deniz kenarında olma hissini yansıtır.\n\n  Erkekler için Dolce & Gabbana Light Blue, kadınlar içinse Dior J'adore yaz kokularının efsanelerindendir",
              titletwo:
                  'Yaz Aylarında Okyanus Esintisini Bedeninizde Hissedin'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/fall.jpg',
              title: 'SONBAHAR',
              subtitle: 'SONBAHAR MEVSİMİ',
              body:
                  '\t Sonbahar mevsimi, yaprakların renk değiştirmesi ve dökülmesi, havanın soğuması ve günlerin kısalmaya başlaması ile karakterizedir. Bu mevsimde insanlar, daha sıcak ve yoğun kokulara doğru kayarlar. Baharatlı, odunsu, amber ve reçineli notalar içeren koku kombinasyonları, bu mevsimin ruhunu yansıtmak için sıkça kullanılır.\n\n  Baharatlı notalar, tarçın, karanfil ve kırmızı biber gibi baharatların kokularını yansıtır. Odunsu notalar, sedir, sandal ağacı ve vetiver gibi kokuların daha sıcak ve yoğun bir his yaratırken, amber notaları tatlı ve yoğun bir his verir ve reçineli notalar balsamik ve odunsu bir his yaratır.\n\n  Ayrıca, sonbaharda daha ağır parfüm ya da koku yoğunluğuna sahip olan kokulara doğru kaymak da yaygındır. Bu tür kokular, genellikle gece kullanımı için tercih edilirler.\n\n  Tüm bu kokular, sonbahar mevsiminde insanlara sıcak, zengin ve rahat hisler verir ve havanın soğumasına karşı koruma sağlarlar.\n\n  Erkekler için Dior Homme Intense: Bu koku odunsu, baharatlı ve derin notalara sahip bir erkek parfümüdür. Tonka fasulyesi ve sedir ağacı gibi yoğun kokuları içerir.\n\n  Kadınlar içinse Chanel Coco Mademoiselle: Bu koku, bergamot, portakal, jasmin ve paçuli gibi çiçeksi ve odunsu notalara sahip bir kadın parfümüdür. Romantik, feminen ve sofistike bir havası vardır.',
              explanation: 'için \n parfüm seçimleri',
              titletwo: 'Sonbahar Renklerini\n Vücudunuzda Taşıyın'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/winter.jpg',
              title: 'KIŞ',
              subtitle: 'KIŞ MEVSİMİ',
              body:
                  "\t kış mevsimi soğuk ve karlı havalara işaret eder ve insanların giyim tarzlarına ve tercih ettikleri kokulara da yansır. Bu mevsimde genellikle ağır, baharatlı ve odunsu kokular tercih edilir. Bunun nedeni, bu kokuların sıcak ve yoğun hissettirmesi, vücut sıcaklığını yükseltmesi ve soğuk havanın neden olduğu ferah hissi azaltmasıdır.\n\n  Kış mevsiminde tercih edilen kokular genellikle vanilya, tarçın, kakule, kehribar ve benzoin gibi baharatlı ve tatlı notalar içerir. Ayrıca sedir, çam, biberiye ve sedir gibi odunsu notalar da bu mevsime uygun kabul edilir. Bu kokular, kışın insanlara sıcaklık ve rahatlık hissi verir, soğuk havanın neden olduğu huzursuzluğu azaltır ve aynı zamanda biraz egzotik bir hava yaratır.\n\n  Örneğin, kadınlar için Tom Ford'un Black Orchid parfümü, tatlı vanilya, baharatlı tarçın ve kehribar notalarıyla kış mevsimine uygun bir seçenek olabilir. Erkekler için ise, Yves Saint Laurent'in La Nuit de L'Homme parfümü, vanilya, tarçın ve sedir gibi baharatlı ve odunsu notalarıyla kış mevsimine uygun bir tercih olabilir.",
              explanation: 'için \n parfüm seçimleri',
              titletwo: 'Kış: Daha Net, Daha Baskın Kokular')
        ],
      ),
      PreferencesModel(
          id: '2',
          backgroundImage: 'assets/images/skintype.jpg',
          title: 'CİLT TİPLERİ',
          subtitle: '"Cilt tiplerine göre parfüm seçimleri"',
          preferencesPhotos: [
            PreferencesPhotos(
                backgroundImage: 'assets/images/normalskin.jpg',
                title: 'NORMAL CİLTLER',
                titletwo:
                    'Normal cilt gergin veya yağlı hissetmez ve birkaç kusuru olur.',
                body:
                    "\t Normal cilt tipine sahip insanlar, hemen hemen her tür koku türünden parfüm kullanabilirler. Ancak, hafif ve taze kokular tercih ederek daha iyi sonuçlar elde edebilirler. Parfümü uygularken, kol ve boyun gibi nabız noktalarına, hafifçe püskürtmek ve kokunun yayılmasını sağlamak için birkaç santimetre mesafeden püskürtmek önemlidir. Ayrıca, parfümü günlük olarak kullanmak yerine özel günler veya belirli etkinlikler için saklamak, hem koku kalitesini korumak hem de daha az parfüm kullanarak daha uzun süre dayanmasını sağlamak için iyi bir seçim olabilir.\n\n  Normal cilt tipine sahip olanlar için birçok parfüm seçeneği mevcuttur. Normal cilt tipi, genellikle yağlı veya kuru değildir ve hassas olmayan bir cilttir. Bu nedenle, birçok farklı parfüm markasının ürünleri normal cilt tipine sahip insanlar için uygundur.\n\n  Bu tip bir cilde sahip kişiler, kendilerine en uygun parfümü seçmek için kendi zevklerini ve kişiliklerini göz önünde bulundurmalıdır. Bununla birlikte, temiz, hafif ve taze kokular genellikle normal cilt tipi olanlar için en uygunudur.\n\n  Örnek olarak, Acqua di Gioia by Giorgio Armani, Light Blue by Dolce & Gabbana, ve Daisy by Marc Jacobs gibi hafif, taze, çiçeksi ve meyvemsi notalara sahip parfümler normal cilt tipleri için uygun olabilir. Bunların yanı sıra, Chanel No. 5 gibi klasik kokular ve Jo Malone'nin çeşitli kokuları da normal cilt tipleri için uygundur. Ancak, herkesin cilt kimyası farklı olduğundan, bir parfümün herkese uygun olacağı garanti edilemez, bu nedenle herhangi bir parfümü denemeden önce test etmeniz önemlidir.",
                subtitle: 'NORMAL CİLTLER',
                explanation: 'için \n parfüm seçimleri'),
            PreferencesPhotos(
                backgroundImage: 'assets/images/dryskin.jpg',
                title: 'KURU CİLTLER',
                titletwo:
                    'Kuru cilt pullanma eğilimi gösterir ve soyulmaya eğilimlidir.',
                body:
                    "\t Kuru ciltler, parfümün kalıcılığını ve kokunun yoğunluğunu düşürebilecekleri için parfüm seçiminde dikkatli olmalıdırlar. Buradaki amaç, cildinizi nemlendirmek ve kokunun daha uzun süre kalmasını sağlamaktır.\n\n  Bunun için, parfüm yağları veya yoğun parfümler yerine, hafif ve taze kokuları tercih etmeniz önerilir. Ayrıca, vücut losyonu veya yağ kullanarak cildinizi nemlendirmek de kokunun kalıcılığını artırabilir.\n\n  Kuru ciltler için önerilen parfümler, çiçeksi, pudralı, odunsu ve hafif baharatlı notalar içeren kokulardır. Örneğin, vanilya, amber, paçuli, bergamot, lavanta, ylang-ylang, frezya ve menekşe gibi notalar, kuru ciltler için uygun olabilir.\n\n  Bazı örnekler arasında Jo Malone Peony & Blush Suede, Chanel Chance Eau Tendre, Tom Ford Neroli Portofino ve Diptyque Do Son yer alabilir. Ancak, parfüm seçerken herkesin cilt yapısı farklı olduğu için, denemeden önce test etmek her zaman en iyisidir.",
                subtitle: 'KURU CİLTLER',
                explanation: 'için \n parfüm seçimleri'),
            PreferencesPhotos(
                backgroundImage: 'assets/images/oilyskin.jpg',
                title: 'YAĞLI CİLTLER',
                titletwo:
                    'Büyük ve/veya tıkalı gözeneklere ve gün ortası parlaklığına dikkat edin .',
                body:
                    '\t Yağlı ciltlerin parfüm seçiminde dikkat etmeleri gereken bazı faktörler vardır. Yağlı ciltler, normal ve kuru ciltlere göre daha fazla yağ ürettiğinden, parfümün ciltte kalıcılığı daha yüksek olabilir. Bu nedenle, hafif ve taze kokular tercih edilmesi önerilir. Ayrıca, alkollü parfümler cildi kurutabilir ve yağ üretimini artırabilir, bu nedenle yağsız formülleri tercih etmek de faydalı olabilir.\n\n Narenciye ve fujer notalar içeren hafif ve ferahlatıcı kokular, yağlı ciltler için idealdir. Bunun yanı sıra, lavanta, çay ağacı, nane, kişniş, biberiye ve zencefil gibi esansiyel yağlar içeren kokular da yağlı ciltler için uygundur. Bu tür kokular, cildi canlandırır ve ferahlatır.\n\n  Bazı yağsız parfüm örnekleri arasında Acqua di Gioia by Giorgio Armani, Light Blue by Dolce & Gabbana, DKNY Be Delicious, ve ck One by Calvin Klein sayılabilir. Bu kokular, hafif, taze ve ferahlatıcıdır ve yağlı ciltler için uygun olabilir. Fakat denemenizde fayda var.',
                subtitle: 'YAĞLI CİLTLER',
                explanation: 'için \n parfüm seçimleri'),
            PreferencesPhotos(
                backgroundImage: 'assets/images/karmaskin.jpg',
                title: 'KARMA CİLTLER',
                titletwo:
                    '\t Genellikle yağlı bir T bölgesi vardır, ancak yanakların çevresinde kuru hissedilebilir.',
                subtitle: 'KARMA CİLTLER',
                body:
                    "\t Karma cilt tipine sahip olanlar için parfüm seçerken, cilt tipine uygun hafif ve ferah kokuları tercih etmek önemlidir. Genellikle narenciye, çiçeksi ve yeşil notalara sahip parfümler karma cilt tipleri için uygun olabilir.\n\n  Aynı zamanda, parfümün formülünde bulunan yağ oranı da dikkate alınmalıdır. Yağlı ciltler için olduğu gibi, karma ciltler için de hafif ve su bazlı parfümler tercih edilebilir.\n\n  Örnek olarak, Bulgari Omnia Coral ve Dior J'adore gibi çiçeksi notalara sahip hafif parfümler karma ciltler için uygun olabilir. Ancak yine de kişisel tercihler göz önünde bulundurularak parfüm seçimi yapılmalıdır.",
                explanation: 'için \n parfüm seçimleri'),
            PreferencesPhotos(
                backgroundImage: 'assets/images/sensitiveskin.jpg',
                title: 'HASSAS CİLTLER',
                titletwo: 'Kolayca kurur, kızarır veya tahriş olur.',
                body:
                    '\t Hassas ciltler için parfüm seçimi zor olabilir, çünkü bazı parfümler ciltte tahrişe veya kızarıklığa neden olabilir. Bu nedenle, hassas ciltli kişiler, özellikle parfüm içeriğindeki alerjenlere karşı hassasiyeti olanlar, daha doğal ve hafif kokulara yönelmelidir.\n\n  Hassas ciltler için uygun olan parfümler genellikle hafif çiçeksi veya narenciye kokuları içerir. Bunlar, doğal esansiyel yağlar ve organik bileşenlerle hazırlanmış parfümler olabilir. Aynı zamanda, alkolsüz parfümler de hassas ciltler için uygun bir seçenek olabilir.\n\n  Örneğin, limon, bergamot, lavanta, biberiye, nane, gül, ylang-ylang, mandalina ve portakal gibi esansiyel yağlar içeren hafif ve doğal parfümler hassas ciltler için uygun olabilir.\n\n  Bununla birlikte, hassas ciltli kişiler, öncelikle parfümü ciltlerinde denemeli ve herhangi bir reaksiyon olmadığından emin olmalıdır. Eğer herhangi bir rahatsızlık hissedilirse, parfüm kullanımı durdurulmalı ve doktor tavsiyesi alınmalıdır.',
                subtitle: 'HASSAS CİLTLER',
                explanation: 'için \n parfüm seçimleri'),
          ]),
      PreferencesModel(
        id: '3',
        backgroundImage: 'assets/images/ages.jpg',
        title: 'YAŞLAR',
        subtitle: '"Yaşlara göre parfüm tercihleri"',
        preferencesPhotos: [
          PreferencesPhotos(
              backgroundImage: 'assets/images/young.jpg',
              title: 'GENÇLER',
              titletwo: 'Enerjik, canlı, dinamik.',
              subtitle: 'GENÇLER (15-25)',
              body:
                  "\t Gençler genellikle daha hafif ve taze kokuları tercih ederler. Bu yaş aralığındaki ciltler genellikle daha yağlı veya karma tip olma eğilimindedir, bu nedenle hafif ve taze kokulara daha iyi uyum sağlayabilirler.\n\n  Bununla birlikte, tercih edilen koku kişisel bir tercih olduğundan, herkes farklı bir koku tercih edebilir. Bu yaş aralığındaki gençler genellikle spor, enerjik ve canlı bir yaşam tarzına sahip olduklarından, spor ve ferah kokuları tercih edebilirler.\n\n  Bazı örnekler arasında taze narenciye kokuları, deniz kokuları ve yeşil kokular sayılabilir. Çiçeksi notalar, baharatlı ve odunsu notalarla dengelenebilir. Gençlerin parfüm seçerken dikkat etmeleri gereken nokta, aşırı kullanmamaları ve hafif bir dokunuşla uygulamalarıdır.\n\n  Bu sebeple gençlik ve enerjiyi yansıtan, canlı ve taze notaları olan parfümler önerilebilir. Narenciye notaları, taze bahar çiçekleri, yeşillikler ve meyveler içeren parfümler bu yaş grubu için uygun olabilir.\n\n  Örneğin, Dior'un Miss Dior Blooming Bouquet veya Chanel'in Chance Eau Tendre gibi parfümler genç kadınlar için popüler seçimler arasındadır. Erkekler için de taze ve odunsu notaları olan parfümler tercih edilebilir, örneğin Dior Homme Sport veya Hugo Boss Bottled Tonic gibi. Ancak, herkesin tercihleri ve cilt tipi farklı olduğundan, en iyi parfüm seçimi kişisel bir tercih ve deneme-yanılma süreci gerektirir.",
              explanation: 'için \n parfüm seçimleri'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/adult.jpg',
              title: 'YETİŞKİNLER',
              titletwo: 'Olgun, sofistike.',
              body:
                  "\t Yetişkinler için parfüm seçerken, tercih edilen koku notaları kişisel zevklere göre değişebilir. Ancak genel olarak, yetişkinler için daha olgun ve sofistike kokular tercih edilir. Ağır ve yoğun koku notaları, yetişkinlerin günlük yaşamlarında veya iş ortamlarında kullanabilecekleri daha uygun bir seçim olabilir.\n\n  Özellikle kış mevsiminde, amber, vanilya, paçuli, odunsu notalar gibi daha sıcak ve ağır kokular tercih edilebilir. Yaz mevsiminde ise daha hafif ve ferahlatıcı kokular, örneğin çiçeksi, narenciye veya deniz notaları tercih edilebilir.\n\n  Yetişkinler için önerilen parfümler arasında Chanel No. 5, Dior J'adore, Armani Si, Tom Ford Black Orchid gibi klasik kokular bulunabilir. Ancak kişisel zevk ve tercihler, parfüm seçiminde en önemli faktördür.",
              subtitle: 'YETİŞKİNLER (30-50)',
              explanation: 'için \n parfüm seçimleri'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/old.jpg',
              title: 'YAŞLILAR',
              titletwo: 'Sakin, huzurlu.',
              body:
                  "\t Yaşlılar için parfüm seçimi, cilt tipi ve kişisel tercihlere bağlı olarak değişebilir. Ancak genel olarak, yaşlanma süreci ile birlikte koku alma duyusu azalabileceğinden, daha yoğun ve kalıcı parfümler tercih edilebilir. Ayrıca, bazı yaşlıların cildi daha hassas hale gelebilir, bu nedenle cilt tahrişine neden olmayan, daha hafif ve doğal kokulu parfümler seçmek daha uygun olabilir. Bununla birlikte, parfüm seçiminde her zaman kişisel tercihlerin öncelikli olması gerektiğini unutmamak gerekir.\n\n  Örneğin, yaşlılar için parfüm önerisi olarak amber, misk, sedir ve vanilya notaları içeren parfümler önerilebilir. Bu tür kokular, sıcak, zengin ve sofistike bir his yaratırken, yaşlanan cildin kaybettiği ısıyı geri kazandırmaya yardımcı olur.\n\n  Tabii ki, yaşa bağlı olarak kişisel tercihler değişebilir ve herkesin kendi zevkine uygun bir parfümü olabilir. Bu nedenle, parfüm seçerken sadece yaşa değil, cilt tipine, mevsime ve kişisel zevklere de dikkat etmek önemlidir.",
              subtitle: 'YAŞLILAR (60+)',
              explanation: 'için \n parfüm seçimleri'),
        ],
      ),
      PreferencesModel(
        id: '4',
        backgroundImage: 'assets/images/concentration.jpg',
        title: 'PARFÜM YOĞUNLUKLARI',
        subtitle: '"Koku konsantrasyonları çeşitleri ve kullanımları"',
        preferencesPhotos: [
          PreferencesPhotos(
              backgroundImage: 'assets/images/parfum.jpg',
              subtitle: 'PARFUM',
              title: 'PARFUM',
              titletwo: 'Daha yoğun - daha kalıcı.',
              body:
                  "\t Güçlü, kuvvetli ve uzun süre kalıcı kokular genellikle Parfum olarak etiketlenir. Parfum kokuları, %25-35 yağ konsantrasyonuna ve daha az alkol yüzdesine sahiptir, bu da onları koku ve performans açısından da özellikle güçlü kılar.\n\n  Ancak, tıpkı diğerlerinde olduğu gibi bu, Dior Sauvage Parfum gibi belirli kokular için bazen geçerli olmayan genel bir kuraldır - hem EDT hem de EDP, Parfum versiyonundan daha uzun süre dayanır!\n\n  Güçlü bileşimi nedeniyle, bazı insanlar onu biraz fazla sert veya sağlam buluyor, bu yüzden sonsuza kadar sürebilen ancak yatıştırıcı kalabilen EDP'ye bağlı kalıyorlar.\n\n  Parfüm konsantrasyonuna sahip kokular genellikle çok yoğun bir kokuya sahiptir, bu nedenle parfümünüzün diğer kokuların denizinde boğulmasına izin vermek istemediğiniz durumlarda bunları kullanmanızı öneririm - Güçlü konsantrasyonu en aşırı koşullarda mevcut kalmayı başaracaktır.",
              explanation: 'yoğunluğu kimler için?'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/eaudeparfum.jpg',
              subtitle: 'EAU DE PARFUM',
              title: 'EAU DE PARFUM',
              body:
                  "\t Eau de parfum veya EDP %15-25 yağ konsantrasyonuna sahiptir ve EDT ile birlikte dünyadaki en popüler koku konsantrasyonlarından biridir.\n\n  Genel bir kural, EDP'nin koku ve performans açısından genellikle daha güçlü olduğunu (EDT'den daha güçlü) söyler, ancak endüstri geliştikçe, durum böyle olmak zorunda değildir.\n\n  Tabii ki, her EDP kokusu çok uzun süre dayanmaz - konsantrasyona rağmen, kokunun bileşimi ve kalitesi de performansı etkiler. Bu, içerdikleri yağ konsantrasyonu aynı olsa bile iki EDP kokusunun farklı performans göstereceği anlamına gelir.\n\n  Çok yönlülük açısından EDP'nin hiçbir eksiği yoktur - güçlü ve kişiselleştirilmiş bir kokudur, bazıları sizi ısıtmak için soğuk, karlı havalar için idealdir, diğerleri ise bir doz tazeliğe ihtiyaç duyduğunuz sıcak yaz günleri için daha keyifli olacaktır. Pek çok EDP kokusu o kadar güzel bir şekilde harmanlanmıştır ki, imza kokunuzu kolayca seçip tüm yıl boyunca kullanabilirsiniz.\n\n  Öne çıkmayı seven ve çok fazla iltifat alan biriyseniz, diğer koku türleri yerine EDP'yi öneririm.",
              titletwo: 'Yoğunlukta hafiflik \n Ferahlıkta kalıcılık.',
              explanation: 'yoğunluğu kimler için?'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/eaudetoilette.jpg',
              subtitle: 'EAU DE TOILETTE',
              title: 'EAU DE TOILETTE',
              body:
                  "\t Eau de Toilette konsantrasyonu, en popüler koku konsantrasyonlarından biridir ve genellikle kokunun %5-15 oranında uçucu yağ içerdiği anlamına gelir. Adı, hazırlanmak anlamına gelen, Fransızca 'faire sa toilette' teriminden geliyor, bu nedenle pek çok insan bunu tipik bir güne hazırlanmak için ilk tercih olarak görüyor.\n\n  Daha uzun ömür için bir kokuyu günde birkaç kez yeniden uygulamaktan çekinmiyorsanız, o zaman kolayca Eau de Toilette ile devam edebilirsiniz.\n\n  Genel kural, EDT konsantrasyonlarına sahip kokuların yüksek performanslı kokular olmadığını söylese de, tüm Eau de toilette'ler uzun ömür ve genel performans açısından zayıf değildir - Dior Sauvage , yüksek performanslı EDT'nin ana örneğidir. \n\n  İnsanların EDT'yi seçmesinin bir diğer nedeni de geniş çok yönlülüğüdür. Hafif bileşim, EDT kokularını neredeyse her durum ve mevsim için çok giyilebilir ve çekici hale getirir.\n\n  EDT genellikle daha büyük şişelerde gelir çünkü gün boyunca daha fazla spreye ve yeniden uygulamaya ihtiyaç duyacaksınız, ancak daha iyi tarafı, aynı zamanda daha ucuz olmaları.",
              titletwo: 'Güçlü etki - hafif dokunuş.',
              explanation: 'yoğunluğu kimler için?'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/eaudecologne.jpg',
              subtitle: 'EAU DE COLOGNE',
              title: 'EAU DE COLOGNE',
              body:
                  "\t Daha sıcak, güneşli havalar için canlandırıcı, hafif bir koku mu arıyorsunuz? O zaman Eau de Cologne konsantrasyonuna bakın. \n\n  EDC kokuları, düşük yağ konsantrasyonuna (esansiyel yağın %2-4'ü) ve daha fazla alkol yüzdesine sahiptir, bu da onları daha zayıf, daha hafif ve çok uzun süre kalıcı olmayan kokular yapar - normal kalıcılık 3 saate kadardır. Eau de toilette'den daha ucuzdurlar ve bazen sprey olarak tanımlanırlar. \n\n  Parkta kısa bir bahar yürüyüşü için veya baştan çıkarıcı veya olağanüstü bir kokuya ihtiyaç duymadığınız gündelik bir günlük aktivite için kullandığınız bir koku. EDC kullanmaya karar verirseniz, kokuyu canlı tutmak istiyorsanız gün boyunca birçok yeniden uygulamaya hazırlıklı olun. \n\n  Eau de Cologne'u herhangi bir gece aktivitesi için, özellikle de kulüp veya resmi bir etkinlik için, kendinden emin bir şekilde kokmak ve herkesin dikkatini çekmek istediğinizde önermem. Ama yine de parkta yürüyüş yapmak için harika.'",
              titletwo: 'Hafif, uygun ve canlandırıcı.',
              explanation: 'yoğunluğu kimler için?'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/eaufraiche.jpg',
              subtitle: 'EAU FRAICHE',
              title: 'EAU FRAICHE',
              body:
                  "\t Eau de Cologne'a benzer şekilde, Eau Fraiche'de kesinlikle düşük konsantrasyonda parfüm yağı (%1-3) bulunur, ancak Eau de kolonyadan farklı olarak alkol içermez. Eau Fraiche temel olarak küçük bir koku yağı ve su konsantrasyonudur.\n\n  Eau de Cologne gibi aromatiktirler, ancak daha az şiddetlidirler; alkolleri olmadığı için 2 saatten fazla dayanmazlar.\n\n  Harika tazeleyicilerdir, günlük aktiviteler için gündüz kokularıdır ve hassas bir cildiniz varsa muhtemelen Eau de Cologne yerine Eau Fraiche'i seçmelisiniz.\n\n  Calvin Klein, Eau Fraiche fikrini ilk ortaya atan moda markasıydı- CK One, birçok beyefendinin hoşlandığı narenciye ve odunsu efektli misk kokusuydu. Ardından diğer markalar da Calvin Klein'ı takip ederek kendi Eau Fraiche üretimlerine başladılar.",
              titletwo: 'Ferah, doğal, canlı.',
              explanation: 'yoğunluğu kimler için?'),
        ],
      ),
      PreferencesModel(
        id: '5',
        backgroundImage: 'assets/images/manwoman.jpg',
        title: 'CİNSİYET',
        subtitle: '"Parfümlerin cinsiyeti var mı?"',
        preferencesPhotos: [
          PreferencesPhotos(
              backgroundImage: 'assets/images/woman.jpg',
              subtitle: 'KADINLAR',
              titletwo: 'Zarif, sofistike ve çarpıcı.',
              explanation: 'için \n parfüm seçimleri',
              body:
                  "\t Kadınlar için parfüm seçerken, tercihlerine göre farklı kokuları deneyebilirler. Ancak genellikle çiçeksi, meyvemsi ve tatlı kokular tercih edilir. Örneğin, yasemin, gül, frezya ve vanilya gibi çiçeksi ve tatlı kokular kadınlar için popüler seçimler arasındadır. Ayrıca, portakal, elma, şeftali ve ahududu gibi meyvemsi notalar da tercih edilebilir. Kadınlar aynı zamanda daha hafif ve taze hissettiren narenciye kokularını da seçebilirler.\n\n  Bununla birlikte, kadınların tercihleri kişisel olabilir ve herkesin farklı bir koku tercihi vardır. Bu nedenle, koku seçerken kendi zevklerinize güvenmek ve birkaç farklı kokuyu deneyerek hangisinin size en uygun olduğunu bulmak önemlidir. (Parfümlerin cinsiyeti konusundaki detaylı bilgiyi Unisex kısmında bulabilirsiniz.)\n\n   Chanel Coco Mademoiselle EDP veya Dior J'adore EDP gibi klasik parfümler kadınlar için güzel seçenekler arasındadır.",
              title: 'KADINLAR'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/man.jpg',
              subtitle: 'ERKEKLER',
              titletwo: 'Güçlü, maskülen, çekici.',
              explanation: 'için \n parfüm seçimleri',
              body:
                  "\t Erkekler için kullanabilecekleri birçok farklı parfüm türü mevcuttur. Genel olarak, erkekler daha ağır ve odunsu kokuları tercih ederler. Baharatlı notalar ve deri notaları da erkek parfümlerinde sıkça kullanılır. Ayrıca, taze ve ferah notalara da sıkça rastlanır.\n\n  Özellikle kış mevsiminde ağır ve yoğun kokular tercih edilebilirken, yaz mevsiminde daha hafif ve taze kokular daha popüler olabilir. Bazı popüler erkek parfüm markaları arasında Chanel, Dior, Armani, Hugo Boss, Dolce & Gabbana ve Yves Saint Laurent gibi markalar yer alır.\n\n  Öncelikle belirtmeliyim ki parfüm seçimi kişisel bir tercihtir ve herkesin teninde farklı etkiler yaratabilir. Ancak, genel olarak erkekler için kalıcı ve maskülen kokular tercih edilir.\n\n  Bununla birlikte, popüler erkek parfümleri arasında farklı tarz ve notalara sahip seçenekler bulunur. Örneğin, baharatlı, odunsu ve çiçeksi notaları bir araya getiren \"Terre d'Hermès\" erkek parfümü, sofistike bir seçenek olarak öne çıkar. \"Aventus\" ise meyvemsi ve odunsu notaları birleştirerek modern ve dinamik bir kokuya sahip bir diğer popüler erkek parfümüdür.\n\n  Daha klasik bir seçenek arayanlar için ise \"Acqua di Giò\" ve \"L'Eau d'Issey Pour Homme\" gibi taze, ferah ve maskülen kokular sunan parfümler tercih edilebilir.",
              title: 'ERKEKLER'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/unisex.jpg',
              subtitle: 'UNISEX',
              titletwo:
                  'Farklılıklarınızı ortadan kaldırın, stilinizi ifade edin.',
              body:
                  '\t Kadın ve erkek parfüm ayrımı aslında piyasa koşullarının getirmiş olduğu bir ayrım diyebiliriz. Herkes kendini daha rahat hissettiği parfümü sıkması önemlidir.\n\n  Geçmiş tarihlerde kadın parfümleri veya erkek parfümleri herkes tarafından sıkıldığı görülmüş. Dolayısıyla cinsiyetle özleşdeştirmek pek doğru değil. Bugün en kadınsı diyebileceğimiz notaların eski dönemlerde erkekler tarafından kullanıldığını görüyoruz. Bunun sebebi parfüm feminen olanla çok özdeşleşince, bu sefer de erkeklerin piyasadan çekildiği görülünce; erkek parfümleri üretilmeye başlanmış. Erkek parfümleri diye ayrı bir kategori üretiliyor ve başlangıçta traş losyonu olarak satışı başlıyor.\n\n  Aslında temeline bakıldığında tüm parfümler Unisex parfümlerdir. Fakat günümüzde halen bu algıyı elde edemediğimiz için Unisex parfümlere tekrardan değinelim.\n\n  Unisex parfümler, hem erkekler hem de kadınlar tarafından kullanılabilecek kokulardır. Genellikle hafif, taze ve ferah notalar içerirler ve çiçeksi, narenciye, odunsu ve baharatlı kokuların kombinasyonunu içerebilirler. Bu tür kokular, geniş bir kullanıcı kitlesi tarafından tercih edilir ve herhangi bir cilt tipi için uygun olabilir. Örnek olarak, CK One by Calvin Klein, Acqua di Gio by Giorgio Armani, ve Light Blue by Dolce & Gabbana gibi unisex parfümler verilebilir.',
              explanation: 'parfüm tercihleri',
              title: 'UNISEX'),
        ],
      ),
      PreferencesModel(
        id: '6',
        backgroundImage: 'assets/images/scents.jpg',
        title: 'KOKU AİLELERİ',
        subtitle: '"Koku aileleri ve bıraktıkları etkiler"',
        preferencesPhotos: [
          PreferencesPhotos(
              backgroundImage: 'assets/images/citrus.jpg',
              subtitle: 'NARENCİYE KOKULARI',
              titletwo: 'Taze, canlandırıcı, enerjik',
              body:
                  '\t Narenciye kokuları, taze ve canlandırıcı notaları ile genellikle yaz aylarında kullanılan ferahlatıcı kokulardır. Bu tür kokular, genellikle portakal, limon, greyfurt, mandalina ve bergamot gibi meyvelerden elde edilir. Narenciye kokuları, hafif, taze ve enerjik hisler uyandırarak canlandırıcı bir etki yaratır. Bu kokular genellikle günlük kullanım için uygundur ve hem erkek hem de kadınlar tarafından tercih edilir. Ayrıca, bazı narenciye notaları, baharatlar ve odunsu notalar ile birleştirilerek daha zengin ve sofistike kokular oluşturmak için kullanılabilir.\n\n Tabii, bir parfümün narenciye notaları içermesi, içeriğinde doğal olarak narenciye yağları veya sentetik bileşenler bulunması anlamına gelir. Bu notalar parfümün ferah ve canlı bir karakter kazanmasını sağlar. İşte bir örnek:\n\n  Jo Malone Lime Basil & Mandarin Cologne: Bu unisex parfüm, ferahlatıcı limon ve bergamot notalarıyla başlar ve ardından nane yaprağı, kapari yaprağı ve karabiber ile zenginleştirilir. Alt notalarda ise beyaz misk ve sedir ağacı bulunur.\n\n  Bu parfümdeki narenciye notaları, limonun yanı sıra mandalin ve bergamotun da birleşmesiyle oluşur. Bu notaların yanı sıra baharatlı ve odunsu notalar da bulunur, böylece parfümün karakteri daha derinleşir.',
              explanation: 'içerikleri ve etkileri',
              title: 'NARENCİYE KOKULARI'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/flower.jpg',
              subtitle: 'ÇİÇEKSİ KOKULAR',
              titletwo: 'Çiçeksi: Kokuların romantik yönü.',
              body:
                  "\t Çiçeksi koku ailesi, çiçeklerin özünden elde edilen notalar içeren parfümlerdir. Bu ailede yer alan parfümler genellikle kadınsı, romantik, zarif ve hafif kokulardan oluşur. Örneğin, yasemin, gül, menekşe, lavanta, çiğdem, zambak gibi çiçeklerin notaları bu koku ailesinde yaygın olarak kullanılır.\n\n  Bu koku ailesinde yer alan parfümlerin yoğunluğu ve kalıcılığı, kullanılan çiçek notalarına bağlı olarak değişebilir. Örneğin, yasemin notaları içeren bir parfüm daha yoğun ve kalıcı bir kokuya sahip olabilirken, lavanta notaları içeren bir parfüm daha hafif ve ferah bir kokuya sahip olabilir.\n\n  Çiçeksi koku ailesinden örnek bir parfüm vermek gerekirse, Chanel No. 5 bu ailenin en ünlü ve klasik parfümlerinden biridir. Bu parfümde yasemin, gül, iris ve vanilya notaları kullanılmaktadır. İkonik ve sofistike bir koku olarak bilinen Chanel No. 5, kadınların vazgeçilmez parfümleri arasında yer almaktadır.",
              explanation: 'içerikleri ve etkileri',
              title: 'ÇİÇEKSİ KOKULAR'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/spices.jpg',
              subtitle: 'ORYANTAL KOKULAR',
              titletwo: 'Oryantal: Gizemli, tutkulu ve çekici.',
              body:
                  '\t Oryantal kokular, baharatlı, tatlı, odunsu ve sıcak notalar içeren bir parfüm ailesidir. Bu kokular, genellikle kehribar, misk, vanilya, paçuli, tarçın ve baharatlı notalar gibi doğal materyallerden üretilir.\n\n  Oryantal kokuların etkileyici, derin ve yoğun bir kokusu vardır. Genellikle akşam etkinlikleri veya özel günler için tercih edilirler. Bu parfümlerin sıcak, yoğun notaları, daha kış aylarında kullanılmak üzere idealdir.\n\n  Bir örnek olarak, Thierry Mugler Angel parfümü oryantal bir koku olarak bilinir. Bu parfüm, vanilya, çikolata, bal ve karamel notalarının harmanlanması ile oluşan tatlı ve sıcak bir koku sunar.',
              explanation: 'içerikleri ve etkileri',
              title: 'ORYANTAL KOKULAR'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/woody.jpg',
              subtitle: 'ODUNSU KOKULAR',
              titletwo: 'Odunsu: Erkeksi, güçlü ve rahatlatıcı.',
              explanation: 'içerikleri ve etkileri',
              body:
                  '\t Odunsu kokular, ahşap, karaçam, sedir, sandal ağacı gibi notaları içerir. Genellikle doğal, sıcak, rahatlatıcı ve şehvetli olarak tanımlanırlar. Bu kokular, özellikle soğuk havalarda veya akşam saatlerinde tercih edilirler.\n\n  Erkek parfümleri genellikle daha ağır ve maskülen tonlar içeren odunsu notalara sahipken, kadın parfümleri daha hafif ve zarif tonlar içerebilirler. Bazı unisex parfümler ise, cinsiyetlere göre ayrım yapmadan hem kadınların hem de erkeklerin kullanabileceği, hafif veya yoğun odunsu notalar içerebilirler.\n\n  Odunsu kokuların etkileri genellikle sıcak, rahatlatıcı, doğal ve maskülen olarak tanımlanır. Bu kokuların çoğu cinsiyetlere özgü olarak kabul edilir, ancak günümüzde birçok unisex seçenek de mevcuttur. Odunsu kokular, erkeksi çekiciliği vurgulamak veya güçlü bir imaj yaratmak için tercih edilir. Ayrıca huzurlu bir atmosfer yaratmak, stresi azaltmak ve rahatlamak için de kullanılır. Bazı popüler odunsu notalar arasında sedir, vetiver, sandal ağacı, paçuli, misk ve amber yer alır.\n\n  Örnek olarak, erkekler için Chanel Bleu de Chanel, kadınlar için Tom Ford White Patchouli ve unisex olarak Maison Margiela Replica Jazz Club parfümleri, odunsu notalara sahip parfümler arasında yer alabilir.',
              title: 'ODUNSU KOKULAR'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/fougere.jpg',
              subtitle: 'FUJER KOKULAR',
              titletwo: 'Fujer: Ferah, temiz ve canlandırıcı.',
              body:
                  '\t Fougere adı, Fransızca "eğrelti otu" kelimesinden gelir ve bir parfümü tanımlamak için kullanılan ana koku ailelerinden biridir. Ancak, Fougere tek bir bileşen değildir. Klasik bir Fougere genellikle bergamot, lavanta, güve otu, sardunya ve meşe yosunu içerir.\n\n  Fujer parfümler, genellikle birçok farklı kokunun harmanlanmasıyla elde edilen bir koku ailesidir. Bunlar, tatlı, baharatlı, odunsu ve bazen çiçeksi veya narenciye notaları içerebilir. Fujer parfümler, hem erkekler hem de kadınlar tarafından kullanılabilecek uniseks bir tarza sahiptir.\n\n  Fujer parfümleri, sıcak ve rahat bir his uyandırmak için genellikle kış ve sonbahar aylarında tercih edilirler. Bu parfümler, akşam etkinlikleri için idealdir ve daha yoğun notalara sahip oldukları için özellikle soğuk havalarda daha iyi performans gösterirler. Ayrıca, bazı fujer parfümleri, şehir yaşamının hareketli ve enerjik havasını yansıtmak için tasarlanmıştır.\n\n  Fujer parfüm örnekleri arasında Tom Ford Tobacco Vanille, Yves Saint Laurent Black Opium, Paco Rabanne 1 Million ve Dior Homme Intense gibi popüler seçenekler yer alır. Bu parfümlerin ortak özellikleri, sıcak ve yoğun kokularıdır.',
              explanation: 'içerikleri ve etkileri',
              title: 'FUJER KOKULAR'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/water.jpg',
              subtitle: 'AROMATİK ve AKUATİK KOKULAR',
              titletwo: 'Sonsuz mavi, sonsuz özgürlük.',
              body:
                  '\t Aromatik ve akuatik kokular; değişik aromalara sahip kokuların birleşiminden oluşan bir koku ailesidir. Aromatik kokulara; mandalina, bergamot gibi hoş kokuları örnek gösterebiliriz. Akuatik kokulara ise; okyanus, deniz, yağmur gibi kokuları örnek gösterebiliriz. İkisinin birlikte kullanımına rastlayabileceğimiz gibi çeşitli koku aileleriyle birlikte kullanımı da oldukça yaygındır. Genellikle yazın kullanımı daha keyifli olan bir koku ailesidir. Hoş ve taze bir hava katar. \n\n  Aromatik kokular tek başlarına kullanıldıklarında birçok meyvenin birleşimi hissini verebilir. Ancak birçok koku ailesiyle birleşiminde oldukça değişik kokular ortaya çıkabilmektedir. Örneğin aromatik ve odunsu bir koku ailesinden elde edilen parfüm bize yalnızca aromatik bir koku vermez derinlerden gelen ağacımsı yani odunsu kokuyu da içinde barındırır. Akuatik kokular genellikle baskındır. Birlikte kullanıldıkları koku ailelerinin kokusunu bastırıp daha fazla ön plana çıkabilmektedir. Okyanus ferahlığı dediğimiz kokular akuatik koku ailesine ait kokulardır.\n\n  Bu kokulara deniz notalarının muazzam şekilde kullanıldığı ve hissedildiği bir parfüm olan Acqua di Gio Profumo örnek olarak verilebilir.',
              explanation: 'içerikleri ve etkileri',
              title: 'AKUATİK KOKULAR'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/chypre.jpg',
              subtitle: 'ŞİPRE KOKULAR',
              titletwo: 'Gizemli, sofistike ve sıra dışı.',
              body:
                  '\t Şipre genellikle birçok farklı koku ailesiyle birleşmektedir. Ayrıca birçok farklı koku ailesinde rastladığımız bazı kokuların burada da kullanıldığını fark ediyoruz. Gül, meşe yosunu, zambak, yasemin ya da bergamot gibi kokulara şipre koku ailesinin içeriğinde de rastlayabiliriz. Bu kokuların belirgin ya da hafif olmasını sağlayan ise beraberinde kullanılan koku ailesidir. Genellikle çiçeksi koku ailesiyle birlikte kullanımı yaygındır. Çiçeksi ve tatlı bir kokuya sahip olduğundan yaz aylarında kullanım için uygundur.\n\n  Şipre kokular, odunsu ve incelikli kokulardır, soğuk sonbahar kış akşamları için mükemmel kokular olarak tanımlanırlar. Şipre kokuları sıcak ve kurudur. Neredeyse tamamı bergamot, meşe yosunu, paçuli ve labdanumun odunsu, yosunlu bir akoru etrafında inşa edilmiştir. Şipre kokularında bazen çiçek, meyve veya ağaç notaları kullanılır. Şipre kokuları karakterli kokulardır. Üst ve kalp notaları incelikli ve alt notaları oldukça yoğundur. Bu ailenin parfümleri, benzersiz parfümler kullanmak isteyen karizmatik ve orijinal kişilikler için idealdir.\n\n  Şipre kokulara örnek verecek olursak Paco Rabanne Pure XS For Her:Çiçeksi oryantal ve vahşi yeni bir koku. İçinde yer alan ylang ylang ham ve evcilleşmemiş duygusu yaşatacak olan arzu dolu hallerin simgesi. Aşırı güzel ve coşkulu ifadeler barındıran ürün ile kendinizden geçmiş gibi hissedeceksiniz.',
              explanation: 'içerikleri ve etkileri',
              title: 'ŞİPRE KOKULAR'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/leather.jpg',
              subtitle: 'DERİ KOKULARI',
              titletwo: 'Deri notalarıyla cesur bir stil yaratın.',
              body:
                  '\t Deri kokulu parfümler, deri notaları içerdiği için sıcak, zengin ve davetkar bir havaya sahiptir. Bu parfümler genellikle güçlü ve yoğundur ve daha koyu notalarla birleştirilerek deri hissi uyandırmak için tasarlanmıştır.\n\nDeri kokularının etkileri arasında çekicilik, özgüven ve güçlü kişilik yer alabilir. Bu parfümler, özellikle kış aylarında tercih edilir ve gece kullanımı için idealdir. Deri kokulu parfümler, erkekler ve kadınlar için uygundur ve genellikle daha olgun ve sofistike bir koku profili arayanlar tarafından tercih edilir.\n\n  Bir örnek olarak, Tom Ford\'un "Ombre Leather" isimli parfümü deri notaları ağırlıklı bir kokudur. Ombre Leather, deri, amber ve vanilyanın harmanlanmasıyla oluşan bir koku. Yoğun ve çekici bir etkisi vardır. Fakat deri parfümleri satın alırken genel beğeniye uyan parfüm olmadığını düşünerekten satın alım gerçekleştirin.',
              explanation: 'içerikleri ve etkileri',
              title: 'DERİ KOKULARI'),
        ],
      ),
      PreferencesModel(
          id: '7',
          backgroundImage: 'assets/images/apply.jpg',
          title: 'KULLANIM',
          subtitle: '"Parfüm kullanım tavsiyeleri"',
          preferencesPhotos: [
            PreferencesPhotos(
                backgroundImage: 'assets/images/shower.jpg',
                subtitle: 'DUŞ ALIN',
                explanation: 've kurulanın.',
                titletwo: 'Parfüm kullanımından önce temizlik.',
                body:
                    '\t Parfüm kullanımı günümüzde kadınlar ve erkekler arasında yaygın bir güzellik ritüeli haline gelmiştir. Ancak, parfüm kullanımının en iyi şekilde yapılabilmesi için bazı püf noktalarının bilinmesi gerekmektedir. Parfümün etkisini arttırmak için harika bir yol olarak, parfüm kullanmadan önce duş almak önerilebilir. İşte bunun için beş neden:\n\n   Kötü Kokuların Önlenmesi \n\n  Duş almak ter, kir, yağ ve diğer kötü kokuları önlemeye yardımcı olur. Bu, parfümün daha iyi bir şekilde emilmesine ve kötü kokuların birikmesinin önlenmesine yardımcı olur. Parfüm, hoş bir koku verirken aynı zamanda kötü kokuları da örter.\n\n   Nemlendirme \n\n  Duş almak cildi nemlendirir ve nemlendirilmiş cilt, parfümün daha iyi bir şekilde emilmesine yardımcı olur. Kuru cilt, parfümün kokusunu hızlı bir şekilde kaybetmesine neden olabilir. Bu nedenle, duş aldıktan sonra cildinizi nemlendirerek parfümün kokusunu daha uzun süre korumasına yardımcı olabilirsiniz.\n\n   Cilt Temizliği \n\n  Cilt terleme, yağlanma ve kir gibi birçok faktörden etkilenebilir. Duş alarak cildinizi temizlemek, parfümün cilde daha iyi nüfuz etmesine yardımcı olur. Temiz cilt, parfümün kokusunun daha uzun süre kalıcı olmasına yardımcı olur.\n\n   Parfümün Etkisini Arttırma \n\n  Parfüm, cilde temas ettiğinde kimyasal bir reaksiyona girerek kokusunu yaymaya başlar. Temiz cilt, parfümün daha iyi bir şekilde emilmesine ve daha uzun süre kalıcı olmasına yardımcı olur. Bu nedenle, parfümü kullanmadan önce duş almak, parfümün etkisini arttırmanın harika bir yoludur.\n\n   Kişisel Bakım \n\n  Son olarak, duş almak genel kişisel bakımın bir parçasıdır. İyi bir kişisel bakım rutini, sağlıklı bir cilt, taze bir koku ve kendine güven duygusu sağlar. Bu nedenle, parfüm kullanmadan önce duş almak, hem cildinizi hem de kendinizi güzel hissetmenizi sağlar.\n\n  Parfüm kullanmadan önce duş almak, parfümün kokusunun daha uzun süre kalmasını sağlayacaktır. Bu nedenle, parfüm kullanımının püf noktalarını bilerek en iyi sonucu elde etmek mümkündür.',
                title: 'DUŞ ALIN'),
            PreferencesPhotos(
                backgroundImage: 'assets/images/pulsepoints.jpg',
                subtitle: 'NEREYE SIKILMALI?',
                explanation: '"kalıcılığı arttırmak"',
                titletwo: '"Kıyafete mi, yoksa cildime mi sıkmalıyım?"',
                body:
                    '\t Parfümü doğrudan cildinize değil, kıyafetlerinize veya saçlarınıza sıkmak bazen daha iyi bir seçenek olabilir. Bu makalede, neden parfümün doğrudan cilde değil de kıyafetlere veya saçlara sıkılması gerektiğini açıklayacağız.\n\n   Ciltteki Yağlar Parfüm Kokusunu Etkileyebilir\n\n  Cildimiz doğal olarak yağ üretir ve bu yağlar, parfümün kokusunu değiştirebilir veya hızla uçmasına neden olabilir. Bu nedenle, parfümü doğrudan cildinize sıktığınızda, cildinizdeki yağlar parfümün orijinal kokusunu değiştirebilir. Bu da parfümün kokusunun daha kısa sürede uçmasına neden olabilir. Bu nedenle, parfümünüzün kokusunu daha uzun süre korumak istiyorsanız, doğrudan cildinize değil, kıyafetlerinize veya saçlarınıza sıkmanız daha iyi olabilir.\n\n   Kıyafetler Parfüm Kokusunu Daha Uzun Süre Koruyabilir\n\n  Parfümü kıyafetlere sıkmak, parfüm kokusunun daha uzun süre kalmasına yardımcı olabilir. Kıyafetler, parfümün kokusunu emer ve kokunun daha uzun süre kalmasını sağlar. Ancak, kıyafetlerinize çok fazla parfüm sıkmamalısınız çünkü bazı kumaşlar parfümü tutabilir ve lekeler oluşabilir. Ayrıca, açık renkli kıyafetlerinize parfüm sıktığınızda leke oluşma riski daha yüksektir.\n\n   Saçlar Parfüm Kokusunu Yayabilir\n\n  Saçlarınıza parfüm sıkmak, parfümün kokusunun daha uzun süre kalmasına yardımcı olabilir. Saçlar, parfümü tutar ve kokunun daha uzun süre korunmasını sağlar. Ayrıca, saçlarınıza parfüm sıkmak, saçlarınızın güzel kokmasını sağlar ve hoş bir görünüm yaratır. Ancak, saçlarınıza çok fazla parfüm sıkmamalısınız çünkü bu saçlarınızı kurutabilir ve zarar verebilir.\n\n  Sonuç olarak, parfümünüzü doğrudan cildinize değil, kıyafetlerinize veya saçlarınıza sıkmak daha iyi bir seçenek olabilir. ',
                title: 'NEREYE SIKILMALI?'),
            PreferencesPhotos(
                backgroundImage: 'assets/images/howto.jpg',
                subtitle: 'NABIZ NOKTALARI',
                titletwo: 'Parfümü doğru yerlere sıkın.',
                body:
                    '\t Parfüm kullanmak günlük hayatta birçok insan için rutin bir adımdır. Ancak, doğru şekilde uygulandığında, parfümünüzün etkisini artırabilir ve kokunuzu daha uzun süre korumanıza yardımcı olabilir. Parfümünüzü doğru nabız noktalarına uygulamak, kokunuzun daha iyi yayılmasına ve daha uzun süre kalmasına yardımcı olabilir.\n\n  Nabız noktaları, kan dolaşımının daha yüzeye yakın olduğu vücudun belirli noktalarıdır. Bu noktalar, vücut ısısının daha yüksek olduğu bölgelerdir. Nabız noktalarını, kalp atışlarınızın daha net hissedilebileceği bölgeler olarak da düşünebilirsiniz. Kan damarları bu noktalarda daha yakın yüzeye yerleştirildiği için, vücut ısısı burada daha yüksek olur ve bu da kokunun daha iyi yayılmasını sağlar.\n\n  Nabız noktaları arasında boyun, bilekler, göğüs, dirsek içleri ve diz arkaları yer alır.\n\n  Parfümü boynunuza sıkmak, kulaklarınızın hemen altındaki bölgeyi hedefleyerek kokunun daha kolay yayılmasını sağlar.\n\n  Bileklerinizdeki nabız noktaları da kokunun daha hızlı yayılmasına yardımcı olur. \n\n  Parfümü göğsünüze sıkmak, koku duyunuzun yoğunlaşmasına yardımcı olur. Göğsünüzün ortasına ve göğüs kemiğinizin hemen altına parfüm sıkabilirsiniz.\n\n  Dirsek içleri ve diz arkaları da nabız noktalarıdır. Bu bölgelere parfüm sıkmak, kokunun daha iyi yayılmasını sağlar.',
                explanation: 'ile yayılımı arttır.',
                title: 'NABIZ NOKTALARI'),
            PreferencesPhotos(
              backgroundImage: 'assets/images/agresif.jpg',
              title: 'DOZAJ',
              subtitle: 'DOZAJIN AYARLANMASI',
              titletwo: '"Ne miktarda kullanmalıyım?"',
              explanation: 'ile \nalakalı öneriler',
              body:
                  '\t Parfüm kullanımıyla ilgili önemli bir konu, diğer insanların konforunu ve rahatlığını göz önünde bulundurmaktır. Aşırı parfüm kullanmak, başkalarını rahatsız edebilir ve hoş olmayan bir deneyime neden olabilir. Bu nedenle, parfüm kullanırken doğru miktarda kullanmak önemlidir.\n\n  İlk adım, doğru koku türünü seçmektir. Parfüm seçimi, ne kadar kullanacağınızı belirler. Ağır kokular, daha az miktarda kullanılmalıdır. Hafif ve taze kokular, daha fazla miktarda kullanılabilir.\n\n  Parfümü uygularken, çok fazla kullanmamaya özen gösterin. Birkaç sprey yeterli olabilir. Parfümü uygulamadan önce şişeyi iyi çalkalayın, bu sayede kokunun daha homojen bir şekilde dağılmasını sağlayabilirsiniz.\n\n  Uygulama noktalarını doğru seçmek de önemlidir. Nabız noktaları olarak adlandırılan vücudun sıcak bölgeleri, parfümünüzü doğru noktalarda kullanmanıza yardımcı olabilir. Bilekler, boyun ve kulak arkası bu noktalara örnek verilebilir.\n\n  Parfümü saçınıza sıkmak yerine, bileklerinize veya boyun bölgenize sıkmanız daha uygun olabilir. Parfümü kullanmanın uygun olduğu zamanlar vardır. Örneğin, ofiste veya kapalı bir alanda olduğunuzda çok fazla parfüm kullanmak, diğer insanları rahatsız edebilir. Bunun yerine, dışarıda ya da kalabalık olmayan bir ortamda kullanmayı tercih edebilirsiniz.\n\n  Sonuç olarak, parfüm kullanırken, doğru miktarda kullanmak ve uygun uygulama noktalarını seçmek önemlidir. Diğer insanların rahatsız olmamasına ve hoş olmayan bir deneyim yaşamamalarına özen göstermek, kendinizi ve çevrenizdekileri mutlu edecektir.',
            ),
            PreferencesPhotos(
                backgroundImage: 'assets/images/sillage.jpg',
                title: 'SİLAJ',
                subtitle: 'SİLAJ',
                titletwo: 'Parfüm kullanımında silaj nedir ve ne işe yarar?',
                body:
                    '\t Aslen Fransızca\'da silaj, bir teknenin dalgaları yarıp suda bıraktığı izdir. Parfümeri, bir kişinin arkasında kalan kokulu perdeyi çağrıştırmak için bu güzel görüntüyü ödünç aldı. Sillage bu nedenle bellekle, ama her zaman canlı kalan bir bellekle ilişkilidir. Gerçekten de koku alma duyusu bizi bir insanın varlığına herhangi bir fotoğraftan daha iyi geri getirir. Görünmese de, bir kişinin silüeti çok gerçektir ve orada olmayan ama orada olan birinin o şehvetli izini çağrıştırır.\n\n  Parfümerideki “silaj” sadece bir parfümün imzasını ve kalıcı gücünü değil, onu kullanan kişiyi de çağrıştırır. Şişesinde durağan bir parfüm değil, insanın geride bıraktığı kokuyu, herkesin hatırlayacağı imzasını çağrıştırıyor. Sillage herkese özeldir, bir parfümün ruhudur. Bir ciltten diğerine, yüksek konsantrasyonda doğal bileşenlere sahip bir kokunun silajı (bizimki gibi) çok farklı kokacaktır. Doğal içerikler, farklı ciltlerde farklı yüzleri ortaya çıkarabilir, böylece yalnızca kullanıcısına ait olan bir koku alma imzası oluşturabilir.\n\n  Bir parfümün silajı, içeriğindeki esansların yoğunluğu, kalitesi ve oranına bağlıdır. Bu nedenle, farklı markalardaki veya aynı markanın farklı ürünlerindeki aynı kokular bile farklı silaj seviyelerine sahip olabilir.\n\n  Ruh haliniz de seçtiğiniz silajı etkileyebilir. Kendinizi özgüvenli ve cesur hissediyorsanız kokunuzun fark edilmesi için silajı daha ağır olan bir parfüm tercih edebilirsiniz. Öte yandan, daha içe dönük veya romantik hissediyorsanız, daha yumuşak silajlı daha hafif bir koku tercih edebilirsiniz.\n\n  Ne tür bir parfüm seçerseniz seçin, kokunun kişisel olduğunu unutmayın. Bir kişide harika kokan şey, bir başkasında o kadar güzel kokmayabilir. Ve bir durumda harika kokan şey, başka bir durumda uygun olmayabilir.\n\n  Örneğin, güçlü bir silaja sahip ağır bir parfüm, şehirde bir gece geçirmek için mükemmel olabilir, ancak bir iş görüşmesi veya ilk buluşma için çok fazla olabilir. Her şey sizin için doğru dengeyi bulmakla ilgili.\n\n  Silajın doğru kullanımı, diğer insanların parfümünüzün kokusundan rahatsız olup olmadığını veya hoşlanıp hoşlanmadığını dikkate almakla ilgilidir. Yüksek silajlı bir parfüm kullanıyorsanız, daha az miktarda kullanmak, etrafınızdaki insanların rahatsız olmasını önlemek için önemlidir.',
                explanation: 'ile\nyayılma gücünüzü artırın'),
          ]),
      PreferencesModel(
        id: '8',
        backgroundImage: 'assets/images/timeless.jpg',
        title: 'KLASİKLER',
        subtitle: '"Her zaman ve her mekana\nuyum sağlayabilen parfümler"',
        preferencesPhotos: [
          PreferencesPhotos(
              backgroundImage: 'assets/images/chanelno5.jpg',
              subtitle: 'CHANEL - NO. 5',
              titletwo: 'Klasik, sofistike, şık.',
              explanation: '"Hayatta olan her kadının \n beğeneceği koku."',
              body:
                  "\t Chanel No. 5, 20. yüzyılın en ikonik ve en tanınmış parfümlerinden biridir. 1921 yılında Coco Chanel tarafından yaratılan bu parfüm, koku dünyasında bir çığır açtı ve modern kokuların öncüsü olarak kabul edilir. 'Hayatta olan her kadının beğeneceği koku' sloganıyla parlayan Chanel No. 5, Fransa'nın Grasse bölgesinde yetiştirilen yasemin çiçeğinden gelen özel bir esansla üretildi.\n\n  Parfüm, Ernest Beaux tarafından tasarlandı ve 80 farklı koku notalarını içeren bir formülasyonla yaratıldı. Beaux'un birçok farklı bileşeni denemesi sonucu ortaya çıkan formül, yasemin, gül, iris, vanilya, sandal ağacı, amber, vetiver ve aldehit gibi farklı notaları içerir. Parfümün sıra dışı bir kokusu vardır, çünkü geleneksel çiçeksi kokulardan daha keskindir ve pudralı bir dokunuşa sahiptir.\n\n  Parfümün adı, Coco Chanel'in 5 numaralı bir numune şişesi seçmesi sonucu ortaya çıktı. Chanel, beş numaranın onun için özel bir anlamı olduğuna inanıyordu ve bu numarayı parfümün adında kullanmayı tercih etti.\n\n  Chanel No. 5, zaman içinde birçok farklı versiyonu ve varyasyonuyla üretildi. Şişesi değişti, farklı boyutlarda üretildi, farklı tasarımcılar tarafından yaratılan kampanyalarla tanıtıldı. Ancak, orijinal formülasyonun dokunulmamış kalması gerekiyordu ve bu nedenle, herhangi bir yenilik yapılmadan sadece ambalajın değiştirildiği birkaç sürüm dışında, parfüm formülü değiştirilmedi.\n\n  Chanel No. 5, şık, klasik ve sofistike bir koku olarak kabul edilir. Kadınlar ve erkekler tarafından kullanılabilir ve herhangi bir özel durumda veya gündelik hayatta kullanılabilir. Parfüm, popüler kültürde de yer etmiş ve birçok farklı ünlü tarafından kullanılmıştır.",
              title: 'CHANEL - NO. 5'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/creed.jpg',
              subtitle: 'AVENTUS - CREED',
              explanation: '"Özgüven dolu bir başyapıt"',
              body:
                  "\t Aventus, lüks parfüm markası Creed tarafından 2010 yılında piyasaya sürülmüş bir erkek parfümüdür. Koku, markanın klasik mirasını modern bir yaklaşımla harmanlayan, cesur, taze ve sofistike bir koku olarak tanımlanır.\n\n  Aventus, meşhur parfümör Olivier Creed tarafından tasarlanmıştır. Kokuda kullanılan ana notalar arasında ananas, yeşil elma, blackcurrant yaprağı ve bergamot bulunur. Orta notalar arasında gül, yasemin, sardunya ve paçuli yer alırken, alt notalar arasında vanilya, misk, meşe yosunu ve ambergris bulunur.\n\n  Aventus'un ismi, Latincede \"zafer\" anlamına gelen \"Aventus\" kelimesinden gelir. Parfüm, kendine güveni olan, özgür ruhlu ve maceracı erkekler için tasarlanmıştır. Kokusu taze ve odunsu notaların harmanından oluşur ve birçok erkek tarafından beğenilir.\n\n  Aventus, özellikle yaz aylarında tercih edilen bir parfümdür. Hem gündüz hem de gece kullanımı için uygundur ve özellikle açık havada ve doğanın içindeyken hissedilen tazelik hissi ile özdeşleştirilir. Aventus, aynı zamanda uzun süre kalıcılığı ile de bilinir ve birçok kişi tarafından Creed'in en iyi erkek kokusu olarak kabul edilir.",
              titletwo: 'Maskülen, ferah, zarif.',
              title: 'AVENTUS - CREED'),
          PreferencesPhotos(
              backgroundImage: 'assets/images/lightblue.jpg',
              subtitle: 'DOLCE GABBANA - LIGHT BLUE',
              titletwo: 'Ferah, canlı, enerjik.',
              explanation: '"Ayrıcalıklı bir yaz hissi"',
              body:
                  "\t Dolce & Gabbana Light Blue, İtalyan moda evi Dolce & Gabbana tarafından 2001 yılında piyasaya sürülmüş bir kadın parfümüdür. Light Blue, ferah ve canlandırıcı kokusu ile yaz mevsiminde kullanılmak üzere tasarlanmıştır.\n\n  Parfüm, ünlü parfümörler Olivier Cresp ve Alberto Morillas tarafından tasarlanmıştır. Kokusu, sicilya limonu, yeşil elma ve misket limonunun ferahlatıcı üst notaları ile başlar. Orta notalarında bambu, yasemin ve beyaz gülün hafif tatlı kokuları hissedilir. Alt notalarda ise sedir ağacı, amber ve misk gibi odunsu ve baharatlı kokular yer alır.\n\n  Dolce & Gabbana Light Blue, genç, enerjik ve özgüvenli kadınlar için tasarlanmıştır. Parfüm, ferah ve canlı karakteri ile özellikle yaz aylarında kullanılmak üzere tercih edilir. Gündüz ve akşam saatlerinde kullanılabilir ve özellikle açık hava etkinlikleri, plaj partileri ve tatil gibi rahat ve eğlenceli ortamlarda tercih edilir.\n\n  Dolce & Gabbana Light Blue, sofistike bir tarzı olan ferah bir parfümdür. Kadınlar için modern ve cazip bir seçimdir.",
              title: 'DOLCE GABBANA - LIGHT BLUE '),
          PreferencesPhotos(
              backgroundImage: 'assets/images/jadore.jpg',
              subtitle: "DIOR - J'ADORE",
              titletwo: 'Zarif, çiçeksi, kadınsı.',
              body:
                  "\t Dior J'adore, Christian Dior'un imzasını taşıyan modern bir kadın parfümüdür. 1999 yılında piyasaya sürülmüş olan parfüm, kadınsı, çiçeksi ve meyvemsi notalara sahip sofistike bir koku olarak tanınır.\n\n  Parfümün üst notaları, bergamot, armut, şeftali ve mandalina gibi taze ve hafif narenciye notalarından oluşur. Kalp notasında ise güllü ve yaseminli bir karışımı içerir. Dip notalarda ise vanilya, paçuli ve misk gibi sıcak ve odunsu notalar mevcuttur. Bu notaların birleşimi, parfüme ferah, zarif ve modern bir karakter kazandırır.\n\n  J'adore, şık ve sofistike bir koku olarak kabul edilir. İnce ve zarif kadınların tercih ettiği bir koku olarak bilinir. Hem gündüz hem de gece kullanıma uygun olan parfüm, özellikle özel günlerde veya davetlerde kullanılır.\n\n  Dior J'adore, birçok farklı formda piyasaya sürülmüştür. Örneğin, vücut losyonu, duş jeli ve saç parfümü gibi ürünlerin yanı sıra, yoğunlaştırılmış konsantre parfüm olarak da sunulur. Bu sayede kullanıcılar, parfümün etkisini daha uzun süre koruyabilirler.\n\n  Dior J'adore, özellikle reklam kampanyalarıyla da tanınır. Charlize Theron'un başrolde yer aldığı unutulmaz reklam kampanyaları, parfümün kadınsı, zarif ve sofistike karakterini vurgular.",
              explanation: '"Sonsuz kadınsılık (Infinissime) "',
              title: "DIOR - J'ADORE"),
          PreferencesPhotos(
              backgroundImage: 'assets/images/profumo.jpg',
              subtitle: 'ACQUA DI GIO PROFUMO',
              explanation: '"Sonsuz ferahlık hissi"',
              body:
                  "\t Acqua di Gio Profumo, Giorgio Armani tarafından erkekler için tasarlanmış taze ve deniz kokulu bir parfümdür. Parfümün bileşenleri arasında bergamot, kekik, adaçayı, lavanta, deniz yosunu, paçuli, sedir ağacı ve amber yer alır. Alberto Morillas tarafından tasarlanan bu parfüm, Acqua di Gio'nun klasik kokusunun bir yorumudur.\n\n  Parfüm, açık havada geçirilen zamanlarda mükemmel bir seçimdir. Hafif, taze ve ferah bir koku olarak kabul edilir ve yaz aylarında kullanmak için idealdir. Aynı zamanda gece kullanımına da uygun bir kokudur. Şık ve sofistike tasarımıyla dikkat çeken koyu cam şişe ve siyah kapak, modern bir tarz sunar.\n\n  Acqua di Gio Profumo, farklı formüllerde de sunulur. Vücut losyonu, duş jeli ve deodorant gibi formülleri de mevcuttur. Bu formüller, parfümün kokusunun daha uzun süre dayanmasına yardımcı olur.\n\n  Sonuç olarak, Acqua di Gio Profumo, taze ve deniz kokulu bir koku profiline sahip modern ve sofistike bir erkek parfümüdür. Taze notaları ile özellikle yaz aylarında kullanıma uygundur ve farklı formülleri sayesinde kullanıcılarına daha uzun süreli bir koku deneyimi sunar.",
              titletwo: 'Ferah, yoğun, maskülen.',
              title: 'ACQUA DI GIO PROFUMO'),
        ],
      ),
    ]);
