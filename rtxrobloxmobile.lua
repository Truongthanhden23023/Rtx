-- Create a light source part (simulating a ray source)
local lightSource = Instance.new("Part")
lightSource.Size = Vector3.new(1, 1, 1)
lightSource.Position = Vector3.new(0, 10, 0)  -- Position of the light source
lightSource.Anchored = true
lightSource.BrickColor = BrickColor.new("Bright yellow")
lightSource.Parent = workspace

-- Ray direction (simulating the path of the ray)
local rayStart = lightSource.Position
local rayDirection = Vector3.new(0, -1, 0)  -- Direction downwards (y-axis)

-- Function to cast the ray
local function castRay()
    -- Create the ray (direction * range of 100 studs)
    local ray = Ray.new(rayStart, rayDirection * 100)
    
    -- Raycast and detect what it hits
    local hitPart, hitPosition = workspace:FindPartOnRay(ray, lightSource)

    if hitPart then
        -- Simulate the light hitting the object (change the part color on hit)
        hitPart.BrickColor = BrickColor.new("Bright blue")  -- Color when light hits it

        -- Optionally, add a visual marker where the ray hits
        local hitMarker = Instance.new("Part")
        hitMarker.Size = Vector3.new(1, 1, 1)
        hitMarker.Position = hitPosition
        hitMarker.Anchored = true
        hitMarker.Color = Color3.fromRGB(255, 255, 255)  -- White hit marker
        hitMarker.Parent = workspace
    end
end

-- Call the raycasting function repeatedly
while true do
    castRay()  -- Cast the ray and process the result
    wait(0.1)  -- Wait before casting again (simulate continuous raycasting)
end
