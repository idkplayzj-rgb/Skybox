print("SKY SCRIPT LOADED")

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Loaded",
    Text = "Sky script executed",
    Duration = 5
})

local Lighting = game:GetService("Lighting")

for _, v in pairs(Lighting:GetChildren()) do
    if v:IsA("Sky") then
        v:Destroy()
    end
end

local sky = Instance.new("Sky")

local img = "https://raw.githubusercontent.com/idkplayzj-rgb/Skybox/main/how-does-a-supermassive-blackhole-form-jwst-found-a-v0-0oo74c29endf1.jpeg"

sky.SkyboxBk = img
sky.SkyboxDn = img
sky.SkyboxFt = img
sky.SkyboxLf = img
sky.SkyboxRt = img
sky.SkyboxUp = img

sky.Parent = Lighting
