KIBRA = {}

-- Billing
KIBRA.BillBlock = false -- Oyuncuların ödenmemiş faturaları varsa, motel odası kiralamalarını engeller.
KIBRA.InvoiceAmount = 1000 -- Maksimum Fatura Limiti
KIBRA.MailBilling = true -- Fatura kesildiğine dair telefona mail gönderir.

KIBRA.DiscordWebHook = true -- Discord üzerinden yapılan işlemlerin logunu tutar.
KIBRA.DiscordWebHookLink = "https://discord.com/api/webhooks/914508965805715477/6h0Au4rr7zOMYmNAgN9uYp5IPvvSCYZMa3NkmTJ4c16dxXCYGWR2uJ4TzarUxa8VBrfk"

KIBRA.MotelKeyData = false -- Bu Özellik Henüz Yapım Aşamasındadır.
KIBRA.ResmonOptimize = false -- True olduğunda oda önünde ve Depoların önünde blipler gözükür.
KIBRA.MultiMotel = false -- Bir oyuncunun bir den fazla Motel odası kiralayabilmesine olanak sağlar.

-- Copy Key Menu
KIBRA.CopyKeyPrice = 500 -- Anahtar Çoğaltma Ücreti
KIBRA.CopyKeyLimit = 3 -- Maksimum çoğaltabileceği anahtar limiti

KIBRA.Elevator = {
    [1] = {
        {Text = "Lobi", Coord = vector3(-1009.25, -754.93, 19.84)},
        {Text = "2.Kat (1-7)",    Coord = vector3(-1009.34, -752.61, 31.33)},
        {Text = "3.Kat (8-15)",   Coord = vector3(-1009.34, -752.61, 34.79)},
        {Text = "4.Kat (16-21)",  Coord = vector3(-1009.34, -752.61, 38.22)},
        {Text = "5.Kat (22-28)",  Coord = vector3(-1009.34, -752.61, 41.53)},
        {Text = "6.Kat (29-35)",  Coord = vector3(-1009.34, -752.61, 44.85)},
        {Text = "7.Kat (36-42)",  Coord = vector3(-1009.34, -752.61, 48.17)},
        {Text = "8.Kat (43-49)",  Coord = vector3(-1009.34, -752.61, 51.58)},
        {Text = "9.Kat (50-56)",  Coord = vector3(-1009.34, -752.61, 54.9)},
        {Text = "10.Kat (57-63)", Coord = vector3(-1009.34, -752.61, 58.21)},
        {Text = "11.Kat (64-70)", Coord = vector3(-1009.35, -752.61, 61.5)},
        {Text = "12.Kat (-77)",   Coord = vector3(-1009.35, -752.61, 64.81)},
        {Text = "13.Kat (76-86)", Coord = vector3(-1009.35, -752.61, 68.18)},
        {Text = "14.Kat (85-91)", Coord = vector3(-1009.35, -752.61, 71.66)},
    }
}

