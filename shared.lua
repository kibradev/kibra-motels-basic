KIBRA = {}

-- Billing
KIBRA.BillBlock = true 
KIBRA.InvoiceAmount = 1000

KIBRA.MotelKeyData = false

KIBRA.StashLockSystem = true
KIBRA.StashLockPrice = 50

-- Copy Key
KIBRA.CopyKeyPrice = 500
KIBRA.CopyKeyLimit = 3

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
        MotelRentPayment = true,
        MotelRentPrice = 100,
        MotelRentTime = 150000, 
        MotelPrice = 500,

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
            }
        }

    }
}