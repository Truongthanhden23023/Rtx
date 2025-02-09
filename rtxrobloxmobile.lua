-- Create a new part to simulate reflection
local part = Instance.new("Part")
part.Size = Vector3.new(10, 1, 10)
part.Position = Vector3.new(0, 0, 0)
part.Anchored = true
part.BrickColor = BrickColor.new("Bright blue")
part.Parent = workspace

-- Create a point light to simulate lighting
local pointLight = Instance.new("PointLight")
pointLight.Parent = part
pointLight.Color = Color3.fromRGB(255, 255, 255)  -- White light
pointLight.Range = 30
pointLight.Brightness = 2

-- Create a reflective surface (simulated RTX effect)
local reflectiveSurface = Instance.new("Part")
reflectiveSurface.Size = Vector3.new(10, 1, 10)
reflectiveSurface.Position = Vector3.new(0, -5, 0)
reflectiveSurface.Anchored = true
reflectiveSurface.Material = Enum.Material.SmoothPlastic
reflectiveSurface.Reflectance = 0.5  -- This simulates some reflection
reflectiveSurface.BrickColor = BrickColor.new("Bright red")
reflectiveSurface.Parent = workspace

-- Optional: Adjust camera properties to enhance the lighting effect
local camera = game.Workspace.CurrentCamera
camera.FieldOfView = 70