KIBRA.Motels = {
    [1] = {
        MotelName = "Pinkcage Motel",
        DoorHash = -1156992775,
        ReceptionNPC = "a_m_y_bevhills_01",
        RecepsiyonName = "Recepsiyon Rıdvan",

        -- Blip Options
        BlipColor = 8,
        BlipSize = 0.6,
        BlipType = 475,

        -- Motel Payment
        MotelRentPayment = true, -- Motelin Fatura Kesmesini Ayarlar.
        MotelRentPrice = 100, -- Kesilecek Fatura Tutarı
        MotelPrice = 500, -- Motel Oda Ücreti

        -- Motel Coord Info
        ReceptionCoord = vector3(325.17, -229.54, 53.22),
        ReceptionNPCHeading = 165.48,
        
        MotelRooms = {
            [1] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(307.57, -213.29, 54.22),
                DoorHeading = 68.9096,
                StashCoord = vector3(306.86, -208.64, 54.23),
                Wardrobe = vector3(302.38, -207.24, 54.23),
                DoorLock = true,
                StashLock = true,
            },

            [2] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(311.36, -203.46, 54.22),
                DoorHeading = 68.9096,
                StashCoord = vector3(310.51, -198.61, 54.22),
                Wardrobe = vector3(306.32, -197.45, 54.22),
                DoorLock = true,
                StashLock = true,
            },

            [3] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(315.79, -194.79, 54.22),
                DoorHeading = 338.946,
                StashCoord = vector3(320.45, -194.13, 54.22),
                Wardrobe = vector3(321.79, -189.81, 54.22),
                DoorLock = true,
                StashLock = true,
            },

            [4] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(315.84, -219.66, 58.02),
                DoorHeading = 158.946,
                StashCoord = vector3(310.17, -220.36, 58.02),
                Wardrobe = vector3(308.85, -224.63, 58.02),
                DoorLock = true,
                StashLock = true,
            },

            [5] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(307.35, -213.24, 58.02),
                DoorHeading = 68.9096,
                StashCoord = vector3(306.78, -208.53, 58.02),
                Wardrobe = vector3(302.52, -207.23, 58.02),
                DoorLock = true,
                StashLock = true,
            },

            [6] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(311.22, -203.35, 58.02),
                DoorHeading = 68.9096,
                StashCoord = vector3(310.64, -198.74, 58.02),
                Wardrobe = vector3(306.33, -197.41, 58.02),
                DoorLock = true,
                StashLock = true,
            },

            [7] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(315.78, -194.62, 58.02),
                DoorHeading = 338.946,
                StashCoord = vector3(320.51, -194.11, 58.02),
                Wardrobe = vector3(321.73, -189.70, 58.02),
                DoorLock = true,
                StashLock = true,
            },

            [8] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(339.20, -219.47, 54.22),
                DoorHeading = 248.909,
                StashCoord = vector3(339.93, -224.19, 54.22),
                Wardrobe = vector3(344.24, -225.47, 54.22),
                DoorLock = true,
                StashLock = true,
            },

            [9] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(342.93, -209.50, 54.22),
                DoorHeading = 248.909,
                StashCoord = vector3(343.61, -214.35, 54.22),
                Wardrobe = vector3(348.01, -215.56, 54.22),
                DoorLock = true,
                StashLock = true,
            },

            [10] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(346.78, -199.66, 54.22),
                DoorHeading = 248.909,
                StashCoord = vector3(347.34, -204.44, 54.22),
                Wardrobe = vector3(351.86, -205.67, 54.22),
                DoorLock = true,
                StashLock = true,
            },

            [11] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(335.00, -227.38, 58.02),
                DoorHeading = 158.946,
                StashCoord = vector3(330.27, -228.04, 58.02),
                Wardrobe = vector3(328.99, -232.40, 58.02),
                DoorLock = true,
                StashLock = true,
            },

            [12] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(339.27, -219.49, 58.02),
                DoorHeading = 248.909,
                StashCoord = vector3(339.85, -224.16, 58.02),
                Wardrobe = vector3(344.21, -225.51, 58.02),
                DoorLock = true,
                StashLock = true,
            },

            [13] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(343.08, -209.54, 58.02),
                DoorHeading = 248.909,
                StashCoord = vector3(343.63, -214.27, 58.02),
                Wardrobe = vector3(347.95, -215.52, 58.02),
                DoorLock = true,
                StashLock = true,
            },

            [14] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(346.69, -199.66, 58.02),
                DoorHeading = 248.909,
                StashCoord = vector3(347.49, -204.41, 58.02),
                Wardrobe = vector3(351.77, -205.64, 58.02),
                DoorLock = true,
                StashLock = true,
            }
        }
    },

    [2] = {
        MotelName = "Haldun Taner Motel",
        DoorHash = 1398355146,
        ReceptionNPC = "a_m_y_business_02",
        RecepsiyonName = "Recepsiyon Barbaros",

        -- Blip Options
        BlipColor = 20,
        BlipSize = 0.6,
        BlipType = 475,

        -- Motel Payment
        MotelRentPayment = true, -- Motelin Fatura Kesmesini Ayarlar.
        MotelRentPrice = 100, -- Kesilecek Fatura Tutarı
        MotelPrice = 500, -- Motel Oda Ücreti

        -- Motel Coord Info
        ReceptionCoord = vector3(-1016.1, -758.0, 18.84),
        ReceptionNPCHeading = 84.7,
        
        MotelRooms = {
            [1] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -731.12, 31.322),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.44, -730.56, 31.32),
                Wardrobe = vector3(-1000.84, -729.68, 31.32),
                DoorLock = true,
                StashLock = true,
            },
        
            [2] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.08, -738.48, 31.32),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -738.08, 31.32),
                Wardrobe = vector3(-1001.00, -737.16, 31.32),
                DoorLock = true,
                StashLock = true,
            },
            
            [3] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.12, -746.00, 31.32),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -745.52, 31.32),
                Wardrobe = vector3(-1000.88, -744.48, 31.32),
                DoorLock = true,
                StashLock = true,
            },
            
            [4] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -753.44, 31.32),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.28, -753.08, 31.32),
                Wardrobe = vector3(-1000.88, -752.12, 31.32),
                DoorLock = true,
                StashLock = true,
            },
            
            [5] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -760.84, 31.32),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -760.36, 31.32),
                Wardrobe = vector3(-1000.92, -759.32, 31.32),
                DoorLock = true,
                StashLock = true,
            },
            
            [6] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.24, -768.12, 31.32),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -767.72, 31.32),
                Wardrobe = vector3(-1000.96, -766.72, 31.32),
                DoorLock = true,
                StashLock = true,
            },
            
            [7] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -775.76, 31.32),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -775.28, 31.32),
                Wardrobe = vector3(-1000.84, -774.32, 31.32),
                DoorLock = true,
                StashLock = true,
            },
            
            [8] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -731.12, 34.80),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.44, -730.56, 34.80),
                Wardrobe = vector3(-1000.84, -729.68, 34.80),
                DoorLock = true,
                StashLock = true,
            },
            
            [9] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.08, -738.48, 34.80),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -738.08, 34.80),
                Wardrobe = vector3(-1001.00, -737.16, 34.80),
                DoorLock = true,
                StashLock = true,
            },
            
            [10] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.12, -746.00, 34.80),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -745.52, 34.80),
                Wardrobe = vector3(-1000.88, -744.48, 34.80),
                DoorLock = true,
                StashLock = true,
            },
            
            [11] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -753.44, 34.80),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.28, -753.08, 34.80),
                Wardrobe = vector3(-1000.88, -752.12, 34.80),
                DoorLock = true,
                StashLock = true,
            },
            
            [12] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -760.84, 34.80),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -760.36, 34.80),
                Wardrobe = vector3(-1000.92, -759.32, 34.80),
                DoorLock = true,
                StashLock = true,
            },
            
            [13] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.24, -768.12, 34.80),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -767.72, 34.80),
                Wardrobe = vector3(-1000.96, -766.72, 34.80),
                DoorLock = true,
                StashLock = true,
            },
            
            [14] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -775.76, 34.80),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -775.28, 34.80),
                Wardrobe = vector3(-1000.84, -774.32, 34.80),
                DoorLock = true,
                StashLock = true,
            },
            
            [15] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -731.12, 38.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.44, -730.56, 38.20),
                Wardrobe = vector3(-1000.84, -729.68, 38.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [16] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.08, -738.48, 38.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -738.08, 38.20),
                Wardrobe = vector3(-1001.00, -737.16, 38.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [17] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.12, -746.00, 38.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -745.52, 38.20),
                Wardrobe = vector3(-1000.88, -744.48, 38.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [18] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -753.44, 38.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.28, -753.08, 38.20),
                Wardrobe = vector3(-1000.88, -752.12, 38.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [19] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -760.84, 38.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -760.36, 38.20),
                Wardrobe = vector3(-1000.92, -759.32, 38.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [20] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.24, -768.12, 38.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -767.72, 38.20),
                Wardrobe = vector3(-1000.96, -766.72, 38.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [21] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -775.76, 38.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -775.28, 38.20),
                Wardrobe = vector3(-1000.84, -774.32, 38.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [22] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -731.12, 41.52),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.44, -730.56, 41.52),
                Wardrobe = vector3(-1000.84, -729.68, 41.52),
                DoorLock = true,
                StashLock = true,
            },
            
            [23] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.08, -738.48, 41.52),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -738.08, 41.52),
                Wardrobe = vector3(-1001.00, -737.16, 41.52),
                DoorLock = true,
                StashLock = true,
            },
            
            [24] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.12, -746.00, 41.52),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -745.52, 41.52),
                Wardrobe = vector3(-1000.88, -744.48, 41.52),
                DoorLock = true,
                StashLock = true,
            },
            
            [25] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -753.44, 41.52),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.28, -753.08, 41.52),
                Wardrobe = vector3(-1000.88, -752.12, 41.52),
                DoorLock = true,
                StashLock = true,
            },
            
            [26] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -760.84, 41.52),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -760.36, 41.52),
                Wardrobe = vector3(-1000.92, -759.32, 41.52),
                DoorLock = true,
                StashLock = true,
            },
            
            [27] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.24, -768.12, 41.52),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -767.72, 41.52),
                Wardrobe = vector3(-1000.96, -766.72, 41.52),
                DoorLock = true,
                StashLock = true,
            },
            
            [28] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -775.76, 41.52),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -775.28, 41.52),
                Wardrobe = vector3(-1000.84, -774.32, 41.52),
                DoorLock = true,
                StashLock = true,
            },
            
            [29] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -731.12, 44.84),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.44, -730.56, 44.84),
                Wardrobe = vector3(-1000.84, -729.68, 44.84),
                DoorLock = true,
                StashLock = true,
            },
            
            [30] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.08, -738.48, 44.84),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -738.08, 44.84),
                Wardrobe = vector3(-1001.00, -737.16, 44.84),
                DoorLock = true,
                StashLock = true,
            },
            
            [31] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.12, -746.00, 44.84),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -745.52, 44.84),
                Wardrobe = vector3(-1000.88, -744.48, 44.84),
                DoorLock = true,
                StashLock = true,
            },
            
            [32] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -753.44, 44.84),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.28, -753.08, 44.84),
                Wardrobe = vector3(-1000.88, -752.12, 44.84),
                DoorLock = true,
                StashLock = true,
            },
            
            [33] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -760.84, 44.84),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -760.36, 44.84),
                Wardrobe = vector3(-1000.92, -759.32, 44.84),
                DoorLock = true,
                StashLock = true,
            },
            
            [34] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.24, -768.12, 44.84),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -767.72, 44.84),
                Wardrobe = vector3(-1000.96, -766.72, 44.84),
                DoorLock = true,
                StashLock = true,
            },
            
            [35] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -775.76, 44.84),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -775.28, 44.84),
                Wardrobe = vector3(-1000.84, -774.32, 44.84),
                DoorLock = true,
                StashLock = true,
            },
            
            [36] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -731.12, 48.16),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.44, -730.56, 48.16),
                Wardrobe = vector3(-1000.84, -729.68, 48.16),
                DoorLock = true,
                StashLock = true,
            },
            
            [37] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.08, -738.48, 48.16),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -738.08, 48.16),
                Wardrobe = vector3(-1001.00, -737.16, 48.16),
                DoorLock = true,
                StashLock = true,
            },
            
            [38] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.12, -746.00, 48.16),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -745.52, 48.16),
                Wardrobe = vector3(-1000.88, -744.48, 48.16),
                DoorLock = true,
                StashLock = true,
            },
            
            [39] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -753.44, 48.16),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.28, -753.08, 48.16),
                Wardrobe = vector3(-1000.88, -752.12, 48.16),
                DoorLock = true,
                StashLock = true,
            },
            
            [40] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -760.84, 48.16),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -760.36, 48.16),
                Wardrobe = vector3(-1000.92, -759.32, 48.16),
                DoorLock = true,
                StashLock = true,
            },
            
            [41] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.24, -768.12, 48.16),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -767.72, 48.16),
                Wardrobe = vector3(-1000.96, -766.72, 48.16),
                DoorLock = true,
                StashLock = true,
            },
            
            [42] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -775.76, 48.16),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -775.28, 48.16),
                Wardrobe = vector3(-1000.84, -774.32, 48.16),
                DoorLock = true,
                StashLock = true,
            },
            
            [43] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -731.12, 51.56),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.44, -730.56, 51.56),
                Wardrobe = vector3(-1000.84, -729.68, 51.56),
                DoorLock = true,
                StashLock = true,
            },
            
            [44] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.08, -738.48, 51.56),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -738.08, 51.56),
                Wardrobe = vector3(-1001.00, -737.16, 51.56),
                DoorLock = true,
                StashLock = true,
            },
            
            [45] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.12, -746.00, 51.56),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -745.52, 51.56),
                Wardrobe = vector3(-1000.88, -744.48, 51.56),
                DoorLock = true,
                StashLock = true,
            },
            
            [46] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -753.44, 51.56),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.28, -753.08, 51.56),
                Wardrobe = vector3(-1000.88, -752.12, 51.56),
                DoorLock = true,
                StashLock = true,
            },
            
            [47] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -760.84, 51.56),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -760.36, 51.56),
                Wardrobe = vector3(-1000.92, -759.32, 51.56),
                DoorLock = true,
                StashLock = true,
            },
            
            [48] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.24, -768.12, 51.56),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -767.72, 51.56),
                Wardrobe = vector3(-1000.96, -766.72, 51.56),
                DoorLock = true,
                StashLock = true,
            },
            
            [49] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -775.76, 51.56),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -775.28, 51.56),
                Wardrobe = vector3(-1000.84, -774.32, 51.56),
                DoorLock = true,
                StashLock = true,
            },
            
            [50] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -731.12, 54.88),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.44, -730.56, 54.88),
                Wardrobe = vector3(-1000.84, -729.68, 54.88),
                DoorLock = true,
                StashLock = true,
            },
            
            [51] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.08, -738.48, 54.88),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -738.08, 54.88),
                Wardrobe = vector3(-1001.00, -737.16, 54.88),
                DoorLock = true,
                StashLock = true,
            },
            
            [52] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.12, -746.00, 54.88),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -745.52, 54.88),
                Wardrobe = vector3(-1000.88, -744.48, 54.88),
                DoorLock = true,
                StashLock = true,
            },
            
            [53] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -753.44, 54.88),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.28, -753.08, 54.88),
                Wardrobe = vector3(-1000.88, -752.12, 54.88),
                DoorLock = true,
                StashLock = true,
            },
            
            [54] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -760.84, 54.88),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -760.36, 54.88),
                Wardrobe = vector3(-1000.92, -759.32, 54.88),
                DoorLock = true,
                StashLock = true,
            },
            
            [55] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.24, -768.12, 54.88),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -767.72, 54.88),
                Wardrobe = vector3(-1000.96, -766.72, 54.88),
                DoorLock = true,
                StashLock = true,
            },
            
            [56] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -775.76, 54.88),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -775.28, 54.88),
                Wardrobe = vector3(-1000.84, -774.32, 54.88),
                DoorLock = true,
                StashLock = true,
            },
            
            [57] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -731.12, 58.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.44, -730.56, 58.20),
                Wardrobe = vector3(-1000.84, -729.68, 58.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [58] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.08, -738.48, 58.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -738.08, 58.20),
                Wardrobe = vector3(-1001.00, -737.16, 58.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [59] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.12, -746.00, 58.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -745.52, 58.20),
                Wardrobe = vector3(-1000.88, -744.48, 58.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [60] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -753.44, 58.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.28, -753.08, 58.20),
                Wardrobe = vector3(-1000.88, -752.12, 58.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [61] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -760.84, 58.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -760.36, 58.20),
                Wardrobe = vector3(-1000.92, -759.32, 58.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [62] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.24, -768.12, 58.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -767.72, 58.20),
                Wardrobe = vector3(-1000.96, -766.72, 58.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [63] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -775.76, 58.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -775.28, 58.20),
                Wardrobe = vector3(-1000.84, -774.32, 58.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [64] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -731.12, 61.48),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.44, -730.56, 61.48),
                Wardrobe = vector3(-1000.84, -729.68, 61.48),
                DoorLock = true,
                StashLock = true,
            },
            
            [65] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.08, -738.48, 61.48),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -738.08, 61.48),
                Wardrobe = vector3(-1001.00, -737.16, 61.48),
                DoorLock = true,
                StashLock = true,
            },
            
            [66] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.12, -746.00, 61.48),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -745.52, 61.48),
                Wardrobe = vector3(-1000.88, -744.48, 61.48),
                DoorLock = true,
                StashLock = true,
            },
            
            [67] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -753.44, 61.48),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.28, -753.08, 61.48),
                Wardrobe = vector3(-1000.88, -752.12, 61.48),
                DoorLock = true,
                StashLock = true,
            },
            
            [68] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -760.84, 61.48),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -760.36, 61.48),
                Wardrobe = vector3(-1000.92, -759.32, 61.48),
                DoorLock = true,
                StashLock = true,
            },
            
            [69] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.24, -768.12, 61.48),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -767.72, 61.48),
                Wardrobe = vector3(-1000.96, -766.72, 61.48),
                DoorLock = true,
                StashLock = true,
            },
            
            [70] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -775.76, 61.48),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -775.28, 61.48),
                Wardrobe = vector3(-1000.84, -774.32, 61.48),
                DoorLock = true,
                StashLock = true,
            },
            
            [71] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -731.12, 64.80),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.44, -730.56, 64.80),
                Wardrobe = vector3(-1000.84, -729.68, 64.80),
                DoorLock = true,
                StashLock = true,
            },
            
            [72] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.08, -738.48, 64.80),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -738.08, 64.80),
                Wardrobe = vector3(-1000.88, -752.12, 41.52),
                DoorLock = true,
                StashLock = true,
            },
            
            [73] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.12, -746.00, 64.80),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -745.52, 64.80),
                Wardrobe = vector3(-1000.88, -744.48, 64.80),
                DoorLock = true,
                StashLock = true,
            },
            
            [74] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -753.44, 64.80),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.28, -753.08, 64.80),
                Wardrobe = vector3(-1000.88, -752.12, 64.80),
                DoorLock = true,
                StashLock = true,
            },
            
            [75] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -760.84, 64.80),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -760.36, 64.80),
                Wardrobe = vector3(-1000.92, -759.32, 64.80),
                DoorLock = true,
                StashLock = true,
            },
            
            [76] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.24, -768.12, 64.80),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -767.72, 64.80),
                Wardrobe = vector3(-1000.96, -766.72, 64.80),
                DoorLock = true,
                StashLock = true,
            },
            
            [77] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -775.76, 64.80),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -775.28, 64.80),
                Wardrobe = vector3(-1000.84, -774.32, 64.80),
                DoorLock = true,
                StashLock = true,
            },
            
            [78] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -731.12, 68.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.44, -730.56, 68.20),
                Wardrobe = vector3(-1000.84, -729.68, 68.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [79] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.08, -738.48, 68.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -738.08, 68.20),
                Wardrobe = vector3(-1001.00, -737.16, 68.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [80] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.12, -746.00, 68.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -745.52, 68.20),
                Wardrobe = vector3(-1000.88, -744.48, 68.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [81] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -753.44, 68.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.28, -753.08, 41.52),
                Wardrobe = vector3(-1000.88, -752.12, 41.52),
                DoorLock = true,
                StashLock = true,
            },
            
            [82] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -760.84, 68.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -760.36, 68.20),
                Wardrobe = vector3(-1000.92, -759.32, 68.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [83] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.24, -768.12, 68.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -767.72, 68.20),
                Wardrobe = vector3(-1000.96, -766.72, 68.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [84] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -775.76, 68.20),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -775.28, 68.20),
                Wardrobe = vector3(-1000.84, -774.32, 68.20),
                DoorLock = true,
                StashLock = true,
            },
            
            [85] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -731.12, 71.64),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.44, -730.56, 71.64),
                Wardrobe = vector3(-1000.84, -729.68, 71.64),
                DoorLock = true,
                StashLock = true,
            },
            
            [86] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.08, -738.48, 71.64),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -738.08, 71.64),
                Wardrobe = vector3(-1001.00, -737.16, 71.64),
                DoorLock = true,
                StashLock = true,
            },
            
            [87] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.12, -746.00, 71.64),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -745.52, 71.64),
                Wardrobe = vector3(-1000.88, -744.48, 71.64),
                DoorLock = true,
                StashLock = true,
            },
            
            [88] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -753.44, 71.64),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.28, -753.08, 71.64),
                Wardrobe = vector3(-1000.88, -752.12, 71.64),
                DoorLock = true,
                StashLock = true,
            },
            
            [89] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.16, -760.84, 71.64),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.32, -760.36, 71.64),
                Wardrobe = vector3(-1000.92, -759.32, 71.64),
                DoorLock = true,
                StashLock = true,
            },
            
            [90] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.24, -768.12, 71.64),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -767.72, 71.64),
                Wardrobe = vector3(-1000.96, -766.72, 71.64),
                DoorLock = true,
                StashLock = true,
            },
            
            [91] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1003.20, -775.76, 71.64),
                DoorHeading = 269.9034,
                StashCoord = vector3(-998.36, -775.28, 71.64),
                Wardrobe = vector3(-1000.84, -774.32, 71.64),
                DoorLock = true,
                StashLock = true,
            },
        }
    },


    [3] = {
        MotelName = "Beach Motel",
        DoorHash = GetHashKey("motels_door_r"),
        ReceptionNPC = "a_m_y_methhead_0",
        RecepsiyonName = "Recepsiyon Hakan",

        -- Blip Options
        BlipColor = 3,
        BlipSize = 0.6,
        BlipType = 475,

        -- Motel Payment
        MotelRentPayment = true, -- Motelin Fatura Kesmesini Ayarlar.
        MotelRentPrice = 100, -- Kesilecek Fatura Tutarı
        MotelPrice = 500, -- Motel Oda Ücreti

        -- Motel Coord Info
        ReceptionCoord = vector3(-1477.13, -674.49, 28.04),
        ReceptionNPCHeading = 40.08,

        MotelRooms = {
            [1] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1493.83, -668.39, 29.28),
                DoorHeading = 139.859,
                StashCoord = vector3(-1496.84, -672.36, 29.04),
                Wardrobe = vector3(-1495.80, -670.84, 29.04),
                DoorLock = true,
                StashLock = true,
            },

            [2] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1498.19, -664.87, 29.28),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1501.12, -668.52, 29.04),
                Wardrobe = vector3(-1500.12, -667.24, 29.04),
                DoorLock = true,
                StashLock = true,
            },

            [3] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1495.55, -661.57, 29.28),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1498.28, -657.80, 29.04),
                Wardrobe =  vector3(-1497.28, -659.00, 29.04),
                DoorLock = true,
                StashLock = true,
            },

            [4] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1490.95, -658.23, 29.28),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1493.72, -654.56, 29.00),
                Wardrobe =  vector3(-1492.68, -655.68, 29.00),
                DoorLock = true,
                StashLock = true,
            },

            [5] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1486.91, -655.42, 29.84),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1489.64, -651.60, 29.60),
                Wardrobe =  vector3(-1488.76, -652.76, 29.60),
                DoorLock = true,
                StashLock = true,
            },

            [6] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1482.37, -652.03, 29.84),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1485.20, -648.24, 29.60),
                Wardrobe =  vector3(-1484.12, -649.48, 29.60),
                DoorLock = true,
                StashLock = true,
            },

            [7] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1478.38, -649.10, 29.84),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1481.20, -645.44, 29.60),
                Wardrobe =  vector3(-1480.16, -646.64, 29.60),
                DoorLock = true,
                StashLock = true,
            },

            [8] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1473.79, -645.87, 29.84),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1476.64, -642.12, 29.60),
                Wardrobe =  vector3(-1475.68, -643.28, 29.60),
                DoorLock = true,
                StashLock = true,
            },

            [9] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1469.80, -642.88, 29.84),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1472.64, -639.20, 29.60),
                Wardrobe =  vector3(-1471.64, -640.32, 29.60),
                DoorLock = true,
                StashLock = true,
            },

            [10] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1465.23, -639.63, 29.84),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1467.96, -635.92, 29.60),
                Wardrobe =  vector3(-1467.04, -637.00, 29.60),
                DoorLock = true,
                StashLock = true,
            },

            [11] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1461.25, -640.73, 29.83),
                DoorHeading = 305.485,
                StashCoord = vector3(-1457.56, -638.00, 29.60),
                Wardrobe =  vector3(-1458.64, -638.92, 29.60),
                DoorLock = true,
                StashLock = true,
            },

            [12] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1452.28, -653.02, 29.84),
                DoorHeading = 305.485,
                StashCoord = vector3(-1448.68, -650.36, 29.60),
                Wardrobe =  vector3(-1449.72, -651.20, 29.60),
                DoorLock = true,
                StashLock = true,
            },

            [13] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1454.31, -655.95, 29.84),
                DoorHeading = 216.531,
                StashCoord = vector3(-1451.36, -659.68, 29.60),
                Wardrobe =  vector3(-1452.40, -658.48, 29.60),
                DoorLock = true,
                StashLock = true,
            },

            [14] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1458.89, -659.29, 29.84),
                DoorHeading = 216.531,
                StashCoord = vector3(-1456.00, -663.04, 29.60),
                Wardrobe =  vector3(-1457.00, -661.92, 29.60),
                DoorLock = true,
                StashLock = true,
            },

            [15] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1462.83, -662.19, 29.83),
                DoorHeading = 216.531,
                StashCoord = vector3(-1460.00, -665.88, 29.60),
                Wardrobe =  vector3(-1460.96, -664.76, 29.60),
                DoorLock = true,
                StashLock = true,
            },

            [16] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1467.41, -665.49, 29.85),
                DoorHeading = 216.531,
                StashCoord = vector3(-1464.60, -669.20, 29.60),
                Wardrobe =  vector3(-1465.56, -668.12, 29.60),
                DoorLock = true,
                StashLock = true,
            },

            [17] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1471.42, -668.47, 29.85),
                DoorHeading = 216.531,
                StashCoord = vector3(-1468.56, -672.16, 29.60),
                Wardrobe =  vector3(-1469.60, -670.92, 29.60),
                DoorLock = true,
                StashLock = true,
            },

            [18] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1489.91, -671.58, 33.64),
                DoorHeading = 139.859,
                StashCoord = vector3(-1492.92, -675.20, 33.40),
                Wardrobe =  vector3(-1492.00, -674.04, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [19] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1493.80, -668.44, 33.64),
                DoorHeading = 139.859,
                StashCoord = vector3(-1496.60, -672.12, 33.40),
                Wardrobe =  vector3(-1495.76, -670.92, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [20] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1498.12, -664.88, 33.64),
                DoorHeading = 139.859,
                StashCoord = vector3(-1500.96, -668.48, 33.40),
                Wardrobe =  vector3(-1500.20, -667.28, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [21] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1495.49, -661.55, 33.64),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1498.36, -657.84, 33.40),
                Wardrobe =  vector3(-1497.36, -659.00, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [22] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1490.87, -658.20, 33.64),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1493.76, -654.52, 33.40),
                Wardrobe =  vector3(-1492.76, -655.64, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [23] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1486.92, -655.33, 33.64),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1489.72, -651.68, 33.40),
                Wardrobe =  vector3(-1488.76, -652.76, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [24] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1482.25, -651.91, 33.64),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1485.16, -648.32, 33.40),
                Wardrobe =  vector3(-1484.16, -649.40, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [25] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1478.33, -649.12, 33.64),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1481.16, -645.44, 33.40),
                Wardrobe =  vector3(-1480.16, -646.60, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [26] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1473.82, -645.79, 33.64),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1476.56, -642.12, 33.40),
                Wardrobe =  vector3(-1475.60, -643.20, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [27] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1469.81, -642.91, 33.64),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1472.60, -639.24, 33.40),
                Wardrobe =  vector3(-1471.64, -640.36, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [28] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1465.23, -639.59, 33.64),
                DoorHeading = 35.4720,
                StashCoord = vector3(-1467.96, -635.96, 33.40),
                Wardrobe =  vector3(-1467.04, -637.04, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [29] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1461.16, -640.81, 33.64),
                DoorHeading = 305.485,
                StashCoord = vector3(-1457.56, -637.92, 33.40),
                Wardrobe =  vector3(-1458.64, -638.92, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [30] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1455.65, -648.42, 33.63),
                DoorHeading = 305.485,
                StashCoord = vector3(-1451.92, -645.60, 33.40),
                Wardrobe =  vector3(-1453.12, -646.64, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [31] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1452.27, -653.03, 33.63),
                DoorHeading = 305.485,
                StashCoord = vector3(-1448.64, -650.24, 33.40),
                Wardrobe =  vector3(-1449.76, -651.20, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [32] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1454.31, -656.03, 33.63),
                DoorHeading = 216.531,
                StashCoord = vector3(-1451.40, -659.56, 33.40),
                Wardrobe =  vector3(-1452.40, -658.52, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [33] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1458.86, -659.30, 33.63),
                DoorHeading = 216.531,
                StashCoord = vector3(-1456.04, -663.00, 33.40),
                Wardrobe =  vector3(-1457.08, -661.80, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [34] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1462.82, -662.19, 33.63),
                DoorHeading = 216.531,
                StashCoord = vector3(-1460.04, -665.80, 33.40),
                Wardrobe =  vector3(-1460.96, -664.76, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [35] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1467.45, -665.56, 33.63),
                DoorHeading = 216.531,
                StashCoord = vector3(-1464.52, -669.32, 33.40),
                Wardrobe =  vector3(-1465.56, -668.12, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [36] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1471.36, -668.33, 33.63),
                DoorHeading = 216.531,
                StashCoord = vector3(-1468.64, -672.00, 33.40),
                Wardrobe =  vector3(-1469.52, -671.08, 33.40),
                DoorLock = true,
                StashLock = true,
            },

            [37] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-1475.94, -671.77, 33.63),
                DoorHeading = 216.531,
                StashCoord = vector3(-1473.16, -675.44, 33.40),
                Wardrobe =  vector3(-1474.12, -674.32, 33.40),
                DoorLock = true,
                StashLock = true,
            },
        }
    },

    [4] = {
        MotelName = "Paleto Motel",
        DoorHash = -1563640173,
        ReceptionNPC = "a_m_y_methhead_0",
        RecepsiyonName = "Recepsiyon Emir",

        -- Blip Options
        BlipColor = 26,
        BlipSize = 0.6,
        BlipType = 475,

        -- Motel Payment
        MotelRentPayment = true, -- Motelin Fatura Kesmesini Ayarlar.
        MotelRentPrice = 100, -- Kesilecek Fatura Tutarı
        MotelPrice = 500, -- Motel Oda Ücreti

        -- Motel Coord Info
        ReceptionCoord = vector3(-695.5, 5802.22, 16.33),
        ReceptionNPCHeading = 64.88,

        MotelRooms = {
            [1] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-681.91, 5770.73, 17.51),
                DoorHeading = 64.99101,
                StashCoord = vector3(-676.96, 5771.06, 17.51),
                Wardrobe = vector3(-677.74, 5768.48, 17.51),
                DoorLock = true,
                StashLock = true,
            },

            [2] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-683.71, 5766.86, 17.51),
                DoorHeading = 64.99101,
                StashCoord = vector3(-678.73, 5767.12, 17.51),
                Wardrobe = vector3(-679.69, 5764.64, 17.51),
                DoorLock = true,
                StashLock = true,
            },

            [3] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-685.39, 5762.96, 17.51),
                DoorHeading = 64.99101,
                StashCoord = vector3(-680.59, 5763.21, 17.51),
                Wardrobe = vector3(-681.39, 5760.65, 17.51),
                DoorLock = true,
                StashLock = true,
            },

            [4] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-687.25, 5758.97, 17.51),
                DoorHeading = 64.99101,
                StashCoord = vector3(-682.36, 5759.26, 17.51),
                Wardrobe = vector3(-683.29, 5756.75, 17.51),
                DoorLock = true,
                StashLock = true,
            },

            [5] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-690.28, 5759.47, 17.51),
                DoorHeading = 334.9110,
                StashCoord = vector3(-690.07, 5754.58, 17.51),
                Wardrobe = vector3(-692.47, 5755.33, 17.51),
                DoorLock = true,
                StashLock = true,
            },

            [6] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-694.20, 5761.23, 17.51),
                DoorHeading = 334.9110,
                StashCoord = vector3(-693.91, 5756.43, 17.51),
                Wardrobe = vector3(-696.38, 5757.17, 17.51),
                DoorLock = true,
                StashLock = true,
            },

            [7] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-698.19, 5763.02, 17.51),
                DoorHeading = 334.9110,
                StashCoord = vector3(-697.87, 5758.24, 17.51),
                Wardrobe = vector3(-700.33, 5759.17, 17.51),
                DoorLock = true,
                StashLock = true,
            },

            [8] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-702.01, 5764.83, 17.51),
                DoorHeading = 334.9110,
                StashCoord = vector3(-701.76, 5760.03, 17.51),
                Wardrobe = vector3(-704.23, 5761.01, 17.51),
                DoorLock = true,
                StashLock = true,
            },

            [9] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-705.99, 5766.68, 17.51),
                DoorHeading = 334.9110,
                StashCoord = vector3(-705.69, 5761.89, 17.51),
                Wardrobe = vector3(-708.14, 5762.70, 17.51),
                DoorLock = true,
                StashLock = true,
            },

            [10] = {
                Owner = nil,
                KeyInfo = nil,
                DoorCoord = vector3(-709.96, 5768.47, 17.51),
                DoorHeading = 334.9110,
                StashCoord = vector3(-709.61, 5763.70, 17.51),
                Wardrobe = vector3(-712.09, 5764.63, 17.51),
                DoorLock = true,
                StashLock = true,
            }
        }
    }


    -- [5] = {
    --     MotelName = "Paleto Motel",
    --     DoorHash = -1635579193,
    --     ReceptionNPC = "a_m_y_methhead_0",
    --     RecepsiyonName = "Recepsiyon Emir",

    --     -- Blip Options
    --     BlipColor = 26,
    --     BlipSize = 0.6,
    --     BlipType = 475,

    --     -- Motel Payment
    --     MotelRentPayment = true, -- Motelin Fatura Kesmesini Ayarlar.
    --     MotelRentPrice = 100, -- Kesilecek Fatura Tutarı
    --     MotelPrice = 500, -- Motel Oda Ücreti

    --     -- Motel Coord Info
    --     ReceptionCoord = vector3(-695.5, 5802.22, 16.33),
    --     ReceptionNPCHeading = 64.88,

    --     MotelRooms = {
    --         [1] = {
    --             Owner = nil,
    --             KeyInfo = nil,
    --             DoorCoord = vector3(1142.46, 2663.96, 38.15),
    --             DoorHeading = 89.9819,
    --             StashCoord = vector3(1147.84, 2664.09, 38.15),
    --             Wardrobe = vector3(1149.79, 2663.63, 38.15),
    --             DoorLock = true,
    --             StashLock = true,
    --         },

    --         [2] = {
    --             Owner = nil,
    --             KeyInfo = nil,
    --             DoorCoord = vector3(1142.44, 2651.15, 38.15),
    --             DoorHeading = 89.9819,
    --             StashCoord = vector3(1147.88, 2651.23, 38.15),
    --             Wardrobe = vector3(1149.77, 2650.78, 38.15),
    --             DoorLock = true,
    --             StashLock = true,
    --         },

    --         [3] = {
    --             Owner = nil,
    --             KeyInfo = nil,
    --             DoorCoord = vector3(1142.45, 2643.56, 38.15),
    --             DoorHeading = 89.9819,
    --             StashCoord = vector3(1147.92, 2643.79, 38.15),
    --             Wardrobe = vector3(1149.77, 2643.34, 38.15),
    --             DoorLock = true,
    --             StashLock = true,
    --         },

    --         [4] = {
    --             Owner = nil,
    --             KeyInfo = nil,
    --             DoorCoord = vector3(1141.10, 2641.59, 38.15),
    --             DoorHeading = 359.246,
    --             StashCoord = vector3(1141.30, 2636.12, 38.15),
    --             Wardrobe = vector3(1140.83, 2634.34, 38.15),
    --             DoorLock = true,
    --             StashLock = true,
    --         },

    --         [5] = {
    --             Owner = nil,
    --             KeyInfo = nil,
    --             DoorCoord = vector3(1132.73, 2641.60, 38.15),
    --             DoorHeading = 359.246,
    --             StashCoord = vector3(1132.87, 2636.04, 38.15),
    --             Wardrobe = vector3(1132.36, 2634.22, 38.15),
    --             DoorLock = true,
    --             StashLock = true,
    --         },

    --         [6] = {
    --             Owner = nil,
    --             KeyInfo = nil,
    --             DoorCoord = vector3(1121.53, 2641.51, 38.15),
    --             DoorHeading = 359.246,
    --             StashCoord = vector3(1121.58, 2636.01, 38.15),
    --             Wardrobe = vector3(1121.08, 2634.22, 38.15),
    --             DoorLock = true,
    --             StashLock = true,
    --         },

    --         [7] = {
    --             Owner = nil,
    --             KeyInfo = nil,
    --             DoorCoord = vector3(1114.79, 2641.52, 38.15),
    --             DoorHeading = 359.246,
    --             StashCoord = vector3(1114.85, 2636.13, 38.15),
    --             Wardrobe = vector3(1114.36, 2634.30, 38.15),
    --             DoorLock = true,
    --             StashLock = true,
    --         },

    --         [8] = {
    --             Owner = nil,
    --             KeyInfo = nil,
    --             DoorCoord = vector3(1107.22, 2641.54, 38.15),
    --             DoorHeading = 359.246,
    --             StashCoord = vector3(1107.32, 2636.08, 38.15),
    --             Wardrobe = vector3(1106.84, 2634.21, 38.15),
    --             DoorLock = true,
    --             StashLock = true,
    --         },

    --         [9] = {
    --             Owner = nil,
    --             KeyInfo = nil,
    --             DoorCoord = vector3(1106.05, 2649.02, 38.15),
    --             DoorHeading = 359.246,
    --             StashCoord = vector3(1100.47, 2648.89, 38.15),
    --             Wardrobe = vector3(1098.79, 2649.39, 38.15),
    --             DoorLock = true,
    --             StashLock = true,
    --         }
    --     }
    -- }
}
