using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_Commerce
{
    public class VirtualDatabase
    {
        private List<Product> products = new List<Product>();

        public List<Product> Products { get => products; set => products = value; }

        public VirtualDatabase()
        {
            AddNewProductToDatabase(new Product()
            {
                ProductID = 1000,
                ProductBrand = "Xiaomi",
                ProductName = "Redmi Note 11 Pro 5G",
                ProductCategoryName = "Mobile Phone",
                ProductDecription = "128 GB 8 GB Ram (Xiaomi Türkiye Garantili) 128 GB 8 GB Ram (Xiaomi Türkiye Garantili) 128 GB 8 GB Ram (Xiaomi Türkiye Garantili) 128 GB 8 GB Ram (Xiaomi Türkiye Garantili) ",
                ProductPrice = 530,
                ProductQuantity = 65,
                Productlmage = "xiaomi_rn11pro5g.jpg"
            });

            AddNewProductToDatabase(new Product()
            {
                ProductID = 1001,
                ProductBrand = "Monster",
                ProductName = "Abra A5 v11.2",
                ProductCategoryName = "Computer",
                ProductDecription = "Peşin fiyatına 12 taksit ödeme imkanı tüm Monster Notebooklarda! Peşin fiyatına 12 taksit ödeme imkanı tüm Monster Notebooklarda! Peşin fiyatına 12 taksit ödeme imkanı tüm Monster Notebooklarda!",
                ProductPrice = 770,
                ProductQuantity = 35,
                Productlmage = "monster_abraa5.jpg"
            });

            AddNewProductToDatabase(new Product()
            {
                ProductID = 1002,
                ProductBrand = "Viomi",
                ProductName = "Vacuum Cleaner",
                ProductCategoryName = "Cleaning Robot",
                ProductDecription = "İthalatçı Garantili",
                ProductPrice = 180,
                ProductQuantity = 165,
                Productlmage = "viomi_vacuumcleaner.jpg"
            });
            
            AddNewProductToDatabase(new Product()
            {
                ProductID = 1003,
                ProductBrand = "HP",
                ProductName = "HP Laser MFP 135w Mono Yazıcı 4ZB83A",
                ProductCategoryName = "Printer",
                ProductDecription = "Uygun fiyata üretken MFP performansı elde edin. Basın, tarayın ve kopyalayın, yüksek kaliteli sonuçlar elde edin ve telefondan basın ve tarayın. \n\n Dinamik güvenlik özelliklerine sahip yazıcı \n\n Belirli HP yazıcıları, yalnızca yeni veya yeniden kullanılmış HP çipleri veya elektronik devreleri olan kartuşlarla çalışmak üzere tasarlanmıştır. Bu yazıcılar, HP ürünü olmayan bir çip veya elektronik devreye sahip kartuşları engellemek için dinamik güvenlik önlemleri kullanır. Düzenli ürün yazılımı güncelleştirmeleri, bu önlemlerin etkinliğini sürdürecek ve daha önce çalışır durumda olan kartuşları engelleyecektir. Yeniden kullanılmış HP çipleri ve elektronik devreleri, yeniden kullanılmış, yeniden üretilmiş ve yeniden doldurulmuş kartuşların kullanımına olanak sağlar. ",
                ProductPrice = 260,
                ProductQuantity = 700,
                Productlmage = "hp_laser_mfp.png"
            });
            AddNewProductToDatabase(new Product()
            {
                ProductID = 1004,
                ProductBrand = "Huawei",
                ProductName = "Huawei Matebook D15",
                ProductCategoryName = "Computer",
                ProductDecription = "11.nesil Intel i7 İşlemci | 15.6inc FullView Ekran | 16GB + 512 GB",
                ProductPrice = 810,
                ProductQuantity = 210,
                Productlmage = "huawei_matebook_d15.jpg"
            });
            AddNewProductToDatabase(new Product()
            {
                ProductID = 1005,
                ProductBrand = "Philips",
                ProductName = "Philips FC9749/07 Powerpro Max Toz Torbasız Süpürge",
                ProductCategoryName = "Cleaning Robot",
                ProductDecription = "Aralık temizleme ve filtreleme performansları dahil HF'de toz toplama, DIN EN60312-1:2013 uyarınca test edilmiştir. Filtreleme seviyeleri EN60312-1-2017 uyarınca test edilmiştir ve HEPA 13 ile eşdeğerdir. Aralıkların olduğu sert zeminlerde %99,9 oranında toz toplama (IEC62885-2).",
                ProductPrice = 250,
                ProductQuantity = 1210,
                Productlmage = "philips_fc9749_powerpro.jpg"
            });
            AddNewProductToDatabase(new Product()
            {
                ProductID = 1006,
                ProductBrand = "Anker",
                ProductName = "Anker Soundcore Life Q10 Kablosuz Bluetooth 5.0 Kulaklık",
                ProductCategoryName = "Computer Equipment",
                ProductDecription = "Anker tarafından kablosuz kulak üstü kulaklık tercih edenler için geliştirilen Anker Soundcore Life Q10 A3032 kablosuz kulaküstü kulaklık modeli, sunduğu ses kalitesiyle kullanıcılardan tam not almayı başarıyor. Model, bataryasından tasarımına kadar her bir detayıyla kullanıcı odaklı bir yaklaşımın sonuçlarını yansıtıyor. Bluetooth 5.0 desteği ile kablosuz olarak kullanılabilen cihaz, 35 metrelik menziliyle önemli bir avantaj sağlıyor. Müzik dinlemeyi sevenler için bambaşka bir ayrıcalık anlamına gelen Soundcore Life Q10, dahili mikrofonu ve arka plan seslerini baskılayan teknolojisiyle de telefon görüşmesi yapmak isteyenler için ideal bir deneyim sunuyor.Ayrıca kablolu kulaküstü kulaklık olarakta kullanılabiliyor.",
                ProductPrice = 20,
                ProductQuantity = 600,
                Productlmage = "anker_soundcore_life_q10.jpg"
            });
            AddNewProductToDatabase(new Product()
            {
                ProductID = 1007,
                ProductBrand = "Lenovo",
                ProductName = "Lenovo Tab M10  TB-X306F 4GB 64GB 10.1inc Gri Tablet  ZA6W0121TR",
                ProductCategoryName = "Tablet",
                ProductDecription = "LENOVO Tab M10 HD (2nd Gen) MediaTek Helio P22T 2.3GHZ 4 GB Ram 64 GB 10.1incHD + Folio Case + Film ZA6W0121TR ZA6W0121TR",
                ProductPrice = 360,
                ProductQuantity = 800,
                Productlmage = "lonovo_tab_m10_tb-x306f.jpg"
            });
            AddNewProductToDatabase(new Product()
            {
                ProductID = 1008,
                ProductBrand = "Lenovo",
                ProductName = "LG OLED77C14LB 77inc 195 Ekran Uydu Alıcılı 4K Ultra HD Smart OLED TV",
                ProductCategoryName = "TV",
                ProductDecription = "OLED Smart TV Uydu Alıcılı 77 İnç 195 cm Ekran 4K C1 OLED77C14LB Sihirli Kumanda OLED77C14LB.APD OLED Piksel Teknolojisi: Sonsuz Kontrast, %100 Renk Doğruluğu 4K Akıllı Görüntü İyileştirme Özelliği ile 4.Nesil α9 İşlemci Türkçe Destekli Sesle Kontrol, ThinQ Yapay Zeka Teknolojisi webOS 6.0 Smart TV Deneyimi, Yeni Sihirli Kumanda Dolby Vision IQ ve Dolby Atmos ile Gerçek Sinematik Deneyim HDMI 2.1 Desteği ile 120 Hz’de 4K Hızlı ve Akıcı Oyun Deneyimi",
                ProductPrice = 2360,
                ProductQuantity = 100,
                Productlmage = "lg_oled77c14lb.jpg"
            });
            AddNewProductToDatabase(new Product()
            {
                ProductID = 1009,
                ProductBrand = "Sony",
                ProductName = "Sony KD-85XH9096 85inc 215 Ekran Uydu Alıcılı 4K Ultra HD Smart LED TV",
                ProductCategoryName = "TV",
                ProductDecription = "Daha geniş, daha hassas bir renk yelpazesi üretir X1 işlemcilerimizle desteklenen TRILUMINOS, renk aralığını genişleterek geleneksel bir televizyondan daha fazla renk üretir. Her görüntünün verilerini analiz edip işleyerek renklerin daha da doğal ve hassas olmasını sağlar; böylece görüntüler hiç olmadığı kadar gerçekçi olur.",
                ProductPrice = 2280,
                ProductQuantity = 60,
                Productlmage = "sony_kd-85xh9096.jpg"
            });
        }

        public void AddNewProductToDatabase(Product product)
        {
            Products.Add(product);
        }

        public bool DeleteProductFromDatabase(int productID)
        {
            foreach (Product product in Products)
            {
                if (product.ProductID == productID)
                {
                    Products.Remove(product);
                    return true;
                }
            }

            return false;
        }

        public Product GetProductByID(int productID)
        {
            foreach (Product product in Products)
            {
                if (product.ProductID == productID)
                    return product;
            }

            return new Product();
        }
    }
}