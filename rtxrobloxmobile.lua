local lighting = game:GetService("Lighting")
local players = game:GetService("Players")

-- 🌞 Cài đặt ánh sáng đẹp với hiệu ứng ánh sáng nâng cao
lighting.GlobalShadows = true
lighting.Brightness = 7  -- Tăng độ sáng cho hiệu ứng mạnh mẽ hơn
lighting.Ambient = Color3.fromRGB(70, 70, 70)  -- Tăng chiều sâu và độ tối cho các bóng đổ
lighting.OutdoorAmbient = Color3.fromRGB(200, 200, 200)
lighting.Technology = Enum.Technology.Future  -- Sử dụng công nghệ ánh sáng đẹp nhất trong Roblox

-- ✨ Thêm hiệu ứng ánh sáng (Bloom, Sun Rays)
local bloom = Instance.new("BloomEffect")
bloom.Intensity = 0.8  -- Tăng độ mạnh của hiệu ứng Bloom
bloom.Size = 40  -- Tăng kích thước của Bloom để ánh sáng mờ đi đẹp hơn
bloom.Threshold = 0.6  -- Thêm độ sáng cho hiệu ứng Bloom
bloom.Parent = lighting

local sunRays = Instance.new("SunRaysEffect")
sunRays.Intensity = 0.5  -- Tăng độ mạnh của hiệu ứng Sun Rays
sunRays.Spread = 1.8  -- Tăng độ lan tỏa của ánh sáng Mặt trời
sunRays.Parent = lighting

-- 🎨 Cài đặt hiệu ứng ánh sáng nâng cao (ColorCorrection)
local colorCorrection = Instance.new("ColorCorrectionEffect")
colorCorrection.Brightness = 0.2
colorCorrection.Contrast = 0.6  -- Tăng độ tương phản để ánh sáng nổi bật hơn
colorCorrection.Saturation = 0.6  -- Tăng độ bão hòa giúp cảnh vật sống động hơn
colorCorrection.TintColor = Color3.fromRGB(255, 240, 200)  -- Ánh sáng ấm và đẹp mắt
colorCorrection.Parent = lighting

-- 📦 Tạo nền nước phản chiếu đẹp
local waterPart = Instance.new("Part")
waterPart.Size = Vector3.new(50, 1, 50)  -- Kích thước nền nước
waterPart.Position = Vector3.new(0, 0.5, 0)  -- Vị trí nền
waterPart.Anchored = true
waterPart.Material = Enum.Material.SmoothPlastic  -- Chất liệu phản chiếu ánh sáng
waterPart.Reflectance = 0.8  -- Độ phản chiếu mạnh mẽ
waterPart.Parent = game.Workspace

-- 🌊 Thêm hiệu ứng nước
local water = Instance.new("WaterMaterial")
water.WaveSize = 0.4  -- Kích thước sóng nước
water.WaveSpeed = 0.1  -- Tốc độ sóng nước
water.Parent = waterPart

-- 💎 Thêm hiệu ứng bóng đẹp cho nền nước
local shadow = Instance.new("ShadowEffect")
shadow.Enabled = true
shadow.Parent = waterPart

-- 👤 Thêm bóng cho nhân vật và các phần của nó
players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        -- Bật bóng cho tất cả các phần của nhân vật
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("MeshPart") or part:IsA("Part") then
                -- Thêm bóng cho từng phần của nhân vật
                part.CastShadow = true
                part.Material = Enum.Material.SmoothPlastic  -- Chất liệu bóng mượt cho nhân vật
            end
        end
    end)
end)

-- 🌈 Thêm hiệu ứng ánh sáng phức tạp hơn (Exposure)
local exposure = Instance.new("ExposureEffect")
exposure.Enabled = true
exposure.Parent = lighting

print("✨ Nền nước siêu đẹp với bóng nhân vật, ánh sáng phản chiếu và hiệu ứng sóng nước đã được tạo!")
