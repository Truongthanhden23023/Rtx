local lighting = game:GetService("Lighting")
local players = game:GetService("Players")

-- 🌞 Cài đặt ánh sáng đẹp cho hiệu ứng phản chiếu
lighting.GlobalShadows = true
lighting.Brightness = 5  -- Tăng độ sáng
lighting.Ambient = Color3.fromRGB(60, 60, 60)  -- Tăng chiều sâu bóng
lighting.OutdoorAmbient = Color3.fromRGB(180, 180, 180)
lighting.Technology = Enum.Technology.Future  -- Ánh sáng Future (tốt nhất cho game)

-- ✨ Thêm hiệu ứng ánh sáng (Bloom, Sun Rays)
local bloom = Instance.new("BloomEffect")
bloom.Intensity = 0.6
bloom.Size = 25
bloom.Threshold = 0.8
bloom.Parent = lighting

local sunRays = Instance.new("SunRaysEffect")
sunRays.Intensity = 0.3
sunRays.Spread = 1.5
sunRays.Parent = lighting

-- 🎨 Cài đặt hiệu ứng ánh sáng nâng cao (ColorCorrection)
local colorCorrection = Instance.new("ColorCorrectionEffect")
colorCorrection.Brightness = 0.1
colorCorrection.Contrast = 0.4
colorCorrection.Saturation = 0.5
colorCorrection.TintColor = Color3.fromRGB(255, 230, 200)  -- Sáng hơn và ấm hơn
colorCorrection.Parent = lighting

-- 📦 Tạo nền phản chiếu
local part = Instance.new("Part")
part.Size = Vector3.new(50, 1, 50)  -- Kích thước nền
part.Position = Vector3.new(0, 0.5, 0)  -- Vị trí nền
part.Anchored = true
part.Material = Enum.Material.SmoothPlastic  -- Chất liệu giúp phản chiếu ánh sáng rõ hơn
part.Reflectance = 0.6  -- Độ phản chiếu
part.Parent = game.Workspace

-- 💎 Thêm hiệu ứng bóng đẹp cho nền
local shadow = Instance.new("ShadowEffect")
shadow.Enabled = true
shadow.Parent = part

-- 👤 Thêm bóng cho nhân vật
players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        -- Bật bóng cho nhân vật
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("MeshPart") or part:IsA("Part") then
                -- Thêm bóng cho từng phần của nhân vật
                part.CastShadow = true
            end
        end
    end)
end)

print("✨ Nền siêu đẹp với bóng nhân vật và ánh sáng phản chiếu đã được tạo!")
