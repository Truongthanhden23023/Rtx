local lighting = game:GetService("Lighting")

-- Kích hoạt bóng đổ toàn cảnh
lighting.GlobalShadows = true
lighting.Brightness = 3.5 -- Tăng độ sáng
lighting.Ambient = Color3.fromRGB(50, 50, 50) -- Cải thiện độ tương phản
lighting.OutdoorAmbient = Color3.fromRGB(100, 100, 100)

-- Bật công nghệ ánh sáng Future để tối ưu đồ họa
lighting.Technology = Enum.Technology.Future

-- Hiệu ứng phản chiếu môi trường
lighting.EnvironmentSpecularScale = 1
lighting.EnvironmentDiffuseScale = 1

-- Cài đặt hiệu ứng sương mù (Fog) tạo cảm giác chân thực hơn
lighting.FogStart = 100
lighting.FogEnd = 500
lighting.FogColor = Color3.fromRGB(180, 180, 200)

-- Hiệu ứng Bloom (Tăng cường ánh sáng chói)
local bloom = Instance.new("BloomEffect")
bloom.Intensity = 0.5 -- Độ sáng của hiệu ứng
bloom.Size = 25 -- Kích thước vùng sáng
bloom.Threshold = 0.8 -- Ngưỡng kích hoạt ánh sáng
bloom.Parent = lighting

-- Hiệu ứng Sun Rays (Giả lập tia sáng mặt trời)
local sunRays = Instance.new("SunRaysEffect")
sunRays.Intensity = 0.2 -- Cường độ tia sáng
sunRays.Spread = 1 -- Mức độ lan tỏa
sunRays.Parent = lighting

-- Hiệu ứng Depth of Field (Mờ xa gần)
local dof = Instance.new("DepthOfFieldEffect")
dof.FarIntensity = 0.3 -- Độ mờ xa
dof.FocusDistance = 200 -- Khoảng cách tiêu điểm
dof.NearIntensity = 0.1 -- Độ mờ gần
dof.Parent = lighting

print("RTX giả lập đã được kích hoạt!")
