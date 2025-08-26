local msg = Instance.new("Message",workspace)
msg.Text = "欢迎使用染春脚本"
wait(1.8)
msg:Destroy()

local msg = Instance.new("Message",workspace)
msg.Text = "作者名字"
wait(1.8)
msg:Destroy()

local msg = Instance.new("Message",workspace)
msg.Text = "XIAOXU666"
wait(1.8)
msg:Destroy()

local msg = Instance.new("Message",workspace)
msg.Text = "脚本群号"
wait(1.8)
msg:Destroy()

local msg = Instance.new("Message",workspace)
msg.Text = "1057418314"
wait(1.8)
msg:Destroy()

local msg = Instance.new("Message",workspace)
msg.Text = "祝你玩得开心，玩得愉快"
wait(1.8)
msg:Destroy()

if getgenv().ED_AntiKick then
	return
end

getgenv().ED_AntiKick = {
	Enabled = true, -- Set to false if you want to disable the Anti-Kick.
	SendNotifications = true, -- Set to true if you want to get notified for every event
	CheckCaller = true -- Set to true if you want to disable kicking by other executed scripts
}
local dropdown = {}
local playernamedied = ""

for i, player in pairs(game.Players:GetPlayers()) do
    dropdown[i] = player.Name
end

function Notify(top, text, ico, dur)
  game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = top,
    Text = text,
    Icon = ico,
    Duration = dur,
  })
end

local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local FpsGui = Instance.new("ScreenGui") local FpsXS = Instance.new("TextLabel") FpsGui.Name = "FPSGui" FpsGui.ResetOnSpawn = false FpsGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling FpsXS.Name = "FpsXS" FpsXS.Size = UDim2.new(0, 100, 0, 50) FpsXS.Position = UDim2.new(0, 10, 0, 10) FpsXS.BackgroundTransparency = 1 FpsXS.Font = Enum.Font.SourceSansBold FpsXS.Text = "帧率: 0" FpsXS.TextSize = 20 FpsXS.TextColor3 = Color3.new(1, 1, 1) FpsXS.Parent = FpsGui function updateFpsXS() local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait()) FpsXS.Text = "帧率: " .. fps end game:GetService("RunService").RenderStepped:Connect(updateFpsXS) FpsGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Lengui = loadstring(game:HttpGet("https://raw.githubusercontent.com/LENG8123/UI/refs/heads/main/%E5%86%B7library.lua"))()     
local win = RANgui:new("染春脚本")
--
local UITab1 = win:Tab("『信息』",'16060333448')

local about = UITab1:section("『RC MFZD』",true)

about:Label("染春脚本")
about:Label("作者QQ:3253549307")
about:Label("QQ群:1057418314")
about:Label("作者:小徐,霖霖")
about:Label("进群发最新脚本")
about:Label("脚本持续更新中")
about:Label("帮助者:霖霖")
about:Label("小皮是窝一辈子的恩人")
about:Label("脚本懒得优化")
about:Label("欢迎使用")

local UITab2 = win:Tab("『好人榜』",'16060333448')

local about = UITab2:section("『RC MFZD』",true)

about:Label("NO.1:霖霖")
about:Label("NO.2:小皮")
about:Label("NO.3:中透明")
about:Label("NO.4:以实玛利")
about:Label("NO.5:神不如风")
about:Label("NO.6:小透明")
about:Label("NO.7ikun")
about:Label("NO.8Utopia")
about:Label("NO9.晚风")

local UITab3 = win:Tab("『出生榜』",'16060333448')

local about = UITab3:section("『RC MFZD』",true)
    
about:Label("NO.1:SANA")
about:Label("NO.2:枷锁")
about:Label("NO.3:辞")
about:Label("NO.4:敬勤")

local UITab4 = win:Tab("『加入服务器』",'16060333448')

local about = UITab4:section("『RC MFZD』",true)

about:Button("加入极速传奇",function()
local game_id = 3101667897
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入鲨口生求2",function()
local game_id = 8908228901
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入监狱人生",function()
local game_id = 155615604
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入忍者传奇",function()
local game_id = 3956818381
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入Break in (故事)",function()
local game_id = 1318971886
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入自然灾害生存游戏",function()
local game_id = 189707
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入力量传奇",function()
local game_id = 3623096087
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入餐厅大亨2",function()
local game_id = 3398014311
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)
    
local UITab5 = win:Tab("『复制染春脚本群系列』",'16060333448')

local about = UITab5:section("『RC MFZD』",true)

    about:Button("点我复制染春脚本交流群",function()
    setclipboard("724814074")
end)

    about:Button("点我复制2群",function()
    setclipboard("1057418314")
end)

about:Button("点我复制脚本群",function()
    setclipboard("892140244")
end)

    about:Button("点我复制作者QQ",function()
    setclipboard("3253549307")
end)

local UITab6 = win:Tab("『通用』",'16060333448')

local about = UITab6:section("『通用』",true)

local Players = about:Dropdown("选择玩家", 'Dropdown', dropdown, function(v)
    playernamedied = v
end)

game.Players.ChildAdded:Connect(function(player)
    dropdown[player.UserId] = player.Name
    Players:AddOption(player.Name)
end)

game.Players.ChildRemoved:Connect(function(player)
    Players:RemoveOption(player.Name)
    for k, v in pairs(dropdown) do
        if v == player.Name then
            dropdown[k] = nil
        end
    end
end)

about:Button("传送到玩家旁边", function()
    local HumRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
    local tp_player = game.Players:FindFirstChild(playernamedied)
    if tp_player and tp_player.Character and tp_player.Character.HumanoidRootPart then
        HumRoot.CFrame = tp_player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
        Notify("染春", "已经传送到玩家身边", "rbxassetid://", 5)
    else
        Notify("染春", "无法传送 玩家已消失", "rbxassetid://", 5)
    end
end)

about:Button("把玩家传送过来", function()
    local HumRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
    local tp_player = game.Players:FindFirstChild(playernamedied)
    if tp_player and tp_player.Character and tp_player.Character.HumanoidRootPart then
        tp_player.Character.HumanoidRootPart.CFrame = HumRoot.CFrame + Vector3.new(0, 3, 0)
        Notify("染春", "已传送过来", "rbxassetid://", 5)
    else
        Notify("染春", "无法传送 玩家已消失", "rbxassetid://", 5)
    end
end)

about:Toggle("查看玩家", 'Toggleflag', false, function(state)
    if state then
        game:GetService('Workspace').CurrentCamera.CameraSubject =
            game:GetService('Players'):FindFirstChild(playernamedied).Character.Humanoid
            Notify("染春", "已开启", "rbxassetid://", 5)
    else
        Notify("染春", "已关闭", "rbxassetid://", 5)
        local lp = game.Players.LocalPlayer
        game:GetService('Workspace').CurrentCamera.CameraSubject = lp.Character.Humanoid
    end
end)

about:Button("玩家加入游戏提示",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
end)

about:Toggle("脚本框架变小一点", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)
    about:Button("关闭脚本",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
    end)
    
about:Toggle("移除UI辉光", "DHG", false, function(DHG)
    if DHG then
        game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = false
    else
        game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = true
    end
end)

local about = UITab6:section("『自瞄与子追』",true)

about:Button("自瞄（死亡消失）",function()
loadstring(game:HttpGet("https://pastefy.app/ZYMlyhhz/raw",true))()
end)

about:Button("宙斯自瞄",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20Aimbot.lua"))()
end)

about:Button("英文自瞄",function()
loadstring(game:HttpGet("https://rentry.co/n55gmtpi/raw", true))()
end)

about:Button("自瞄50",function()
loadstring(game:HttpGet("https://pastefy.app/b3uXjRF6/raw",true))()
end)

about:Button("自瞄100",function()
loadstring(game:HttpGet("https://pastefy.app/tQrd2r0L/raw",true))()
end)

about:Button("自瞄150",function()
loadstring(game:HttpGet("https://pastefy.app/UOQWFvGp/raw",true))()
end)

about:Button("自瞄200",function()
loadstring(game:HttpGet("https://pastefy.app/b5CuDuer/raw",true))()
end)

about:Button("自瞄250",function()
loadstring(game:HttpGet("https://pastefy.app/p2huH7eF/raw",true))()
end)

about:Button("自瞄300",function()
loadstring(game:HttpGet("https://pastefy.app/nIyVhrvV/raw",true))()
end)

about:Button("自瞄350",function()
loadstring(game:HttpGet("https://pastefy.app/pnjKHMvV/raw",true))()
end)

about:Button("自瞄400",function()
loadstring(game:HttpGet("https://pastefy.app/LQuP7sjj/raw",true))()
end)

about:Button("自瞄600",function()
loadstring(game:HttpGet("https://pastefy.app/WmcEe2HB/raw",true))()
end)

about:Button("自瞄全屏",function()
loadstring(game:HttpGet("https://pastefy.app/n5LhGGgf/raw",true))()
end)

about:Button("阿尔子追",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/sgbs/main/%E4%B8%81%E4%B8%81%20%E6%B1%89%E5%8C%96%E8%87%AA%E7%9E%84.txt"))()
end)

about:Button("俄州子追",function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/ClasiniZukov/e7547e7b48fa90d10eb7f85bd3569147/raw/f95cd3561a3bb3ac6172a14eb74233625b52e757/gistfile1.txt"))()
end)

local about = UITab6:section("『范围』",true)

about:Textbox("自定义范围!", "HitBox", "输入", function(Value)
   _G.HeadSize = Value
    _G.Disabled = true 
   game:GetService('RunService').RenderStepped:connect(function()
    if _G.Disabled then
    for i,v in next, game:GetService('Players'):GetPlayers() do
    if v.Name ~= game:GetService('Players').LocalPlayer.Name then 
    pcall(function()
    v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) 
   v.Character.HumanoidRootPart.Transparency = 0.7 
   v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
    v.Character.HumanoidRootPart.Material = "Neon"
    v.Character.HumanoidRootPart.CanCollide = false
    end)
    end 
   end 
   end
    end)
end)

about:Button("普通范围",function()
loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
end)

about:Button("中等范围",function()
loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
end)

about:Button("全图范围",function()
loadstring(game:HttpGet("https://pastebin.com/raw/KKY9EpZU"))()
end)

about:Button("终极范围",function()
loadstring(game:HttpGet("https://pastebin.com/raw/CAQ9x4A7"))()
end)

local about = UITab6:section("『飞』",true)

about:Button("飞车",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/-V2.0/refs/heads/main/%E5%86%B7%E9%A3%9E%E8%BD%A6%E6%BA%90%E7%A0%81.txt"))()
end)

about:Button("飞行v1",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\90\66\122\99\84\109\49\102\34\41\41\40\41\10")()
end)

about:Button("飞行V3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/-V3.0/refs/heads/main/%E9%A3%9E%E8%A1%8C%E8%84%9A%E6%9C%ACV3(%E5%85%A8%E6%B8%B8%E6%88%8F%E9%80%9A%E7%94%A8)%20(1).txt"))()
end)

local about = UITab6:section("『剩下懒得排了』",true)

about:Button("反挂机v2",function()
  loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
end)
    
about:Button("获得管理员权限",function()
loadstring(game:HttpGet("https://pastebin.com/raw/sZpgTVas"))()
end)

about:Button("死亡笔记",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()
end)

about:Button("汉化穿墙",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/OtherScript/main/Noclip"))()
end)

about:Button("透视",function()  
    _G.FriendColor = Color3.fromRGB(0, 0, 255)
        local function ApplyESP(v)
       if v.Character and v.Character:FindFirstChildOfClass'Humanoid' then
           v.Character.Humanoid.NameDisplayDistance = 9e9
           v.Character.Humanoid.NameOcclusion = "NoOcclusion"
           v.Character.Humanoid.HealthDisplayDistance = 9e9
           v.Character.Humanoid.HealthDisplayType = "AlwaysOn"
           v.Character.Humanoid.Health = v.Character.Humanoid.Health -- triggers changed
       end
    end
    for i,v in pairs(game.Players:GetPlayers()) do
       ApplyESP(v)
       v.CharacterAdded:Connect(function()
           task.wait(0.33)
           ApplyESP(v)
       end)
    end
    
    game.Players.PlayerAdded:Connect(function(v)
       ApplyESP(v)
       v.CharacterAdded:Connect(function()
           task.wait(0.33)
           ApplyESP(v)
       end)
    end)
    
        local Players = game:GetService("Players"):GetChildren()
    local RunService = game:GetService("RunService")
    local highlight = Instance.new("Highlight")
    highlight.Name = "Highlight"
    
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
        end
    end
    
    game.Players.PlayerAdded:Connect(function(player)
        repeat wait() until player.Character
        if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = player.Character
            highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.Name = "Highlight"
        end
    end)
    
    game.Players.PlayerRemoving:Connect(function(playerRemoved)
        playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
    end)
    
    RunService.Heartbeat:Connect(function()
        for i, v in pairs(Players) do
            repeat wait() until v.Character
            if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
                local highlightClone = highlight:Clone()
                highlightClone.Adornee = v.Character
                highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
                highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlightClone.Name = "Highlight"
                task.wait()
            end
    end
    end)
    end)

about:Toggle("夜视","Toggle",false,function(Value)
if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end
end)

about:Toggle("自动互动", "Auto Interact", false, function(state)
        if state then
            autoInteract = true
            while autoInteract do
                for _, descendant in pairs(workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        fireproximityprompt(descendant)
                    end
                end
                task.wait(0.25) -- Adjust the wait time as needed
            end
        else
            autoInteract = false
        end
    end)

about:Toggle("无限跳","Toggle",false,function(Value)
        Jump = Value
        game.UserInputService.JumpRequest:Connect(function()
            if Jump then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
            end
        end)
    end)

about:Slider("步行速度!", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(Speed)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed end end)
end)

about:Slider("跳跃高度!", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 400, false, function(Jump)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump end end)
end)

about:Button("甩人",function()
loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)
about:Slider('设置重力', 'Sliderflag', 196.2, 196.2, 1000,false, function(Value)
        game.Workspace.Gravity = Value
    end)
    
about:Button("替身",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()
end)

about:Button("爬墙",function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)

about:Button("iw指令", function()
  loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

about:Button("工具挂",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/StandAwekening.lua"))()
end)

about:Button("铁拳",function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
end)

about:Toggle("ESP 显示名字", "AMG", ENABLED, function(enabled)
    if enabled then ENABLED = true for _, player in ipairs(Players:GetPlayers()) do onPlayerAdded(player) end Players.PlayerAdded:Connect(onPlayerAdded) Players.PlayerRemoving:Connect(onPlayerRemoving) local localPlayer = Players.LocalPlayer if localPlayer and localPlayer.Character then for _, player in ipairs(Players:GetPlayers()) do if player.Character then createNameLabel(player) end end end RunService.Heartbeat:Connect(function() if ENABLED then for _, player in ipairs(Players:GetPlayers()) do if player.Character then createNameLabel(player) end end end end) else ENABLED = false for _, player in ipairs(Players:GetPlayers()) do onPlayerRemoving(player) end RunService:UnbindFromRenderStep("move") end
end)

about:Toggle("Circle ESP", "ESP", false, function(state)
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                if state then
                    local highlight = Instance.new("Highlight")
                    highlight.Parent = player.Character
                    highlight.Adornee = player.Character

                    local billboard = Instance.new("BillboardGui")
                    billboard.Parent = player.Character
                    billboard.Adornee = player.Character
                    billboard.Size = UDim2.new(0, 100, 0, 100)
                    billboard.StudsOffset = Vector3.new(0, 3, 0)
                    billboard.AlwaysOnTop = true

                    local nameLabel = Instance.new("TextLabel")
                    nameLabel.Parent = billboard
                    nameLabel.Size = UDim2.new(1, 0, 1, 0)
                    nameLabel.BackgroundTransparency = 1
                    nameLabel.Text = player.Name
                    nameLabel.TextColor3 = Color3.new(1, 1, 1)
                    nameLabel.TextStrokeTransparency = 0.5
                    nameLabel.TextScaled = true

                    local circle = Instance.new("ImageLabel")
                    circle.Parent = billboard
                    circle.Size = UDim2.new(0, 50, 0, 50)
                    circle.Position = UDim2.new(0.5, 0, 0.5, 0) -- Center the circle
                    circle.AnchorPoint = Vector2.new(0.5, 0.5) -- Set the anchor point to the center
                    circle.BackgroundTransparency = 1
                    circle.Image = "rbxassetid://2200552246" -- Replace with your circle image asset ID
                else
                    if player.Character:FindFirstChildOfClass("Highlight") then
                        player.Character:FindFirstChildOfClass("Highlight"):Destroy()
                    end
                    if player.Character:FindFirstChildOfClass("BillboardGui") then
                        player.Character:FindFirstChildOfClass("BillboardGui"):Destroy()
                    end
                end
            end
        end
    end)

about:Button("透视1",function()
loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()
end)

about:Button("透视2",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
end)

about:Button("无敌『不适用』",function()
loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
end)

about:Button("隐身（E）",function()
loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()
end)

about:Button("电脑键盘",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

about:Button("改fps",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/FPS-X-GUI/main/FPS_X.lua"))()
end)

about:Button("fps显示",function()
loadstring(game:HttpGet("https://pastefy.app/d9j82YJr/raw",true))()
end)

about:Button("解帧",function()
loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-FpsBoost-9260"))()
end)

about:Button("踏空行走",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
end)

about:Button("紫莎",function()
game.Players.LocalPlayer.Character.Humanoid.Health=0
end)

about:Button("飞檐走壁",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)

about:Button("夜视仪",function()
    _G.OnShop = trueloadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
end)

about:Button("反挂机",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
end)

about:Button("无限跳",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
end)

about:Button("转圈",function()
loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end)

about:Button("操人脚本",function()
loadstring(game:HttpGet("https://pastebin.com/raw/bzmhRgKL"))();
end)

about:Button("操b脚本", function()
  local SimpleSexGUI = Instance.new("ScreenGui") local FGUI = Instance.new("Frame") local btnNaked = Instance.new("TextButton") local btnSex = Instance.new("TextButton") local tbxVictim = Instance.new("TextBox") local lblFUCKEMALL = Instance.new("TextLabel") local ImageLabel = Instance.new("ImageLabel") local lbltitle = Instance.new("TextLabel") local TextLabel = Instance.new("TextLabel") SimpleSexGUI.Name = "SimpleSexGUI" SimpleSexGUI.Parent = game.CoreGui FGUI.Name = "FGUI" FGUI.Parent = SimpleSexGUI FGUI.BackgroundColor3 = Color3.new(255,255,255) FGUI.BorderSizePixel = 1 FGUI.Position = UDim2.new(0,0, 0.667, 0) FGUI.Size = UDim2.new(0,317, 0,271) FGUI.Draggable = true lbltitle.Name = "Title" lbltitle.Parent = FGUI lbltitle.BackgroundColor3 = Color3.new(255,255,255) lbltitle.BorderSizePixel = 1 lbltitle.Position = UDim2.new (0, 0,-0.122, 0) lbltitle.Size = UDim2.new (0, 317,0, 33) lbltitle.Visible = true lbltitle.Active = true lbltitle.Draggable = false lbltitle.Selectable = true lbltitle.Font = Enum.Font.SourceSansBold lbltitle.Text = "一个简单的操蛋脚本!!" lbltitle.TextColor3 = Color3.new(0, 0, 0) lbltitle.TextSize = 20 btnSex.Name = "Sex" btnSex.Parent = FGUI btnSex.BackgroundColor3 = Color3.new(255,255,255) btnSex.BorderSizePixel = 1 btnSex.Position = UDim2.new (0.044, 0,0.229, 0) btnSex.Size = UDim2.new (0, 99,0, 31) btnSex.Visible = true btnSex.Active = true btnSex.Draggable = false btnSex.Selectable = true btnSex.Font = Enum.Font.SourceSansBold btnSex.Text = "让我们操蛋吧!!" btnSex.TextColor3 = Color3.new(0, 0, 0) btnSex.TextSize = 20 tbxVictim.Name = "VictimTEXT" tbxVictim.Parent = FGUI tbxVictim.BackgroundColor3 = Color3.new(255,255,255) tbxVictim.BorderSizePixel = 1 tbxVictim.Position = UDim2.new (0.533, 0,0.229, 0) tbxVictim.Size = UDim2.new (0, 133,0, 27) tbxVictim.Visible = true tbxVictim.Active = true tbxVictim.Draggable = false tbxVictim.Selectable = true tbxVictim.Font = Enum.Font.SourceSansBold tbxVictim.Text = "名字" tbxVictim.TextColor3 = Color3.new(0, 0, 0) tbxVictim.TextSize = 20 lblFUCKEMALL.Name = "FUCKEMALL" lblFUCKEMALL.Parent = FGUI lblFUCKEMALL.BackgroundColor3 = Color3.new(255,255,255) lblFUCKEMALL.BorderSizePixel = 1 lblFUCKEMALL.Position = UDim2.new (0.025, 0,0.856, 0) lblFUCKEMALL.Size = UDim2.new (0, 301,0, 27) lblFUCKEMALL.Visible = true lblFUCKEMALL.Font = Enum.Font.SourceSansBold lblFUCKEMALL.Text = "操蛋和操蛋" lblFUCKEMALL.TextColor3 = Color3.new(0, 0, 0) lblFUCKEMALL.TextSize = 20 ImageLabel.Name = "ImageLabel" ImageLabel.Parent = FGUI ImageLabel.Image = "http://www.roblox.com/asset/?id=42837..." ImageLabel.BorderSizePixel = 1 ImageLabel.Position = UDim2.new (0.274, 0,0.358, 0) ImageLabel.Size = UDim2.new (0, 106,0, 121) btnSex.MouseButton1Click:Connect(function() local player = tbxVictim.Text local stupid = Instance.new('Animation') stupid.AnimationId = 'rbxassetid://148840371' hummy = game:GetService("Players").LocalPlayer.Character.Humanoid pcall(function() hummy.Parent.Pants:Destroy() end) pcall(function() hummy.Parent.Shirt:Destroy() end) local notfunny = hummy:LoadAnimation(stupid) notfunny:Play() notfunny:AdjustSpeed(10) while hummy.Parent.Parent ~= nil do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tbxVictim.Text].Character.HumanoidRootPart.CFrame end end)
end)

about:Button("Dex抓包",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoFenHG/Dex-Explorer/refs/heads/main/Dex-Explorer.lua"))()
end)

about:Button("位置仪",function()
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local copy = Instance.new("TextButton")
local pos = Instance.new("TextBox")
local find = Instance.new("TextButton")
 
--Properties:
 
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.639646292, 0, 0.399008662, 0)
Frame.Size = UDim2.new(0, 387, 0, 206)
Frame.Active = true
 
title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
title.BorderSizePixel = 0
title.Size = UDim2.new(0, 387, 0, 50)
title.Font = Enum.Font.GothamBold
title.Text = "位置仪"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 30.000
title.TextWrapped = true
 
copy.Name = "copy"
copy.Parent = Frame
copy.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
copy.BorderSizePixel = 0
copy.Position = UDim2.new(0.527131796, 0, 0.635922313, 0)
copy.Size = UDim2.new(0, 148, 0, 50)
copy.Font = Enum.Font.GothamSemibold
copy.Text = "复制"
copy.TextColor3 = Color3.fromRGB(255, 255, 255)
copy.TextSize = 20.000
 
pos.Name = "pos"
pos.Parent = Frame
pos.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
pos.BorderSizePixel = 0
pos.Position = UDim2.new(0.0904392749, 0, 0.305825233, 0)
pos.Size = UDim2.new(0, 317, 0, 50)
pos.Font = Enum.Font.GothamSemibold
pos.Text = ""
pos.TextColor3 = Color3.fromRGB(255, 255, 255)
pos.TextSize = 14.000
pos.TextWrapped = true
 
find.Name = "find"
find.Parent = Frame
find.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
find.BorderSizePixel = 0
find.Position = UDim2.new(0.0904392898, 0, 0.635922313, 0)
find.Size = UDim2.new(0, 148, 0, 50)
find.Font = Enum.Font.GothamSemibold
find.Text = "查找当前位置"
find.TextColor3 = Color3.fromRGB(255, 255, 255)
find.TextSize = 20.000
 
-- Scripts:
 
local function UMTQ_fake_script() -- copy.LocalScript 
	local script = Instance.new('LocalScript', copy)
 
	script.Parent.MouseButton1Click:Connect(function()
		setclipboard(script.Parent.Parent.pos.Text)
	end)
end
coroutine.wrap(UMTQ_fake_script)()
local function KJAYG_fake_script() -- Frame.Dragify 
	local script = Instance.new('LocalScript', Frame)
 
	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
 
	dragify(script.Parent)
end
coroutine.wrap(KJAYG_fake_script)()
local function EKBNYI_fake_script() -- find.LocalScript 
	local script = Instance.new('LocalScript', find)
 
	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.pos.Text = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
	end)
end
coroutine.wrap(EKBNYI_fake_script)()
end)

local UITab7 = win:Tab("『画质光影』",'16060333448')

local about = UITab7:section("『画质光影』",true)

about:Button("光影", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)

about:Button("光影滤镜", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)

about:Button("超高画质",function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)

about:Button("光影V4",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)

about:Button("RTX高仿",function()
loadstring(game:HttpGet('https://pastebin.com/raw/Bkf0BJb3'))()
end)

about:Button("光影深", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)
about:Button("光影浅", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)

local UITab8 = win:Tab("『无限Robux』",'16060333448')

local about = UITab8:section("『无限Robux』",true)

about:Button("20Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("50Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("100Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("200Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("500Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("1000Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

local UITab99 = win:Tab("『FE』",'16060333448')

local about = UITab99:section("『FE』",true)

about:Button("FE C00lgui", function()
loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
end)
about:Button("FE 1x1x1x1", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()
end)
about:Button("FE大长腿", function()
    loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/7291747e9f093555573e027621f08d6e/raw/23b48f2463942befe19d81aa8a06e3222996242c/FE%2520Da%2520Feets'))()
end)
about:Button("FE用头", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/BK4Q0DfU"))()
end)
about:Button("复仇者", function()
    loadstring(game:HttpGet(('https://pastefy.ga/iGyVaTvs/raw'),true))()
end)
about:Button("鼠标", function()
    loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
end)
about:Button("变怪物", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/jfryBKds"))()
end)
about:Button("香蕉枪", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
end)
about:Button("超长🐔巴", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ESWSFND7", true))()
end)
about:Button("操人", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/AHAJAJAKAK/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A.LUA", true))()
end)
about:Button("FE动画中心", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
end)
about:Button("FE变玩家", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()
end)
about:Button("FE猫娘R63", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
end)
about:Button("FE", function()
    loadstring(game:HttpGet('https://pastefy.ga/a7RTi4un/raw'))()
end)

local UITab9 = win:Tab("『音乐』",'16060333448')

local about = UITab9:section("『音乐』",true)

about:Button("彩虹瀑布",function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1837879082"
    sound.Parent = game.Workspace
    sound:Play()
    end)
about:Button("防空警报", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://792323017"
    sound.Parent = game.Workspace
    sound:Play()
    end)
about:Button("义勇军进行曲", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1845918434"
    sound.Parent = game.Workspace
    sound:Play()
    end)
about:Button("火车音", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://3900067524"
    sound.Parent = game.Workspace
    sound:Play()
    end)
about:Button("Gentry Road",function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://5567523008"
    sound.Parent = game.Workspace
    sound:Play()
    end)
about:Button("植物大战僵尸",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://158260415" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("早安越南",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://8295016126" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
      about:Button("愤怒芒西 Evade?",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://5029269312" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
      about:Button("梅西",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://7354576319" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
      about:Button("永春拳",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1845973140" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("带劲的音乐",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://18841891575" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
      about:Button("韩国国歌",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1837478300" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
      about:Button("哥哥你女朋友不会吃醋吧?",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://8715811379" 
     sound.Parent = game.Workspace 
     sound:Play()  
     end) 
      about:Button("蜘蛛侠出场声音",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://9108472930" 
     sound.Parent = game.Workspace 
     sound:Play()
     end) 
      about:Button("消防车",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://317455930" 
     sound.Parent = game.Workspace 
     sound:Play()
     end) 
      about:Button("万圣节1🎃",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1837467198" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("好听的",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1844125168" 
     sound.Parent = game.Workspace 
     sound:Play()
     end) 
 about:Button("国外音乐脚本",function()          
 loadstring(game:HttpGet(('https://pastebin.com/raw/g97RafnE'),true))()                   
end) 
   about:Button("国歌[Krx版]",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1845918434" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("妈妈生的",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6689498326" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("Music Ball-CTT",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://9045415830" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("电音",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6911766512" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("梗合集",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://8161248815" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("Its been so long",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6913550990" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("Baller",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://13530439660" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end)
   about:Button("男娘必听",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6797864253" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("螃蟹之舞",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://54100886218" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("布鲁克林惨案",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6783714255" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("航空模拟器音乐",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1838080629" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
     
local UITab11 = win:Tab("『其他作者』",'16060333448')

local about = UITab11:section("『其他作者』",true)

about:Button("LS",function()
KingandJM = "King Advanced and Roaming prohibition center"LS = "LSTMArchive"Free = "My.Conscience"loadstring(game:HttpGet("https://github.com/XiaoyeQWQ/Bs/raw/refs/heads/main/LS.by.Moxiaobai.JM%20Studio.KingAdvancedteam.Members.loveme.LSTAB"))()
end)

about:Button("皮脚本",function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
end)

about:Button("禁漫中心",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/anlushanjinchangantangwanle/main/jmjmjmjmjmjmjmjmjmjmjmjmjmjmjmjm.lua"))()
end)

about:Button("XK",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\73\78\106\105\97\111\98\122\120\54\47\66\73\78\106\105\97\111\47\109\97\105\110\47\88\75\46\84\88\84\34\41\41\40\41\10")()
end)

about:Button("初脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/nianchuchuchuchuchu/refs/heads/main/Protected_2427816874224132.txt"))()
end)

about:Button("鹤脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/qazpin66/-/refs/heads/main/%E9%B9%A41.5.lua"))()
end)

about:Button("鱼龙脚本(破解)",function()
getgenv().FH = "鱼龙脚本"loadstring(game:HttpGet(string.char(104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,102,50,48,105,51,48,115,52,48,104,47,70,72,47,109,97,105,110,47,70,72,46,108,117,97)))()
end)

about:Button("丁丁脚本(破解)",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/xiu/main/%E4%B8%81%E4%B8%81%E8%84%9A%E6%9C%AC%E6%BA%90%E7%A0%81.txt"))()
end)

about:Button("染春被遗弃脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/lxmyysd/XiaoXu/refs/heads/main/%E8%A2%AB%E9%81%97%E5%BC%83%E6%9F%93%E6%98%A5%E6%BA%90%E7%A0%81(1).lua"))()
end)

about:Button("云脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/VIP/main/%E4%BA%91%E8%84%9A%E6%9C%AC/UNIVERSAL%20VERSION.LUA", true))()
end)

about:Button("king",function()
KingScript = "By King" Roblox= "新飞月二飞春"
KingTeam= "KingQQ新主群https://qm.qq.com/q/SU0hmhIvwk"
loadstring(game:HttpGet("https://raw.githubusercontent.com/ShenJiaoBen/ShenJiaoBen/main/King-------------Script.txt"))()
end)

about:Button("情云",function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\67\104\105\110\97\81\89\47\83\99\114\105\112\116\115\47\77\97\105\110\47\83\99\114\105\112\116"))()
end)

about:Button("剑客",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JianKeCX/JianKeV5/refs/heads/main/QQqun155160100"))()
end)

about:Button("神青",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/SHEN-QINNG-SCRIPT.lua"))()
end)

about:Button("落叶中心",function()
getgenv().LS="落叶中心" loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/Deciduous-center-LS/main/%E8%90%BD%E5%8F%B6%E4%B8%AD%E5%BF%83%E6%B7%B7%E6%B7%86.txt"))()
end)

about:Button("北脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/fjhkl/qw/refs/heads/main/%E5%8C%97%E8%84%9A%E6%9C%AC.txt"))()
end)

about:Button("名脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wumingjiaoben/z/refs/heads/main/%E6%97%A0%E5%90%8D%E8%84%9A%E6%9C%AC%E6%BA%90%E7%A0%813.0%20(1).lua"))()
end)

about:Button("斌脚本2.0.1",function() loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\73\78\106\105\97\111\98\122\120\54\47\66\73\78\106\105\97\111\47\109\97\105\110\47\66\73\78\46\108\117\97\34\41\41\40\41\10")
end)
  
about:Button("复制斌脚本卡密",function()
     setclipboard("bin2024HADE")
end)

local UITab12 = win:Tab("『战争大亨』",'16060333448')

local about = UITab12:section("『护盾』",true)

about:Button("玩家护盾电箱",function(state)
    local argsTemplate = {
    [1] = Vector3.new(),
    [2] = Vector3.new(0, 1, 0),
    [3] = game:GetService("Players").LocalPlayer.Character.RPG,
    [4] = game:GetService("Players").LocalPlayer.Character.RPG,
    [7] = "zxcvbnm4189Rocket2"
}

local localPlayer = game:GetService("Players").LocalPlayer
local localPlayerTeam = localPlayer.Team

while true do
    local players = game:GetService("Players"):GetPlayers()
    local localPlayerPosition = localPlayer.Character.HumanoidRootPart.Position
    local downwardVector = Vector3.new(0, -1, 0)
    local targetPosition = localPlayerPosition + downwardVector * 500

    for _, player in ipairs(players) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Torso") then
            local args = table.clone(argsTemplate)
            args[1] = targetPosition
            args[5] = player.Character.Torso
            game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
        end

        if player ~= localPlayer and player.Team ~= localPlayerTeam then
            local playerTeamName = player.Team and player.Team.Name
            if playerTeamName then
                local shield = workspace:WaitForChild("Tycoon"):WaitForChild("Tycoons"):FindFirstChild(playerTeamName)
                    and workspace.Tycoon.Tycoons[playerTeamName]:FindFirstChild("PurchasedObjects")
                    and workspace.Tycoon.Tycoons[playerTeamName].PurchasedObjects:FindFirstChild("Base Shield")
                    and workspace.Tycoon.Tycoons[playerTeamName].PurchasedObjects["Base Shield"]:FindFirstChild("Shield")
                    and workspace.Tycoon.Tycoons[playerTeamName].PurchasedObjects["Base Shield"].Shield:FindFirstChild("Shield4")
                
                if shield then
                    local args = table.clone(argsTemplate)
                    args[1] = targetPosition
                    args[5] = shield
                    game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
                end
            end
        end
    end

    local playerTeamName = localPlayer.Team and localPlayer.Team.Name
    for _, tycoon in pairs(workspace:WaitForChild("Tycoon"):WaitForChild("Tycoons"):GetChildren()) do
        if tycoon.Name ~= playerTeamName then
            for _, object in pairs(tycoon:WaitForChild("PurchasedObjects"):GetChildren()) do
                if object:FindFirstChild("ElectricalBox") then
                    local electricalBox = object:FindFirstChild("ElectricalBox")
                    if electricalBox:FindFirstChild("Effect") then
                        local args = table.clone(argsTemplate)
                        args[1] = targetPosition
                        args[5] = electricalBox:FindFirstChild("Effect")
                        game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
                    end
                    if electricalBox:FindFirstChild("Effect2") then
                        local args = table.clone(argsTemplate)
                        args[1] = targetPosition
                        args[5] = electricalBox:FindFirstChild("Effect2")
                        game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
                    end
                end
            end
        end
    end

    wait(0)
end
end)

about:Button("玩家与护盾",function(state)
local argsTemplate = {
    [1] = Vector3.new(),
    [2] = Vector3.new(0, 1, 0),
    [3] = game:GetService("Players").LocalPlayer.Character.RPG,
    [4] = game:GetService("Players").LocalPlayer.Character.RPG,
    [7] = "zxcvbnm4189Rocket2"
}

local localPlayer = game:GetService("Players").LocalPlayer
local localPlayerTeam = localPlayer.Team

while true do
    local players = game:GetService("Players"):GetPlayers()
    local localPlayerPosition = localPlayer.Character.HumanoidRootPart.Position
    local upwardVector = Vector3.new(0, 1, 0)
    local targetPosition = localPlayerPosition + upwardVector * 1000

    for _, player in ipairs(players) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Torso") then
            local args = table.clone(argsTemplate)
            args[1] = targetPosition
            args[5] = player.Character.Torso

            game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
        end

        if player ~= localPlayer and player.Team ~= localPlayerTeam then
            local playerTeamName = player.Team and player.Team.Name
            if playerTeamName then
                local shield = workspace:WaitForChild("Tycoon"):WaitForChild("Tycoons"):FindFirstChild(playerTeamName)
                if shield then
                    shield = shield:FindFirstChild("PurchasedObjects")
                    if shield then
                        shield = shield:FindFirstChild("Base Shield")
                        if shield then
                            shield = shield:FindFirstChild("Shield")
                            if shield then
                                shield = shield:FindFirstChild("Shield4")
                                if shield then
                                    local args = table.clone(argsTemplate)
                                    args[1] = targetPosition
                                    args[5] = shield

                                    game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    wait(0)
end
end)

local about = UITab12:section("『护盾』",true)

about:Button("枪械全自动",function(state)
local player = game.Players.LocalPlayer
local backpack = player.Backpack

for _, tool in ipairs(backpack:GetChildren()) do
    local settingsModule = tool:FindFirstChild("ACS_Modulo") and tool["ACS_Modulo"]:FindFirstChild("Variaveis") and tool["ACS_Modulo"]["Variaveis"]:FindFirstChild("Settings")
    if settingsModule then
        local gun = require(settingsModule)
        
        if gun["Bullets"] then
            gun["Bullets"] = 1
        end
        
        if gun["Ammo"] then
            gun["Ammo"] = 5000000
        end
        
        if gun["Mode"] then
            gun["Mode"] = "Auto"
        end
        
        if gun["FireModes"] and gun["FireModes"]["Auto"] ~= nil then
            gun["FireModes"]["Auto"] = true
        end
        
        if gun["FireRate"] then
            gun["FireRate"] = 1000000000
        end
        
        if gun["DamageMultiplier"] then
            gun["DamageMultiplier"] = 1000000000
        end
        
        if gun["Distance"] then
            gun["Distance"] = 1000000000
        end
        
        if gun["VRecoil"] then
            gun["VRecoil"] = {0, 0}
        end
        
        if gun["HRecoil"] then
            gun["HRecoil"] = {0, 0}
        end
        
        if gun["RecoilPunch"] then
            gun["RecoilPunch"] = 0
        end
        
        if gun["VPunchBase"] then
            gun["VPunchBase"] = 0
        end
        
        if gun["HPunchBase"] then
            gun["HPunchBase"] = 0
        end
        
        if gun["DPunchBase"] then
            gun["DPunchBase"] = 0
        end
        
        if gun["MinRecoilPower"] then
            gun["MinRecoilPower"] = 0
        end
        
        if gun["MaxRecoilPower"] then
            gun["MaxRecoilPower"] = 0
        end

        if gun["BSpeed"] then
            gun["BSpeed"] = 100000000
        end
        
        if gun["BDrop"] then
            gun["BDrop"] = 0
        end

        if gun["MinSpread"] then
            gun["MinSpread"] = 0
        end
        
        if gun["MaxSpread"] then
            gun["MaxSpread"] = 0
        end
    end
end
end)

about:Button("枪械连射400发",function(state)
local player = game.Players.LocalPlayer
local backpack = player.Backpack

for _, tool in ipairs(backpack:GetChildren()) do
    local settingsModule = tool:FindFirstChild("ACS_Modulo") and tool["ACS_Modulo"]:FindFirstChild("Variaveis") and tool["ACS_Modulo"]["Variaveis"]:FindFirstChild("Settings")
    if settingsModule then
        local gun = require(settingsModule)
        
        if gun["Bullets"] then
            gun["Bullets"] = 400
        end
        
        if gun["Ammo"] then
            gun["Ammo"] = 5000000
        end
        
        if gun["FireRate"] then
            gun["FireRate"] = 1000000000
        end
        
        if gun["DamageMultiplier"] then
            gun["DamageMultiplier"] = 1000000000
        end
        
        if gun["Distance"] then
            gun["Distance"] = 1000000000
        end
        
        if gun["VRecoil"] then
            gun["VRecoil"] = {0, 0}
        end
        
        if gun["HRecoil"] then
            gun["HRecoil"] = {0, 0}
        end
        
        if gun["RecoilPunch"] then
            gun["RecoilPunch"] = 0
        end
        
        if gun["VPunchBase"] then
            gun["VPunchBase"] = 0
        end
        
        if gun["HPunchBase"] then
            gun["HPunchBase"] = 0
        end
        
        if gun["DPunchBase"] then
            gun["DPunchBase"] = 0
        end
        
        if gun["MinRecoilPower"] then
            gun["MinRecoilPower"] = 0
        end
        
        if gun["MaxRecoilPower"] then
            gun["MaxRecoilPower"] = 0
        end

        if gun["BSpeed"] then
            gun["BSpeed"] = 100000000
        end
        
        if gun["BDrop"] then
            gun["BDrop"] = 0
        end

        if gun["MinSpread"] then
            gun["MinSpread"] = 0
        end
        
        if gun["MaxSpread"] then
            gun["MaxSpread"] = 0
        end
    end

    local rocketModule = tool:FindFirstChild("RocketSettings")
    if rocketModule then
        local rocket = require(rocketModule)
        
        if rocket["velocity"] then
            rocket["velocity"] = 1000000000000
        end
        
        if rocket["Distance"] then
            rocket["Distance"] = 1000000000000
        end
        
        if rocket["RocketAmount"] then
            rocket["RocketAmount"] = 10000000000
        end
        
        if rocket["Acceleration"] then
            rocket["Acceleration"] = 1000000000000
        end
        
        if rocket["FireRate"] then
            rocket["FireRate"] = 10000000000000
        end
        
        if rocket["ExpRadius"] then
            rocket["ExpRadius"] = 10000000000
        end
    end
end
end)

local about = UITab12:section("『赠送』",true)

about:Button("赠送弹窗循环",function(state)
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

while true do
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer then
            local args = {
                [1] = "StarterCase",
                [2] = 1e20,
                [3] = player
            }

            ReplicatedStorage:WaitForChild("Attachments System"):WaitForChild("CamoCaseGift"):FireServer(unpack(args))
        end
    end
    wait(0)
end
end)

about:Button("一次性赠送弹窗",function(state)
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function giveCaseToPlayer(player)
    if player ~= Players.LocalPlayer then
        local args = {
            [1] = "StarterCase",
            [2] = 1e20,
            [3] = player
        }

        ReplicatedStorage:WaitForChild("Attachments System"):WaitForChild("CamoCaseGift"):FireServer(unpack(args))
    end
end

for _, player in ipairs(Players:GetPlayers()) do
    giveCaseToPlayer(player)
end

Players.PlayerAdded:Connect(giveCaseToPlayer)
end)

about:Button("一枪秒人",function()
loadstring(game:HttpGet('https://pastebin.com/raw/6b4XEjQF'))()
end)

about:Button("战争大亨1",function()
loadstring(game:HttpGet'https://raw.githubusercontent.com/Macintosh1983/ChillHubMain/main/ChillHubOilWarfareTycoon.lua')()
end)

about:Button("战争大亨2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nivex123456/War-Tycoon/main/Script"))() 
end)

about:Button("战争大亨3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MariyaFurmanova/Library/main/WarTycoon", true))() 
end)

about:Button("战争大亨4",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nici002018/GNHub/master/GNHub.lua", true))()
end)

about:Button("战争大亨5",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MariyaFurmanova/Library/main/WarTycoon", true))()
end)

about:Button("战争大亨6",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraScript/Script/main/WarTycoon'))()
end)

about:Button("战争大亨7",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/megamoeus/UI-Engine-V2/main/OWTPublic"))()
end)

local UITab13 = win:Tab("『忍者传奇』",'16060333448')

local about = UITab13:section("『忍者传奇』",true)
 
about:Button("获取所有元素", function()
    if game:GetService("ReplicatedStorage") and game:GetService("ReplicatedStorage").Elements and game.ReplicatedStorage and game.ReplicatedStorage.rEvents and game.ReplicatedStorage.rEvents.elementMasteryEvent then
        for i, v in pairs(game:GetService("ReplicatedStorage").Elements:GetChildren()) do
            local allelement = v.Name
            game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer(allelement)
        end
    end
end)

about:Button("传送",function()
loadstring(game:HttpGet("https://pastebin.com/raw/UzaUDSPK"))()
end)

about:Button("忍者传奇1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zerpqe/script/main/NinjaLegends.lua"))()
end)

about:Button("忍者传奇2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatBlueDevil/Bleus/main/Ninja%20Legends/Source.lua"))()
end)

about:Button("忍者传奇3",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Zyb150933/zyb/main/123'))()
end)

about:Button("忍者传奇4",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Zyb150933/zyb/main/123'))()
end)

about:Button("忍者传奇汉化",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/renzhechuanqihanhua/refs/heads/main/%E5%BF%8D%E8%80%85%E4%BC%A0%E5%A5%87%E6%B1%89%E5%8C%96%E8%84%9A%E6%9C%AC%20(1).txt"))()
end)

about:Toggle("吸所有环", "Hoops", false, function(state)
    LS.hoops = state
    if LS.hoops then
        while LS.hoops do
            for i, v in ipairs(workspace.Hoops:GetChildren()) do
                if v.Name == "Hoop" then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
            wait()
            for i, v in ipairs(workspace.Hoops.Hoop:GetChildren()) do
                if v.Name == "touchPart" then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end
end)

local UITab14 = win:Tab("『监狱人生』",'16060333448')

local about = UITab14:section("『传送』",true)

about:Button("警卫室",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
end)

about:Button("监狱室内",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
end)

about:Button("监狱室外",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
end)

about:Button("犯罪复活点",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
end)

about:Button("传送院子", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(788.5759887695312, 97.99992370605469, 2455.056640625)
end)
about:Button("传送警车库", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(602.7301635742188, 98.20000457763672, 2503.56982421875)
end)
about:Button("传送死人下水道", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.4256591796875, 78.69828033447266, 2416.18359375)
end)
about:Button("传送食堂", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(921.0059204101562, 99.98993682861328, 2289.23095703125)
end)

local about = UITab14:section("『脚本』",true)

about:Button("无敌模式", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/LdTVujTA"))()
end)
about:Button("杀死所有人", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/kXjfpFPh"))()
end)

about:Button("变钢铁侠", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/7prijqYH"))()
end)
about:Button("变死神", function()
  loadstring(game:HttpGet("https://pastebin.com/ewv9bbRp"))()
end)
about:Button("变车模型", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/zLe3e4BS"))()
end)

about:Button("变成警察", function()
    workspace.Remote.TeamEvent:FireServer("Bright blue");
end)
about:Button("变成囚犯", function()
    workspace.Remote.TeamEvent:FireServer("Bright orange");
end)

about:Toggle("杀死光环", "SSGH", false, function(SSGH)
    States.KillAura = SSGH if state then print("Kill Aura On") CreateKillPart() else print("Kill Aura Off") if Parts[1] and Parts[1].Name == "KillAura" then Parts[1]:Destroy() Parts[1] = nil end end end) function CreateKillPart() if Parts[1] then pcall(function() Parts[1]:Destroy() end) Parts[1] = nil end local Part = Instance.new("Part",plr.Character) local hilight = Instance.new("Highlight",Part) hilight.FillTransparency = 1 Part.Anchored = true Part.CanCollide = false Part.CanTouch = false Part.Material = Enum.Material.SmoothPlastic Part.Transparency = .98 Part.Material = Enum.Material.SmoothPlastic Part.BrickColor = BrickColor.White() Part.Size = Vector3.new(20,2,20) Part.Name = "KillAura" Parts[1] = Part end task.spawn(function() repeat task.wait()until plr.Character and char and char:FindFirstChildOfClass("Humanoid") if States.KillAura then CreateKillPart() end end) game:GetService("RunService").Stepped:Connect(function() if States.KillAura then for i,v in pairs(game.Players:GetPlayers()) do if v ~= game.Players.LocalPlayer then if (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <14 and v.Character.Humanoid.Health >0 then local args = {[1] = v} for i =1,2 do task.spawn(function() game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args)) end) end end end end end
end)

about:Button("手里剑秒杀",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/jian"))()
end)

about:Button("监狱人生1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dalloc2/Roblox/main/TigerAdmin.lua"))()
end)

about:Button("监狱人生2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
end)

about:Button("监狱人生汉化",function()
loadstring(game:HttpGetAsync("https://pastebin.com/raw/fYMnAEeJ"))()
end)

local UITab17 = win:Tab("『驾驶帝国』",'7734068321')

local about = UITab17:section("『驾驶帝国』",true)

about:Button("驾驶帝国1",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))()
end)

about:Button("驾驶帝国2",function()
loadstring(game:HttpGet("https://soggyhubv2.vercel.app"))()
end)

about:Button("驾驶帝国3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/drivingempire", true))()
end)

about:Button("驾驶帝国NEO",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/Lightux/main/README.md'),true))()
end)

local UITab18 = win:Tab("『铲雪模拟器』",'16060333448')

local about = UITab18:section("『铲雪模拟器』",true)

about:Toggle("自动收集雪","Value", false, function(Value)
        toggle = Value
    while toggle do wait()
    local args = {
        [1] = workspace:WaitForChild("HitParts"):WaitForChild("Snow1"),
        [2] = "Snow1",
        [3] = "MagicWand"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("e8eGb8RgRXFcug8q"):FireServer(unpack(args))
        end
    end)
    
about:Toggle("自动出售雪（要传送到指定地方）",   "Value",false, function(Value)
    toggle = Value
    while toggle do wait()
    local args = {
        [1] = "SellSnow",
        [2] = "Frosty"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
        end
    end)
    
about:Button("传送出售雪的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(481.4659423828125, 15.846257209777832, -66.55204010009766)
end)
    
about:Button("传送买车的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(90.10160064697266, 16.051794052124023, -141.703125)
end)
    
about:Button("传送买工具的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(131.7429962158203, 16.39700698852539, -12.935890197753906)
    end)
    
    about:Button("传送买背包的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(348.6633605957031, 17.03822898864746, -16.793842315673828)
end)
    
about:Button("传送买假日礼物的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(154.57424926757812, 16.215335845947266, 147.10423278808594)
end)
    
about:Button("传送买宠物的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(138.49563598632812, 17.887277603149414, 278.3686218261719)
end)
    
about:Button("传送超大铲雪的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-391.4309997558594, 15.84949016571045, 150.15187072753906)
end)
    
local UITab20 = win:Tab("『scp角色扮演』",'16060333448')

local about = UITab20:section("『RC MFZD』",true)

about:Button("自动换蛋+++",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SCPRoleplay.lua"))()
end)

about:Button("传送到怪物点位",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/scp%20rp2", true))()
end)

about:Button("FreeLean-Hub",function()  
loadstring(game:HttpGet("https://raw.githubusercontent.com/KeoneGithub/KeoneGithub/main/FreeLeanSCP",true))()
end)

about:Button("发疯Bot",function() loadstring(game:HttpGet("https://gist.githubusercontent.com/cerealwithmilk/83c17f6e383b2fa0d70a887e14523593/raw/d0bee380c2e3ec3f72dc34d1b8ca345c4efc19d8/scp-roleplay.lua"))()
end)

about:Button("快速开门、广播+++",function()
    local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
end)

about:Button("SCPF COMMUNICATIONS RADIO",function()
game:GetService("ReplicatedStorage").Team.Radio:FireServer("msg","hi guys!","SCPF COMMUNICATIONS")
end)

about:Button("CLASS-D COMMUNICATIONS RADIO",function()
game:GetService("ReplicatedStorage").Team.Radio:FireServer("msg","hi guys!","CLASS-D COMMUNICATIONS")
end)

about:Button("Normal Chat",function()
game:GetService("ReplicatedStorage").Team.Radio:FireServer("msg","hi guys!","CLASS-D COMMUNICATIONS")
end)

about:Button("SCP可用范围",function()
    _G.HeadSize = 15
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)
about:Button("快速射击",function()
local g = getgc(true)
local t = {}
local p = game:GetService("Players").LocalPlayer
local function editCurrentGuns()
    for _, v in pairs(g) do
        if typeof(v) == "table" then
            if rawget(v, "Ammo") and rawget(v, "CurrentAmmo") then
                table.insert(t,v)
            end
        end
    end
    
    for _,v in pairs(t) do
        v.TBS = 0
    end
end
task.spawn(editCurrentGuns)

p.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
for _,v in pairs(p.Backpack:GetChildren()) do
    if v:IsA("Tool") and v:FindFirstChild("identifier") then
        v:FindFirstChild("identifier"):Destroy()
    end
end; for _, v in pairs(game:GetService("ReplicatedStorage").GunSettings:GetChildren()) do
    if v:IsA("ModuleScript") then
        local m = require(v)
        if m.TBS then
            m.TBS = 0
        end
    end
end; p.Backpack.ChildAdded:Connect(function(v)
    p.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
    if v:IsA("Tool") and v:FindFirstChild("identifier") then
        v:FindFirstChild("identifier"):Destroy()
    end
end)
end)

about:Button("自动换蛋+++",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SCPRoleplay.lua"))()
end)

about:Button("SCP最强脚本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AnomalyRBLX/Database/main/Scripts/SCP%3A%20Roleplay"))()
end)

local UITab21 = win:Tab("『极速传奇』",'16060333448')

local about = UITab21:section("『修改』",true)

about:Textbox("修改经验值", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.exp.Value=arg
end)

about:Textbox("修改等级", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.level
.Value=arg
end)

about:Textbox("修改比赛数", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Races.Value=arg
end)

about:Textbox("修改圈数", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Hoops.Value=arg
end)

about:Textbox("修改重生", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value=arg
end)

about:Textbox("修改步数", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Steps.Value=arg
end)

about:Textbox("修改尾迹容量", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.maxPetCapacity.Value=arg
end)

about:Textbox("修改宠物位数量", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.maxPetCapacity.Value=arg
end)

about:Textbox("修改宝石数量", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.Gems.Value=arg
end)

local about = UITab21:section("『自动』",true)

about:Toggle("自动设置最大速度", "SD", false, function(SD)
    if SD then while true do game:GetService("ReplicatedStorage").rEvents.changeSpeedJumpRemote:InvokeServer("changeSpeed,math.huge")
 wait() end end
end)

about:Toggle("自动设置最大跳跃", "TY", false, function(TY)
    if TY then while true do game:GetService("ReplicatedStorage").rEvents.changeSpeedJumpRemote:InvokeServer("changeJump,math.huge")
 wait() end end
end)

local about = UITab21:section("『无』",true)

about:Button("boa",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/BoaHacker/ROBLOX/main/cheat', true))()
end)

about:Button("汉化",function()
loadstring(game:HttpGet("https://pastebin.com/raw/egMXJcwB", true))()
end)

local UITab22 = win:Tab("『格林维尔』",'16060333448')

local about = UITab22:section("『格林维尔』",true)

about:Button("格林维尔",function()
loadstring(game:HttpGet("https://github.com/root-jiege/new/raw/refs/heads/main/KO"))()
end)

about:Button("格林维尔2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8643/test/main/green"))()
end)

about:Button("格林维尔3",function()
loadstring(game:HttpGet("https://pastefy.app/WBYAsWJm/raw"))()
end)

local UITab23 = win:Tab("『CDID』",'16060333448')

local about = UITab23:section("『CDID』",true)

about:Button("CDID",function()
loadstring(game:HttpGet("https://scriptblox.com/raw/Car-Driving-Indonesia-Lunar-hub-v2-12376"))()
end)

about:Button("CDID2",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Marco8643/test/main/cdid%20script'))()
end)

about:Button("冷",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/lengcdid/refs/heads/main/%E5%86%B7cdid%E6%BA%90.lua"))()
end)

local UITab24 = win:Tab("『挖到中国』",'16060333448')

local about = UITab24:section("『挖到中国』",true)

about:Button("远程购买炸弹",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/wachuzhongguo/refs/heads/main/jm%E6%8C%96%E5%88%B0%E4%B8%AD%E5%9B%BD%E8%BF%9C%E7%A8%8B%E8%B4%AD%E4%B9%B0%E7%82%B8%E5%BC%B9.lua"))()
end)

local UITab12 = win:Tab("『自然灾害』",'16060333448')

local about = UITab18:section("『自然灾害』",true)

-- Gui to Lua
-- Version: 3.2

-- Instances:

local BeiFengCenterDisaster = Instance.new("ScreenGui")
local Message = Instance.new("TextLabel")

--Properties:

BeiFengCenterDisaster.Name = "BeiFengCenterDisaster"
BeiFengCenterDisaster.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Message.Name = 'Message'
Message.Parent = BeiFengCenterDisaster
Message.Position = UDim2.new(0.367, 0,-0.030, 0)
Message.Size = UDim2.new(0, 363,0, 71)
Message.BackgroundColor3 = Color3.fromRGB(0,0,0)
Message.Text = "下一个灾难是："
Message.TextSize = 14
Message.TextColor3 = Color3.fromRGB(255,255,255)
Message.Font = Enum.Font.Code
Message.TextScaled = true
Message.Selectable = true
Message.Active = true
Message.Visible = false
Message.Draggable = true

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "自然灾害脚本",
	Content = "正在加载 脚本-自然灾害生存游戏",
	Image = "rbxthumb://type=Asset&id=5107182114&w=150&h=150",
	Time = 5
})

local Window = OrionLib:MakeWindow({Name = "染春中心-自然灾害生存游戏", HidePremium = false, SaveConfig = true, IntroText = "染春中心-自然灾害生存游戏", ConfigFolder = "BeiFengNaturalDisasterSurvival"})

local Back = Window:MakeTab({
	Name = "染春中心",
	Icon = "rbxassetid://14380684950",
	PremiumOnly = false
})

Back:AddButton({
	Name = "返回北风中心",
	Callback = function()
		loadstring(game:HttpGet(("https://raw.githubusercontent.com/UWUBeiFeng/Scripts/main/BeiFengCenter.lua"),true))()
	end
})

local Home = Window:MakeTab({
	Name = "主要功能",
	Icon = "rbxassetid://14361559991",
	PremiumOnly = false
})

local plr = game:GetService("Players").LocalPlayer

Home:AddToggle({
	Name = "地图投票",
	Default = false,
	Callback = function(Value)
		plr.PlayerGui.MainGui.MapVotePage.Visible = Value
	end    
})

local nextdis

Home:AddToggle({
	Name = "预测灾害",
	Default = false,
	Callback = function(val)
		nextdis = val

		while wait(1) and nextdis do
			local SurvivalTag = plr.Character:FindFirstChild("SurvivalTag")
			if SurvivalTag then
				if SurvivalTag.Value == "Blizzard" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：暴风雪"
				elseif SurvivalTag.Value == "Sandstorm" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：沙尘暴"
				elseif SurvivalTag.Value == "Tornado" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：龙卷风"
				elseif SurvivalTag.Value == "Volcanic Eruption" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：火山"
				elseif SurvivalTag.Value == "Flash Flood" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：洪水"
				elseif SurvivalTag.Value == "Deadly Virus" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：病毒"
				elseif SurvivalTag.Value == "Tsunami" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：海啸"
				elseif SurvivalTag.Value == "Acid Rain" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：酸雨"
				elseif SurvivalTag.Value == "Fire" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：火焰"
				elseif SurvivalTag.Value == "Meteor Shower" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：流星雨"
				elseif SurvivalTag.Value == "Earthquake" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：地震"
				elseif SurvivalTag.Value == "Thunder Storm" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：暴风雨"
				else
					Message.Visible = false
				end
			end
		end
	end    
})

OrionLib:Init()

local UITab12 = win:Tab("『伐木大亨』",'16060333448')

local about = UITab18:section("『伐木大亨』",true)

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))() 
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))() 
Notification:Notify( 
     {Title = "已为您启用木材大亨功能", Description = "作者:凛冬"}, 
     {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"}, 
     {Image = "http://www.roblox.com/asset/?id=4483345998", ImageColor = Color3.fromRGB(255, 84, 84)} 
)
-- 增强的白名单系统
local WhitelistEnabled = false -- 是否启用白名单系统
local Whitelist = {
    "samcZSZ"
}

-- 检查当前用户是否在白名单中
local function IsUserWhitelisted()
    if not WhitelistEnabled then
        return true -- 如果未启用白名单，则允许所有用户
    end
    
    local playerName = game.Players.LocalPlayer.Name
    for _, name in ipairs(Whitelist) do
        if name == playerName then
            return true
        end
    end
    return false
end

-- 如果用户不在白名单中，显示通知并停止脚本
if not IsUserWhitelisted() then
    Notification:Notify( 
        {Title = "您未购买白名单，白名单需要1块钱", Description = "请添加作者qq购买，qq号：3253549307，来时请备注来意"}, 
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 60, Type = "image"}, 
        {Image = "http://www.roblox.com/asset/?id=4483345998", ImageColor = Color3.fromRGB(255, 84, 84)} 
    )
    return -- 停止脚本执行
end

-- 用户在白名单中，继续加载脚本
local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local mouse = lp:GetMouse()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")

local bai = {
    waterwalk = false,
    awaysday = false,
    awaysdnight = false,
    nofog = false
}

-- 发送通知的函数
function SendNotification(Title, Text, Duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = Title;
        Text = Text;
        Icon = nil;
        Duration = Duration
    })
end
local lp=game.Players.LocalPlayer
local mouse = lp:GetMouse()
local CurrentSlot = game.Players.LocalPlayer:WaitForChild("CurrentSaveSlot").Value
local ScriptLoadOrSave = false
local CurrentlySavingOrLoading = game.Players.LocalPlayer:WaitForChild("CurrentlySavingOrLoading")
local bai = {
  autoaxedupe=false,
  cuttreeselect="Generic",
  axedupepick=nil,
  autodupe=false,
  dxmz="",
  slot=-1,
  zlwjia="",
  zix=1,
  zlz=3,
  bringamount=1,
  bringtree=false,
  waterwalk=false,
  awaysday=false,
  awaysdnight=false,
  nofog=false,
  cswjiail=nil,
  itemset=nil,
  autocsdx=nil,
  autobuystop=false,
  autobuyamount=1,
  away = nil
}

local function notify(Title,Text,Duration) -- Sends Notification in the bottom right of the screen
  game.StarterGui:SetCore("SendNotification", {
    Title = Title;
    Text = Text;
    Icon = nil;
    Duration = Duration
  })
end
function Dupeaxe()


  lp.Character.Humanoid:UnequipTools()
  local oldpos = lp.Character.HumanoidRootPart.CFrame
  for i,v in pairs(game:service"Players".LocalPlayer.Backpack:GetChildren()) do
    game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(v,"Drop tool")
  end

  game:service"Players".LocalPlayer.Character.Head:Destroy()
  wait(6)
  lp.Character.HumanoidRootPart.CFrame=oldpos
end
local Vehicle
function cartp(cframe)
  Vehicle = lp.Character.Humanoid.SeatPart.Parent
  spawn(function()
    for i = 1, 3 do
      task.wait()
      Vehicle:SetPrimaryPartCFrame(cframe)
    end
  end)
end
function ItemStackeraxe(ItemType, XAxis, ZAxis)
  local Player = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3.5, 0)
  local Items = {}

  for i, v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
    if v:FindFirstChild("Owner") and tostring(v.Owner.Value) ==bai.zlwjia
      then if (
        v:FindFirstChild "DraggableItem" and tostring(v.DraggableItem.Parent) == ItemType)
        then table
        .
        insert(Items, v)
      end
    end
  end
  local Count = 0
  for Y = 1, math.ceil(#Items / (XAxis * ZAxis)) do for X = 1, XAxis do for Z = 1, ZAxis do Count = Count
        + 1
        game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,
        CFrame.new(X * Items[1].Main.Size.X, Y * Items[1].Main.Size.Y, Z * Items[1].Main.Size.Z) + Player
        ,
        game.Players.LocalPlayer, nil, Items[Count], true)
      end
    end
  end
end
function ItemStackerbox(ItemType, XAxis, ZAxis)
  local Player = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 4, 0)
  local Items = {}

  for i, v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
    if v:FindFirstChild("Owner") and tostring(v.Owner.Value) ==bai.zlwjia
      then if (
        v:FindFirstChild("PurchasedBoxItemName") and tostring(v.PurchasedBoxItemName.Value) == ItemType)
        then table
        .
        insert(Items, v)
      end
    end
  end
  local Count = 0
  for Y = 1, math.ceil(#Items / (XAxis * ZAxis)) do for X = 1, XAxis do for Z = 1, ZAxis do Count = Count
        + 1
        game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,
        CFrame.new(X * Items[1].Main.Size.X, Y * Items[1].Main.Size.Y, Z * Items[1].Main.Size.Z) + Player
        ,
        game.Players.LocalPlayer, nil, Items[Count], true)
      end
    end
  end
end
local function CheckIfSlotAvailable(Slot)
  for a,b in pairs(game.ReplicatedStorage.LoadSaveRequests.GetMetaData:InvokeServer(game.Players.LocalPlayer)) do
    if a == Slot then
      for c,d in pairs(b) do
        if c == "NumSaves" and d ~= 0 then
          return true
         else
          return false
        end
      end
    end
  end
end

local function CheckSlotNumber() --Checks if the slot number is right
  if bai.slot == "1" or bai.slot == "2" or bai.slot == "3" or bai.slot == "4" or bai.slot == "5" or bai.slot == "6" then
    local SlotNumber = tonumber(bai.slot)
    return SlotNumber
   else return false
  end
end




function toolsta(toolname)
  return require(game.ReplicatedStorage.Purchasables.Tools.AllTools[toolname].AxeClass).new()
end

local function table_foreach(table, callback)
  for i=1,#table do
    callback(i, table[i])
  end
end


local function tp(pos)
  if typeof(pos) == "CFrame" then
    lp.Character:SetPrimaryPartCFrame(pos)
   elseif typeof(pos) == "Vector3" then
    lp.Character:MoveTo(pos)
  end
end

function sellwood()
  for _, Log in pairs(workspace.LogModels:GetChildren()) do
    if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
      if Log.Owner.Value == game.Players.LocalPlayer then
        for i,v in pairs(Log:GetChildren()) do
          if v.Name=="WoodSection" then
            spawn(function()
              for i=1,100 do
                wait();
                game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(v.WoodSection)
                game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v.WoodSection)
                v.CFrame=CFrame.new(Vector3.new(315, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0)
              end
            end)
          end
        end

      end
    end
  end
end



local function cutPart (tool,event, treeClass,axestr)
  game:GetService"ReplicatedStorage".Interaction.RemoteProxy:FireServer(event, {
    tool = tool,
    faceVector = Vector3.new(0, 0,-1),
    height = 0.3,
    sectionId = 1,
    hitPoints = axestr,
    cooldown = -14,
    cuttingClass = "Axe"
  })
end
local treeListener = function(treeClass, callback)
  local childAdded
  a= workspace.LogModels.ChildAdded:Connect(function(child)
    local owner = child:WaitForChild("Owner")
    if owner.Value == lp and child.TreeClass.Value == treeClass then
      a:Disconnect()
      callback(child)
    end
  end)
end


local getBiggestTree = function(treeClass)
  for _,v in next,workspace:children()do
    if tostring(v)=="TreeRegion"then
      for _,g in next,v:children()do
        if g:FindFirstChild("TreeClass")and tostring(g.TreeClass.Value)==treeClass and g:FindFirstChild("Owner")then
          if g.Owner.Value==nil or tostring(g.Owner.Value)==tostring(lp)then
            if #g:children() > 5 and g:FindFirstChild("WoodSection")then
              for h,j in next,g:children() do
                if j:FindFirstChild("ID")and j.ID.Value==1 and j.Size.Y>.5 then
                  return j;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
  return false;
end
local function lowerBridge(value)

  if value=="Higher"then
    for _,v in pairs(game.workspace.Bridge.VerticalLiftBridge.Lift:GetChildren()) do
      v.CFrame = v.CFrame + Vector3.new(0, 26, 0)
    end

   elseif value=="Lower"then
    for _,v in pairs(game.workspace.Bridge.VerticalLiftBridge.Lift:GetChildren()) do
      v.CFrame = v.CFrame + Vector3.new(0, -26, 0)
    end
  end;
end
function modwood()
  local wood
  local Saw
  notify("自动加工", "请点击一颗树", 4)
  local ModTree = mouse.Button1Up:Connect(function()
    local obj = mouse.Target.Parent
    if not obj:FindFirstChild "RootCut" and obj.Parent.Name == "TreeRegion" then
      return notify("错误!", "这棵树还没有砍!", 3)
    end
    if obj:FindFirstChild "Owner" and obj.Owner.Value == lp and obj:FindFirstChild "WoodSection" then
      wood = obj
      notify("一键加工", "已选择树!", 3)
    end
    if obj.Name:find("Sawmill")then
      Saw=sawmill;
      notify("搬运","剧木机已选择",4)
     elseif obj.Parent.Name:find("Sawmill")or obj.Parent:FindFirstChild"BlockageAlert"then
      Saw=obj.Parent
      notify("搬运","剧木机已选择",4)
    end;
  end
  )
  repeat
    task.wait(.01)
  until wood and Saw ~= nil
  ModTree:Disconnect()
  ModTree = nil
  local SawC = Saw.Particles.CFrame + Vector3.new(0.7, 0)
  local cu,cw= 0,nil
  for p, I in next, wood:GetChildren() do
    if I.Name == "WoodSection" then
      if I.ID.Value > cu then
        cu = I.ID.Value
        cw=I
      end
    end
  end
  for p, I in next, wood:GetChildren() do
    if I.Name == "WoodSection" then

      for p, b in next, I.ChildIDs:GetChildren() do

        if b.Value ==cu then
          cv = I

        end
      end
    end
  end
  tp(cv.CFrame)
  wait()
  repeat wait(0.1)
    cv.CFrame = game.Workspace["Region_Volcano"].Lava.Lava.CFrame
  until cv:FindFirstChild("LavaFire");
  cv:FindFirstChild("LavaFire"):Destroy();
  tp(cw.CFrame)
  for i=1,20 do
    cw:MoveTo(Saw)
    cw.CFrame=SawC
  end
end
local function bringTree(treeClass)
  lp.Character.Humanoid:UnequipTools()
  local oldPos=lp.Character.HumanoidRootPart.CFrame;
  local tool
  local tool=0
  for i,v in pairs (lp.Backpack:GetChildren()) do
    if v.Name ~= "BlueprintTool"then
      tool=tool+1
    end
  end
  if tool==0 then
    return
    notify("搬运","你需要斧头",4)
  end


  for i,v in pairs (lp.Backpack:GetChildren()) do
    if v.Name ~= "BlueprintTool"then

      tool = v
    end
  end
  local toolname
  for i ,v in pairs (tool:GetChildren()) do
    if v.Name=="ToolName" then
      toolname=v.Value

    end
  end

  local axestr=toolsta(toolname)
  if axestr.SpecialTrees and axestr.SpecialTrees[treeClass] then
    for i, v in next, axestr.SpecialTrees[treeClass] do
      axestr[i] = v
    end
  end
  local tree = getBiggestTree(treeClass)

  if not tree then
    return notify("搬运","没有找到树",4)
  end




  local treeCut = false
  if treeClass=="LoveCave" and axestr.Damage<10000000 then
    return notify("搬运","你没有合适的斧头去砍这棵树") end
  if treeClass=="Shine" and axestr.Damage<80000000 then
    return notify("搬运","你没有合适的斧头去砍这棵树") end
  if treeClass=="Shine" and axestr.Damage<80000000 then
    return notify("搬运","你没有合适的斧头去砍这棵树") end
  if treeClass=="Magma" and axestr.Damage<10000000 then
    return notify("搬运","你没有合适的斧头去砍这棵树") end
  if treeClass=="Ice" and axestr.Damage<8000000 then
    return notify("搬运","你没有合适的斧头去砍这棵树") end
  if treeClass== "Radioactive" and axestr.Damage<10000000 then
    return notify("搬运","你没有合适的斧头去砍这棵树") end
  if treeClass== "Scale" and axestr.Damage<40000000 then
    return notify("搬运","你没有合适的斧头去砍这棵树") end

  workspace.Camera.CameraSubject = tree
  treeListener(treeClass, function(tree)
    tree.PrimaryPart = tree:FindFirstChild("WoodSection")
    treeCut = true
    wait()
    workspace.Camera.CameraSubject = lp.Character

  end)

  task.wait()


  repeat


    cutPart(tool,tree.Parent.CutEvent, treeClass,axestr.Damage)
    wait()
  until treeCut


end
local cashierIds = {}
local connection = game.ReplicatedStorage.NPCDialog.PromptChat.OnClientEvent:connect(function(bu, data)
  if cashierIds[data.Name] == nil then
    cashierIds[data.Name] = data.ID;
  end
end)

game.ReplicatedStorage.NPCDialog.SetChattingValue:InvokeServer(1)
spawn(function()
  repeat wait(0.5) until cashierIds["Thom"] ~= nil
  wait(3)
  connection:Disconnect()
  connection = nil
  game.ReplicatedStorage.NPCDialog.SetChattingValue:InvokeServer(0)

end)
local bt = false;

function finditem(BItem)
  local NameStore,Cashier,CID,StoreItems, Counter
  for _,w in pairs (s.ShopItems:GetChildren()) do
    if w.Name=="Bed1" or w.Name=="Seat_Couch" then
      NameStore = "Corey"
      Cashier = game.Workspace.Stores.FurnitureStore.Corey
      StoreItems =l
      Counter = game.Workspace.Stores.FurnitureStore.Counter.CFrame + Vector3.new(0, .4, 0)

     elseif w.Name=="Sawmill" or w.Name=="Sawmill2" then
      NameStore = "Thom"
      Cashier = game.Workspace.Stores.WoodRUs.Thom
      StoreItems =l
      Counter = game.Workspace.Stores.WoodRUs.Counter.CFrame + Vector3.new(0, .4, 0)

     elseif w.Name=="Trailer2" or w.Name=="UtilityTruck2" then
      NameStore = "Jenny"
      Cashier = game.Workspace.Stores.CarStore.Jenny
      StoreItems =l
      Counter = game.Workspace.Stores.CarStore.Counter.CFrame + Vector3.new(0, .4, 0)

     elseif w.Name=="CanOfWorms" or w.Name=="Dynamite" then
      NameStore = "Bob"
      Cashier = game.Workspace.Stores.ShackSho.Bob
      StoreItems =l
      Counter = game.Workspace.Stores.ShackShop.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="Painting1" or w.Name=="Painting2" then
      NameStore = "Timothy"
      Cashier = game.Workspace.Stores.FineArt.Timothy
      StoreItems =l
      Counter = game.Workspace.Stores.FineArt.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="GateXOR" or w.Name=="NeonWireOrange" then
      NameStore = "Lincoln"
      Cashier = game.Workspace.Stores.LogicStore.Lincoln
      StoreItems =l
      Counter = game.Workspace.Stores.LogicStore.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="BeachBall" or w.Name=="Cookie" then
      NameStore = "Guy"
      Cashier = game:GetService("Workspace").Stores.SeaSide.Guy
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.SeaSide.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="StrangeMan" or w.Name=="EndtimesChainsaw" then
      NameStore = "sneakypotato7"
      Cashier = game:GetService("Workspace").Stores.BlackMarket.sneakypotato7
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.BlackMarket.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="GoldGameCube" or w.Name=="GoldConveyorFunnel" then
      NameStore = "Todd"
      Cashier =game:GetService("Workspace").Stores.VIPSHOP.Todd
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.VIPSHOP.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="Playstation" or w.Name=="SawmillGift" then
      NameStore = "Mr.Bacon"
      Cashier =game:GetService("Workspace").Stores.MountainSide["Mr.Bacon"]
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.MountainSide.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="MegaConveyorFunnel" or w.Name=="GameCube" then
      NameStore = "Bloxyway"
      Cashier =game:GetService("Workspace").Stores.SamsStuff.Bloxyway
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.SamsStuff.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="StorageBox" or w.Name=="StorageBox" then
      NameStore = "Geck"
      Cashier =game:GetService("Workspace").Stores.BoatsStore.Geck
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.BoatsStore.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="FireRock" or w.Name=="PotFrost" then
      NameStore = "OGxOutcast"
      Cashier =game:GetService("Workspace").Stores.PlanterStore.OGxOutcast
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.PlanterStore.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="LumberCD" or w.Name=="UtilityVolt" then
      NameStore = "NotPlantomic56"
      Cashier =game:GetService("Workspace").Stores.TravelingTrader.NotPlantomic56
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.TravelingTrader.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="Eye1" or w.Name=="PumpkinClassic" then
      NameStore = "Sally"
      Cashier =game:GetService("Workspace").Stores.SallysSeasonal.Sally
      StoreItems =l
      Counter =game:GetService("Workspace").Stores.SallysSeasonal.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="LumberCDDab" or w.Name=="Lemon" then
      NameStore = "dab529"
      Cashier =game:GetService("Workspace").Stores.StoneRUs.dab529
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.StoneRUs.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="LeafCutters" or w.Name=="LeafFurnace" then
      NameStore = "William"
      Cashier =game:GetService("Workspace").Stores.AutumnCatalog.William
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.AutumnCatalog.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="AxeIce" or w.Name=="Cocoa" then
      NameStore = "Cold Guy"
      Cashier =game:GetService("Workspace").Stores.Igloo["Cold Guy"]
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.Igloo.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="Egg" or w.Name=="HappyBall" then
      NameStore = "Plantomic56"
      Cashier =game:GetService("Workspace").Stores.PlantomicsChoice.Plantomic56
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.PlantomicsChoice.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="Wall2Round" or w.Name=="WritableSign" then
      NameStore = "Manachron"
      Cashier =game:GetService("Workspace").Stores.FineFinds.Manachron
      StoreItems =l
      Counter= game:GetService("Workspace").Stores.FineFinds.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="SaplingCrate" or w.Name=="Planter2" then
      NameStore = "Billy"
      Cashier =game:GetService("Workspace").Stores.SaplingCart.Billy
      StoreItems =l
      Counter= game:GetService("Workspace").Stores.SaplingCart.Counter.CFrame + Vector3.new(0, .4, 0)




    end

  end




  if NameStore~=nil then
    return{NameStore,Cashier,cashierIds[Cashier.Name],Counter,StoreItems}
  end
end

function autobuyv2(o)


  local item=nil
  local ltem

  item=finditem(o)

  if item==nil then
    notify("搬运","没有找到商品或者没有刷新，请你等待",4)
    repeat
      item=finditem(o)
      wait()

    until item~=nil

  end

  ltem=item[5]


  game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,item[4],lp, nil, ltem, true)



  game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted:InvokeServer({["Character"] = item[2], ["Name"] =item[1], ["ID"] = tonumber(item[3])}, "ConfirmPurchase")



  return o
end

function autobuy(o, r)
  bai.autocsdx = game.Workspace.PlayerModels.ChildAdded:connect(function(v)

    game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,bai.autobuyset,lp, nil, v, true)

  end)
  for e = 1, r do
    if bai.autobuystop==false then
      autobuyv2(o)
    end

  end
  spawn(function()
    wait(1)
    bai.autocsdx:Disconnect();
    bai.autocsdx=nil;
  end)
  return o, r
end
function tpitems(name)
  local plr = bai.cswjia
  local StealType = name

  for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
    if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == plr then
      if StealType ~= "TreeClass" then
        if v:FindFirstChild("Type") and tostring(v.Type.Value) == StealType then
          if v.PrimaryPart then
            game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,bai.itemset,lp, nil, v, true)
          end
        end
       else

        if v:FindFirstChild("TreeClass") then

          spawn(function()
            for i=1 ,20 do
              game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(v.WoodSection)
              game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v.WoodSection)
              game:GetService("RunService").Stepped:wait();
            end
            v.WoodSection.CFrame= bai.itemset
          end)
          task.wait()



        end





      end
    end

  end
  notfy("搬运","完成",4)
end

function shuaxinlb(zji)
  bai.dropdown={}
  if zji==true then
    for p, I in next,game.Players:GetChildren() do
      table.insert(bai.dropdown, I.Name)
    end
   else
    for p, I in next, game.Players:GetChildren() do
      if I ~= lp then
        table.insert(bai.dropdown, I.Name)
      end
    end
  end
end
shuaxinlb(true)
repeat task.wait() until game:IsLoaded()
game.StarterGui:SetCore("SendNotification", {
  Title = "已为您启用木材大亨功能",
  Text = "作者：搬运工:",
  Icon = "",
  Duration = 10,
})

local library = {}
local ToggleUI = false
library.currentTab = nil
library.flags = {}

local services = setmetatable({}, {
  __index = function(t, k)
    return game.GetService(game, k)
  end
})

local mouse = services.Players.LocalPlayer:GetMouse()

function Tween(obj, t, data)
  services.TweenService:Create(obj, TweenInfo.new(t[1], Enum.EasingStyle[t[2]], Enum.EasingDirection[t[3]]), data):Play()
  return true
end

function Ripple(obj)
  spawn(function()
    if obj.ClipsDescendants ~= true then
      obj.ClipsDescendants = true
    end
    local Ripple = Instance.new("ImageLabel")
    Ripple.Name = "Ripple"
    Ripple.Parent = obj
    Ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ripple.BackgroundTransparency = 1.000
    Ripple.ZIndex = 8
    Ripple.Image = "rbxassetid://16785029075"
    Ripple.ImageTransparency = 0.800
    Ripple.ScaleType = Enum.ScaleType.Fit
    Ripple.ImageColor3 = Color3.fromRGB(255, 255, 255)
    Ripple.Position = UDim2.new((mouse.X - Ripple.AbsolutePosition.X) / obj.AbsoluteSize.X, 0, (mouse.Y - Ripple.AbsolutePosition.Y) / obj.AbsoluteSize.Y, 0)
    Tween(Ripple, {.3, 'Linear', 'InOut'}, {Position = UDim2.new(-5.5, 0, -5.5, 0), Size = UDim2.new(12, 0, 12, 0)})
    wait(0.15)
    Tween(Ripple, {.3, 'Linear', 'InOut'}, {ImageTransparency = 1})
    wait(.3)
    Ripple:Destroy()
  end)
end

local toggled = false

-- # Switch Tabs # --
local switchingTabs = false
function switchTab(new)
  if switchingTabs then return end
  local old = library.currentTab
  if old == nil then
    new[2].Visible = true
    library.currentTab = new
    services.TweenService:Create(new[1], TweenInfo.new(0.1), {ImageTransparency = 0}):Play()
    services.TweenService:Create(new[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0}):Play()
    return
  end

  if old[1] == new[1] then return end
  switchingTabs = true
  library.currentTab = new

  services.TweenService:Create(old[1], TweenInfo.new(0.1), {ImageTransparency = 0.2}):Play()
  services.TweenService:Create(new[1], TweenInfo.new(0.1), {ImageTransparency = 0}):Play()
  services.TweenService:Create(old[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0.2}):Play()
  services.TweenService:Create(new[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0}):Play()

  old[2].Visible = false
  new[2].Visible = true

  task.wait(0.1)

  switchingTabs = false
end

-- # Drag, Stolen from Kiriot or Wally # --
function drag(frame, hold)
  if not hold then
    hold = frame
  end
  local dragging
  local dragInput
  local dragStart
  local startPos

  local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
  end

  hold.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
      dragging = true
      dragStart = input.Position
      startPos = frame.Position

      input.Changed:Connect(function()
        if input.UserInputState == Enum.UserInputState.End then
          dragging = false
        end
      end)
    end
  end)

  frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
      dragInput = input
    end
  end)

  services.UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
      update(input)
    end
  end)
end

function library.new(library, name,theme)
  for _, v in next, services.CoreGui:GetChildren() do
    if v.Name == "qing" then
      v:Destroy()
    end
  end
  if theme == 'qing' then
    MainColor = Color3.fromRGB(10, 25, 255)
    Background = Color3.fromRGB(10, 25, 255)
    zyColor= Color3.fromRGB(10, 25, 255)
    beijingColor = Color3.fromRGB(10, 25, 255)
   else
    MainColor = Color3.fromRGB(0, 51, 179)
    Background = Color3.fromRGB(0, 51, 179)
    zyColor= Color3.fromRGB(0, 51, 179)
    beijingColor = Color3.fromRGB(0, 51, 179)
  end
  local dogent = Instance.new("ScreenGui")
  local OP = Instance.new("ImageLabel")
  local Main = Instance.new("Frame")
  local TabMain = Instance.new("Frame")
  local MainC = Instance.new("UICorner")
  local SB = Instance.new("Frame")
  local SBC = Instance.new("UICorner")
  local Side = Instance.new("Frame")
  local SideG = Instance.new("UIGradient")
  local TabBtns = Instance.new("ScrollingFrame")
  local TabBtnsL = Instance.new("UIListLayout")
  local ScriptTitle = Instance.new("TextLabel")
  local SBG = Instance.new("UIGradient")
  local Open = Instance.new("TextButton")
  local UIG=Instance.new("UIGradient")
  local DropShadowHolder = Instance.new("Frame")
  local DropShadow = Instance.new("ImageLabel")
  local UICornerMain = Instance.new("UICorner")
  local UIGradient=Instance.new("UIGradient")
  local UIGradientTitle=Instance.new("UIGradient")

  if syn and syn.protect_gui then syn.protect_gui(dogent) end

  dogent.Name = "qing"
  dogent.Parent = services.CoreGui

  function UiDestroy()
    dogent:Destroy()
  end

  function ToggleUILib()
    if not ToggleUI then
      dogent.Enabled = false
      ToggleUI = true
     else
      ToggleUI = false
      dogent.Enabled = true
    end
  end

  Main.Name = "Main"
  Main.Parent = dogent
  Main.AnchorPoint = Vector2.new(0.5, 0.5)
  Main.BackgroundColor3 = Background
  Main.BorderColor3 = MainColor
  Main.Position = UDim2.new(0.5, 0, 0.5, 0)
  Main.Size = UDim2.new(0, 572, 0, 353)
  Main.ZIndex = 1
  Main.Active = true
  Main.Draggable = true
  services.UserInputService.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
      if Main.Visible == true then
        Main.Visible = false else
        Main.Visible = true
      end
    end
  end)
  drag(Main)

  UICornerMain.Parent = Main
  UICornerMain.CornerRadius = UDim.new(0,3)

  OP.Parent = Main
  OP.Image = "rbxassetid://16785029075"
  OP.Size = UDim2.new(0, 572, 0, 353)

  DropShadowHolder.Name = "DropShadowHolder"
  DropShadowHolder.Parent = Main
  DropShadowHolder.BackgroundTransparency = 1.000
  DropShadowHolder.BorderSizePixel = 0
  DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
  DropShadowHolder.BorderColor3 = Color3.fromRGB(255,255,255)
  DropShadowHolder.ZIndex = 0

  DropShadow.Name = "DropShadow"
  DropShadow.Parent = DropShadowHolder
  DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
  DropShadow.BackgroundTransparency = 1.000
  DropShadow.BorderSizePixel = 0
  DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
  DropShadow.Size = UDim2.new(1, 43, 1, 43)
  DropShadow.ZIndex = 0
  DropShadow.Image = "rbxassetid://6015897843"
  DropShadow.ImageColor3 = Color3.fromRGB(255,255,255)
  DropShadow.ImageTransparency = 0.500
  DropShadow.ScaleType = Enum.ScaleType.Slice
  DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)


  UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.10, Color3.fromRGB(255, 127, 0)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(0.30, Color3.fromRGB(0, 255, 0)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 0, 255)), ColorSequenceKeypoint.new(0.60, Color3.fromRGB(139, 0, 255)), ColorSequenceKeypoint.new(0.70, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.80, Color3.fromRGB(255, 127, 0)), ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 0))}
  UIGradient.Parent = DropShadow

  local TweenService = game:GetService("TweenService")
  local tweeninfo = TweenInfo.new(7, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
  local tween = TweenService:Create(UIGradient, tweeninfo, {Rotation = 360})
  tween:Play()

  function toggleui()
    toggled = not toggled
    spawn(function()
      if toggled then wait(0.3) end
    end)
    Tween(Main, {0.3, 'Sine', 'InOut'}, {
      Size = UDim2.new(0, 609, 0, (toggled and 505 or 0))
    })
  end

  TabMain.Name = "TabMain"
  TabMain.Parent = Main
  TabMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  TabMain.BackgroundTransparency = 1.000
  TabMain.Position = UDim2.new(0.217000037, 0, 0, 3)
  TabMain.Size = UDim2.new(0, 448, 0, 353)

  MainC.CornerRadius = UDim.new(0, 5.5)
  MainC.Name = "MainC"
  MainC.Parent = Frame

  SB.Name = "SB"
  SB.Parent = Main
  SB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  SB.BorderColor3 = MainColor
  SB.Size = UDim2.new(0, 8, 0, 353)

  SBC.CornerRadius = UDim.new(0, 6)
  SBC.Name = "SBC"
  SBC.Parent = SB

  Side.Name = "Side"
  Side.Parent = SB
  Side.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Side.BorderColor3 = Color3.fromRGB(255, 255, 255)
  Side.BorderSizePixel = 0
  Side.ClipsDescendants = true
  Side.Position = UDim2.new(1, 0, 0, 0)
  Side.Size = UDim2.new(0, 110, 0, 353)

  SideG.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, zyColor), ColorSequenceKeypoint.new(1.00, zyColor)}
  SideG.Rotation = 90
  SideG.Name = "SideG"
  SideG.Parent = Side

  TabBtns.Name = "TabBtns"
  TabBtns.Parent = Side
  TabBtns.Active = true
  TabBtns.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  TabBtns.BackgroundTransparency = 1.000
  TabBtns.BorderSizePixel = 0
  TabBtns.Position = UDim2.new(0, 0, 0.0973535776, 0)
  TabBtns.Size = UDim2.new(0, 110, 0, 318)
  TabBtns.CanvasSize = UDim2.new(0, 0, 1, 0)
  TabBtns.ScrollBarThickness = 0

  TabBtnsL.Name = "TabBtnsL"
  TabBtnsL.Parent = TabBtns
  TabBtnsL.SortOrder = Enum.SortOrder.LayoutOrder
  TabBtnsL.Padding = UDim.new(0, 12)

  ScriptTitle.Name = "ScriptTitle"
  ScriptTitle.Parent = Side
  ScriptTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  ScriptTitle.BackgroundTransparency = 1.000
  ScriptTitle.Position = UDim2.new(0, 0, 0.00953488424, 0)
  ScriptTitle.Size = UDim2.new(0, 102, 0, 20)
  ScriptTitle.Font = Enum.Font.GothamSemibold
  ScriptTitle.Text = name
  ScriptTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
  ScriptTitle.TextSize = 14.000
  ScriptTitle.TextScaled = true
  ScriptTitle.TextXAlignment = Enum.TextXAlignment.Left

  UIGradientTitle.Parent = ScriptTitle

  local function NPLHKB_fake_script()
    local script = Instance.new('LocalScript', ScriptTitle)

    local button = script.Parent
    local gradient = button.UIGradient
    local ts = game:GetService("TweenService")
    local ti = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local offset = {Offset = Vector2.new(1, 0)}
    local create = ts:Create(gradient, ti, offset)
    local startingPos = Vector2.new(-1, 0)
    local list = {}
    local s, kpt = ColorSequence.new, ColorSequenceKeypoint.new
    local counter = 0
    local status = "down"
    gradient.Offset = startingPos
    local function rainbowColors()
      local sat, val = 255, 255
      for i = 1, 10 do
        local hue = i * 17
        table.insert(list, Color3.fromHSV(hue / 255, sat / 255, val / 255))
      end
    end
    rainbowColors()
    gradient.Color = s({
      kpt(0, list[#list]),
      kpt(0.5, list[#list - 1]),
      kpt(1, list[#list - 2])
    })
    counter = #list
    local function animate()
      create:Play()
      create.Completed:Wait()
      gradient.Offset = startingPos
      gradient.Rotation = 180
      if counter == #list - 1 and status == "down" then
        gradient.Color = s({
          kpt(0, gradient.Color.Keypoints[1].Value),
          kpt(0.5, list[#list]),
          kpt(1, list[1])
        })
        counter = 1
        status = "up"
       elseif counter == #list and status == "down" then
        gradient.Color = s({
          kpt(0, gradient.Color.Keypoints[1].Value),
          kpt(0.5, list[1]),
          kpt(1, list[2])
        })
        counter = 2
        status = "up"
       elseif counter <= #list - 2 and status == "down" then
        gradient.Color = s({
          kpt(0, gradient.Color.Keypoints[1].Value),
          kpt(0.5, list[counter + 1]),
          kpt(1, list[counter + 2])
        })
        counter = counter + 2
        status = "up"
      end
      create:Play()
      create.Completed:Wait()
      gradient.Offset = startingPos
      gradient.Rotation = 0
      if counter == #list - 1 and status == "up" then
        gradient.Color = s({

          kpt(0, list[1]),
          kpt(0.5, list[#list]),
          kpt(1, gradient.Color.Keypoints[3].Value)
        })
        counter = 1
        status = "down"
       elseif counter == #list and status == "up" then
        gradient.Color = s({
          kpt(0, list[2]),
          kpt(0.5, list[1]),
          kpt(1, gradient.Color.Keypoints[3].Value)
        })
        counter = 2
        status = "down"
       elseif counter <= #list - 2 and status == "up" then
        gradient.Color = s({
          kpt(0, list[counter + 2]),
          kpt(0.5, list[counter + 1]),
          kpt(1, gradient.Color.Keypoints[3].Value)
        })
        counter = counter + 2
        status = "down"
      end
      animate()
    end
    animate()

  end
  coroutine.wrap(NPLHKB_fake_script)()

  SBG.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, zyColor), ColorSequenceKeypoint.new(1.00, zyColor)}
  SBG.Rotation = 90
  SBG.Name = "SBG"
  SBG.Parent = SB

  TabBtnsL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    TabBtns.CanvasSize = UDim2.new(0, 0, 0, TabBtnsL.AbsoluteContentSize.Y + 18)
  end)
  Open.Name = "Open"
  Open.Parent = dogent
  Open.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
  Open.Position = UDim2.new(0.00829315186, 0, 0.31107837, 0)
  Open.Size = UDim2.new(0, 61, 0, 32)
  Open.Font = Enum.Font.SourceSans
  Open.Text = "关/开"
  Open.TextColor3 = Color3.fromRGB(255, 255, 255)
  Open.TextSize = 14.000
  Open.Active = true
  Open.Draggable = true
  Open.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
  end)
  UIG.Parent = Open
  local window = {}
  function window.Tab(window, name, icon)
    local Tab = Instance.new("ScrollingFrame")
    local TabIco = Instance.new("ImageLabel")
    local TabText = Instance.new("TextLabel")
    local TabBtn = Instance.new("TextButton")
    local TabL = Instance.new("UIListLayout")

    Tab.Name = "Tab"
    Tab.Parent = TabMain
    Tab.Active = true
    Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tab.BackgroundTransparency = 1.000
    Tab.Size = UDim2.new(1, 0, 1, 0)
    Tab.ScrollBarThickness = 2
    Tab.Visible = false

    TabIco.Name = "TabIco"
    TabIco.Parent = TabBtns
    TabIco.BackgroundTransparency = 1.000
    TabIco.BorderSizePixel = 0
    TabIco.Size = UDim2.new(0, 24, 0, 24)
    TabIco.Image = ("rbxassetid://%s"):format((icon or 4370341699))
    TabIco.ImageTransparency = 0.2

    TabText.Name = "TabText"
    TabText.Parent = TabIco
    TabText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabText.BackgroundTransparency = 1.000
    TabText.Position = UDim2.new(1.41666663, 0, 0, 0)
    TabText.Size = UDim2.new(0, 76, 0, 24)
    TabText.Font = Enum.Font.GothamSemibold
    TabText.Text = name
    TabText.TextColor3 = Color3.fromRGB(255, 255, 255)
    TabText.TextSize = 14.000
    TabText.TextXAlignment = Enum.TextXAlignment.Left
    TabText.TextTransparency = 0.2

    TabBtn.Name = "TabBtn"
    TabBtn.Parent = TabIco
    TabBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabBtn.BackgroundTransparency = 1.000
    TabBtn.BorderSizePixel = 0
    TabBtn.Size = UDim2.new(0, 110, 0, 24)
    TabBtn.AutoButtonColor = false
    TabBtn.Font = Enum.Font.SourceSans
    TabBtn.Text = ""
    TabBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
    TabBtn.TextSize = 14.000

    TabL.Name = "TabL"
    TabL.Parent = Tab
    TabL.SortOrder = Enum.SortOrder.LayoutOrder
    TabL.Padding = UDim.new(0, 4)

    TabBtn.MouseButton1Click:Connect(function()
      spawn(function()
        Ripple(TabBtn)
      end)
      switchTab({TabIco, Tab})
    end)

    if library.currentTab == nil then switchTab({TabIco, Tab}) end

    TabL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
      Tab.CanvasSize = UDim2.new(0, 0, 0, TabL.AbsoluteContentSize.Y + 8)
    end)

    local tab = {}
    function tab.section(tab, name, TabVal)
      local Section = Instance.new("Frame")
      local SectionC = Instance.new("UICorner")
      local SectionText = Instance.new("TextLabel")
      local SectionOpen = Instance.new("ImageLabel")
      local SectionOpened = Instance.new("ImageLabel")
      local SectionToggle = Instance.new("ImageButton")
      local Objs = Instance.new("Frame")
      local ObjsL = Instance.new("UIListLayout")

      Section.Name = "Section"
      Section.Parent = Tab
      Section.BackgroundColor3 = Color3.fromRGB(102, 190, 193)
      Section.BackgroundTransparency = 1.000
      Section.BorderSizePixel = 0
      Section.ClipsDescendants = true
      Section.Size = UDim2.new(0.981000006, 0, 0, 36)

      SectionC.CornerRadius = UDim.new(0, 6)
      SectionC.Name = "SectionC"
      SectionC.Parent = Section

      SectionText.Name = "SectionText"
      SectionText.Parent = Section
      SectionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      SectionText.BackgroundTransparency = 1.000
      SectionText.Position = UDim2.new(0.0887396261, 0, 0, 0)
      SectionText.Size = UDim2.new(0, 401, 0, 36)
      SectionText.Font = Enum.Font.GothamSemibold
      SectionText.Text = name
      SectionText.TextColor3 = Color3.fromRGB(255, 255, 255)
      SectionText.TextSize = 16.000
      SectionText.TextXAlignment = Enum.TextXAlignment.Left

      SectionOpen.Name = "SectionOpen"
      SectionOpen.Parent = SectionText
      SectionOpen.BackgroundTransparency = 1
      SectionOpen.BorderSizePixel = 0
      SectionOpen.Position = UDim2.new(0, -33, 0, 5)
      SectionOpen.Size = UDim2.new(0, 26, 0, 26)
      SectionOpen.Image = "http://www.roblox.com/asset/?id=6031302934"

      SectionOpened.Name = "SectionOpened"
      SectionOpened.Parent = SectionOpen
      SectionOpened.BackgroundTransparency = 1.000
      SectionOpened.BorderSizePixel = 0
      SectionOpened.Size = UDim2.new(0, 26, 0, 26)
      SectionOpened.Image = "http://www.roblox.com/asset/?id=6031302932"
      SectionOpened.ImageTransparency = 1.000

      SectionToggle.Name = "SectionToggle"
      SectionToggle.Parent = SectionOpen
      SectionToggle.BackgroundTransparency = 1
      SectionToggle.BorderSizePixel = 0
      SectionToggle.Size = UDim2.new(0, 26, 0, 26)

      Objs.Name = "Objs"
      Objs.Parent = Section
      Objs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Objs.BackgroundTransparency = 1
      Objs.BorderSizePixel = 0
      Objs.Position = UDim2.new(0, 6, 0, 36)
      Objs.Size = UDim2.new(0.986347735, 0, 0, 0)

      ObjsL.Name = "ObjsL"
      ObjsL.Parent = Objs
      ObjsL.SortOrder = Enum.SortOrder.LayoutOrder
      ObjsL.Padding = UDim.new(0, 8)

      local open = TabVal
      if TabVal ~= false then
        Section.Size = UDim2.new(0.981000006, 0, 0, open and 36 + ObjsL.AbsoluteContentSize.Y + 8 or 36)
        SectionOpened.ImageTransparency = (open and 0 or 1)
        SectionOpen.ImageTransparency = (open and 1 or 0)
      end

      SectionToggle.MouseButton1Click:Connect(function()
        open = not open
        Section.Size = UDim2.new(0.981000006, 0, 0, open and 36 + ObjsL.AbsoluteContentSize.Y + 8 or 36)
        SectionOpened.ImageTransparency = (open and 0 or 1)
        SectionOpen.ImageTransparency = (open and 1 or 0)
      end)

      ObjsL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        if not open then return end
        Section.Size = UDim2.new(0.981000006, 0, 0, 36 + ObjsL.AbsoluteContentSize.Y + 8)
      end)

      local section = {}
      function section.Button(section, text, callback)
        local callback = callback or function() end

        local BtnModule = Instance.new("Frame")
        local Btn = Instance.new("TextButton")
        local BtnC = Instance.new("UICorner")

        BtnModule.Name = "BtnModule"
        BtnModule.Parent = Objs
        BtnModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        BtnModule.BackgroundTransparency = 1.000
        BtnModule.BorderSizePixel = 0
        BtnModule.Position = UDim2.new(0, 0, 0, 0)
        BtnModule.Size = UDim2.new(0, 428, 0, 38)

        Btn.Name = "Btn"
        Btn.Parent = BtnModule
        Btn.BackgroundColor3 = zyColor
        Btn.BorderSizePixel = 0
        Btn.Size = UDim2.new(0, 428, 0, 38)
        Btn.AutoButtonColor = false
        Btn.Font = Enum.Font.GothamSemibold
        Btn.Text = "   " .. text
        Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        Btn.TextSize = 16.000
        Btn.TextXAlignment = Enum.TextXAlignment.Left

        BtnC.CornerRadius = UDim.new(0, 6)
        BtnC.Name = "BtnC"
        BtnC.Parent = Btn

        Btn.MouseButton1Click:Connect(function()
          spawn(function()
            Ripple(Btn)
          end)
          spawn(callback)
        end)
      end

      function section:Label(text)
        local LabelModule = Instance.new("Frame")
        local TextLabel = Instance.new("TextLabel")
        local LabelC = Instance.new("UICorner")

        LabelModule.Name = "LabelModule"
        LabelModule.Parent = Objs
        LabelModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LabelModule.BackgroundTransparency = 1.000
        LabelModule.BorderSizePixel = 0
        LabelModule.Position = UDim2.new(0, 0, NAN, 0)
        LabelModule.Size = UDim2.new(0, 428, 0, 19)

        TextLabel.Parent = LabelModule
        TextLabel.BackgroundColor3 = zyColor
        TextLabel.Size = UDim2.new(0, 428, 0, 22)
        TextLabel.Font = Enum.Font.GothamSemibold
        TextLabel.Text = text
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 14.000

        LabelC.CornerRadius = UDim.new(0, 6)
        LabelC.Name = "LabelC"
        LabelC.Parent = TextLabel
        return TextLabel
      end

      function section.Toggle(section, text, flag, enabled, callback)
        local callback = callback or function() end
        local enabled = enabled or false
        assert(text, "No text provided")
        assert(flag, "No flag provided")

        library.flags[flag] = enabled

        local ToggleModule = Instance.new("Frame")
        local ToggleBtn = Instance.new("TextButton")
        local ToggleBtnC = Instance.new("UICorner")
        local ToggleDisable = Instance.new("Frame")
        local ToggleSwitch = Instance.new("Frame")
        local ToggleSwitchC = Instance.new("UICorner")
        local ToggleDisableC = Instance.new("UICorner")

        ToggleModule.Name = "ToggleModule"
        ToggleModule.Parent = Objs
        ToggleModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ToggleModule.BackgroundTransparency = 1.000
        ToggleModule.BorderSizePixel = 0
        ToggleModule.Position = UDim2.new(0, 0, 0, 0)
        ToggleModule.Size = UDim2.new(0, 428, 0, 38)

        ToggleBtn.Name = "ToggleBtn"
        ToggleBtn.Parent = ToggleModule
        ToggleBtn.BackgroundColor3 = zyColor
        ToggleBtn.BorderSizePixel = 0
        ToggleBtn.Size = UDim2.new(0, 428, 0, 38)
        ToggleBtn.AutoButtonColor = false
        ToggleBtn.Font = Enum.Font.GothamSemibold
        ToggleBtn.Text = "   " .. text
        ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        ToggleBtn.TextSize = 16.000
        ToggleBtn.TextXAlignment = Enum.TextXAlignment.Left

        ToggleBtnC.CornerRadius = UDim.new(0, 6)
        ToggleBtnC.Name = "ToggleBtnC"
        ToggleBtnC.Parent = ToggleBtn

        ToggleDisable.Name = "ToggleDisable"
        ToggleDisable.Parent = ToggleBtn
        ToggleDisable.BackgroundColor3 = Background
        ToggleDisable.BorderSizePixel = 0
        ToggleDisable.Position = UDim2.new(0.901869178, 0, 0.208881587, 0)
        ToggleDisable.Size = UDim2.new(0, 36, 0, 22)

        ToggleSwitch.Name = "ToggleSwitch"
        ToggleSwitch.Parent = ToggleDisable
        ToggleSwitch.BackgroundColor3 = beijingColor
        ToggleSwitch.Size = UDim2.new(0, 24, 0, 22)

        ToggleSwitchC.CornerRadius = UDim.new(0, 6)
        ToggleSwitchC.Name = "ToggleSwitchC"
        ToggleSwitchC.Parent = ToggleSwitch

        ToggleDisableC.CornerRadius = UDim.new(0, 6)
        ToggleDisableC.Name = "ToggleDisableC"
        ToggleDisableC.Parent = ToggleDisable

        local funcs = {
          SetState = function(self, state)
            if state == nil then state = not library.flags[flag] end
            if library.flags[flag] == state then return end
            services.TweenService:Create(ToggleSwitch, TweenInfo.new(0.2), {Position = UDim2.new(0, (state and ToggleSwitch.Size.X.Offset / 2 or 0), 0, 0), BackgroundColor3 = (state and Color3.fromRGB(255, 255, 255) or beijingColor)}):Play()
            library.flags[flag] = state
            callback(state)
          end,
          Module = ToggleModule
        }

        if enabled ~= false then
          funcs:SetState(flag,true)
        end

        ToggleBtn.MouseButton1Click:Connect(function()
          funcs:SetState()
        end)
        return funcs
      end

      function section.Keybind(section, text, default, callback)
      local callback = callback or function() end
        assert(text, "No text provided")
        assert(default, "No default key provided")

        local default = (typeof(default) == "string" and Enum.KeyCode[default] or default)
        local banned = {
          Return = true;
          Space = true;
          Tab = true;
          Backquote = true;
          CapsLock = true;
          Escape = true;
          Unknown = true;
        }
        local shortNames = {
          RightControl = 'Right Ctrl',
          LeftControl = 'Left Ctrl',
          LeftShift = 'Left Shift',
          RightShift = 'Right Shift',
          Semicolon = ";",
          Quote = '"',
          LeftBracket = '[',
          RightBracket = ']',
          Equals = '=',
          Minus = '-',
          RightAlt = 'Right Alt',
          LeftAlt = 'Left Alt'
        }

        local bindKey = default
        local keyTxt = (default and (shortNames[default.Name] or default.Name) or "None")

        local KeybindModule = Instance.new("Frame")
        local KeybindBtn = Instance.new("TextButton")
        local KeybindBtnC = Instance.new("UICorner")
        local KeybindValue = Instance.new("TextButton")
        local KeybindValueC = Instance.new("UICorner")
        local KeybindL = Instance.new("UIListLayout")
        local UIPadding = Instance.new("UIPadding")

        KeybindModule.Name = "KeybindModule"
        KeybindModule.Parent = Objs
        KeybindModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        KeybindModule.BackgroundTransparency = 1.000
        KeybindModule.BorderSizePixel = 0
        KeybindModule.Position = UDim2.new(0, 0, 0, 0)
        KeybindModule.Size = UDim2.new(0, 428, 0, 38)

        KeybindBtn.Name = "KeybindBtn"
        KeybindBtn.Parent = KeybindModule
        KeybindBtn.BackgroundColor3 = zyColor
        KeybindBtn.BorderSizePixel = 0
        KeybindBtn.Size = UDim2.new(0, 428, 0, 38)
        KeybindBtn.AutoButtonColor = false
        KeybindBtn.Font = Enum.Font.GothamSemibold
        KeybindBtn.Text = "   " .. text
        KeybindBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        KeybindBtn.TextSize = 16.000
        KeybindBtn.TextXAlignment = Enum.TextXAlignment.Left
        KeybindBtnC.CornerRadius = UDim.new(0, 6)
        KeybindBtnC.Name = "KeybindBtnC"
        KeybindBtnC.Parent = KeybindBtn

        KeybindValue.Name = "KeybindValue"
        KeybindValue.Parent = KeybindBtn
        KeybindValue.BackgroundColor3 = Background
        KeybindValue.BorderSizePixel = 0
        KeybindValue.Position = UDim2.new(0.763033211, 0, 0.289473683, 0)
        KeybindValue.Size = UDim2.new(0, 100, 0, 28)
        KeybindValue.AutoButtonColor = false
        KeybindValue.Font = Enum.Font.Gotham
        KeybindValue.Text = keyTxt
        KeybindValue.TextColor3 = Color3.fromRGB(255, 255, 255)
        KeybindValue.TextSize = 14.000

        KeybindValueC.CornerRadius = UDim.new(0, 6)
        KeybindValueC.Name = "KeybindValueC"
        KeybindValueC.Parent = KeybindValue

        KeybindL.Name = "KeybindL"
        KeybindL.Parent = KeybindBtn
        KeybindL.HorizontalAlignment = Enum.HorizontalAlignment.Right
        KeybindL.SortOrder = Enum.SortOrder.LayoutOrder
        KeybindL.VerticalAlignment = Enum.VerticalAlignment.Center

        UIPadding.Parent = KeybindBtn
        UIPadding.PaddingRight = UDim.new(0, 6)

        services.UserInputService.InputBegan:Connect(function(inp, gpe)
          if gpe then return end
          if inp.UserInputType ~= Enum.UserInputType.Keyboard then return end
          if inp.KeyCode ~= bindKey then return end
          callback(bindKey.Name)
        end)

        KeybindValue.MouseButton1Click:Connect(function()
          KeybindValue.Text = "..."
          wait()
          local key, uwu = services.UserInputService.InputEnded:Wait()
          local keyName = tostring(key.KeyCode.Name)
          if key.UserInputType ~= Enum.UserInputType.Keyboard then
            KeybindValue.Text = keyTxt
            return
          end
          if banned[keyName] then
            KeybindValue.Text = keyTxt
            return
          end
          wait()
          bindKey = Enum.KeyCode[keyName]
          KeybindValue.Text = shortNames[keyName] or keyName
        end)

        KeybindValue:GetPropertyChangedSignal("TextBounds"):Connect(function()
          KeybindValue.Size = UDim2.new(0, KeybindValue.TextBounds.X + 30, 0, 28)
        end)
        KeybindValue.Size = UDim2.new(0, KeybindValue.TextBounds.X + 30, 0, 28)
      end

      function section.Textbox(section, text, flag, default, callback)
        local callback = callback or function() end
        assert(text, "No text provided")
        assert(flag, "No flag provided")
        assert(default, "No default text provided")

        library.flags[flag] = default

        local TextboxModule = Instance.new("Frame")
        local TextboxBack = Instance.new("TextButton")
        local TextboxBackC = Instance.new("UICorner")
        local BoxBG = Instance.new("TextButton")
        local BoxBGC = Instance.new("UICorner")
        local TextBox = Instance.new("TextBox")
        local TextboxBackL = Instance.new("UIListLayout")
        local TextboxBackP = Instance.new("UIPadding")

        TextboxModule.Name = "TextboxModule"
        TextboxModule.Parent = Objs
        TextboxModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextboxModule.BackgroundTransparency = 1.000
        TextboxModule.BorderSizePixel = 0
        TextboxModule.Position = UDim2.new(0, 0, 0, 0)
        TextboxModule.Size = UDim2.new(0, 428, 0, 38)
        TextboxBack.Name = "TextboxBack"
        TextboxBack.Parent = TextboxModule
        TextboxBack.BackgroundColor3 = zyColor
        TextboxBack.BorderSizePixel = 0
        TextboxBack.Size = UDim2.new(0, 428, 0, 38)
        TextboxBack.AutoButtonColor = false
        TextboxBack.Font = Enum.Font.GothamSemibold
        TextboxBack.Text = "   " .. text
        TextboxBack.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextboxBack.TextSize = 16.000
        TextboxBack.TextXAlignment = Enum.TextXAlignment.Left

        TextboxBackC.CornerRadius = UDim.new(0, 6)
        TextboxBackC.Name = "TextboxBackC"
        TextboxBackC.Parent = TextboxBack

        BoxBG.Name = "BoxBG"
        BoxBG.Parent = TextboxBack
        BoxBG.BackgroundColor3 = Background
        BoxBG.BorderSizePixel = 0
        BoxBG.Position = UDim2.new(0.763033211, 0, 0.289473683, 0)
        BoxBG.Size = UDim2.new(0, 100, 0, 28)
        BoxBG.AutoButtonColor = false
        BoxBG.Font = Enum.Font.Gotham
        BoxBG.Text = ""
        BoxBG.TextColor3 = Color3.fromRGB(255, 255, 255)
        BoxBG.TextSize = 14.000

        BoxBGC.CornerRadius = UDim.new(0, 6)
        BoxBGC.Name = "BoxBGC"
        BoxBGC.Parent = BoxBG

        TextBox.Parent = BoxBG
        TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.BackgroundTransparency = 1.000
        TextBox.BorderSizePixel = 0
        TextBox.Size = UDim2.new(1, 0, 1, 0)
        TextBox.Font = Enum.Font.Gotham
        TextBox.Text = default
        TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.TextSize = 14.000

        TextboxBackL.Name = "TextboxBackL"
        TextboxBackL.Parent = TextboxBack
        TextboxBackL.HorizontalAlignment = Enum.HorizontalAlignment.Right
        TextboxBackL.SortOrder = Enum.SortOrder.LayoutOrder
        TextboxBackL.VerticalAlignment = Enum.VerticalAlignment.Center

        TextboxBackP.Name = "TextboxBackP"
        TextboxBackP.Parent = TextboxBack
        TextboxBackP.PaddingRight = UDim.new(0, 6)

        TextBox.FocusLost:Connect(function()
          if TextBox.Text == "" then
            TextBox.Text = default
          end
          library.flags[flag] = TextBox.Text
          callback(TextBox.Text)
        end)

        TextBox:GetPropertyChangedSignal("TextBounds"):Connect(function()
           BoxBG.Size = UDim2.new(0, TextBox.TextBounds.X + 30, 0, 28)
        end)
        BoxBG.Size = UDim2.new(0, TextBox.TextBounds.X + 30, 0, 28)
      end

      function section.Slider(section, text, flag, default, min, max, precise, callback)
        local callback = callback or function() end
        local min = min or 1
        local max = max or 10
        local default = default or min
        local precise = precise or false

        library.flags[flag] = default

        assert(text, "No text provided")
        assert(flag, "No flag provided")
        assert(default, "No default value provided")

        local SliderModule = Instance.new("Frame")
        local SliderBack = Instance.new("TextButton")
        local SliderBackC = Instance.new("UICorner")
        local SliderBar = Instance.new("Frame")
        local SliderBarC = Instance.new("UICorner")
        local SliderPart = Instance.new("Frame")
        local SliderPartC = Instance.new("UICorner")
        local SliderValBG = Instance.new("TextButton")
        local SliderValBGC = Instance.new("UICorner")
        local SliderValue = Instance.new("TextBox")
        local MinSlider = Instance.new("TextButton")
        local AddSlider = Instance.new("TextButton")

        SliderModule.Name = "SliderModule"
        SliderModule.Parent = Objs
        SliderModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderModule.BackgroundTransparency = 1.000
        SliderModule.BorderSizePixel = 0
        SliderModule.Position = UDim2.new(0, 0, 0, 0)
        SliderModule.Size = UDim2.new(0, 428, 0, 38)

        SliderBack.Name = "SliderBack"
        SliderBack.Parent = SliderModule
        SliderBack.BackgroundColor3 = zyColor
        SliderBack.BorderSizePixel = 0
        SliderBack.Size = UDim2.new(0, 428, 0, 38)
        SliderBack.AutoButtonColor = false
        SliderBack.Font = Enum.Font.GothamSemibold
        SliderBack.Text = "   " .. text
        SliderBack.TextColor3 = Color3.fromRGB(255, 255, 255)
        SliderBack.TextSize = 16.000
        SliderBack.TextXAlignment = Enum.TextXAlignment.Left

        SliderBackC.CornerRadius = UDim.new(0, 6)
        SliderBackC.Name = "SliderBackC"
        SliderBackC.Parent = SliderBack

        SliderBar.Name = "SliderBar"
        SliderBar.Parent = SliderBack
        SliderBar.AnchorPoint = Vector2.new(0, 0.5)
        SliderBar.BackgroundColor3 = Background
        SliderBar.BorderSizePixel = 0
        SliderBar.Position = UDim2.new(0.369000018, 40, 0.5, 0)
        SliderBar.Size = UDim2.new(0, 140, 0, 12)
        
        SliderBarC.CornerRadius = UDim.new(0, 4)
        SliderBarC.Name = "SliderBarC"
        SliderBarC.Parent = SliderBar

        SliderPart.Name = "SliderPart"
        SliderPart.Parent = SliderBar
        SliderPart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderPart.BorderSizePixel = 0
        SliderPart.Size = UDim2.new(0, 54, 0, 13)

        SliderPartC.CornerRadius = UDim.new(0, 4)
        SliderPartC.Name = "SliderPartC"
        SliderPartC.Parent = SliderPart

        SliderValBG.Name = "SliderValBG"
        SliderValBG.Parent = SliderBack
        SliderValBG.BackgroundColor3 = Background
        SliderValBG.BorderSizePixel = 0
        SliderValBG.Position = UDim2.new(0.883177578, 0, 0.131578952, 0)
        SliderValBG.Size = UDim2.new(0, 44, 0, 28)
        SliderValBG.AutoButtonColor = false
        SliderValBG.Font = Enum.Font.Gotham
        SliderValBG.Text = ""
        SliderValBG.TextColor3 = Color3.fromRGB(255, 255, 255)
        SliderValBG.TextSize = 14.000

        SliderValBGC.CornerRadius = UDim.new(0, 6)
        SliderValBGC.Name = "SliderValBGC"
        SliderValBGC.Parent = SliderValBG

        SliderValue.Name = "SliderValue"
        SliderValue.Parent = SliderValBG
        SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderValue.BackgroundTransparency = 1.000
        SliderValue.BorderSizePixel = 0
        SliderValue.Size = UDim2.new(1, 0, 1, 0)
        SliderValue.Font = Enum.Font.Gotham
        SliderValue.Text = "1000"
        SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
        SliderValue.TextSize = 14.000

        MinSlider.Name = "MinSlider"
        MinSlider.Parent = SliderModule
        MinSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MinSlider.BackgroundTransparency = 1.000
        MinSlider.BorderSizePixel = 0
        MinSlider.Position = UDim2.new(0.296728969, 40, 0.236842096, 0)
        MinSlider.Size = UDim2.new(0, 20, 0, 20)
        MinSlider.Font = Enum.Font.Gotham
        MinSlider.Text = "-"
        MinSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
        MinSlider.TextSize = 24.000
        MinSlider.TextWrapped = true

        AddSlider.Name = "AddSlider"
        AddSlider.Parent = SliderModule
        AddSlider.AnchorPoint = Vector2.new(0, 0.5)
        AddSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        AddSlider.BackgroundTransparency = 1.000
        AddSlider.BorderSizePixel = 0
        AddSlider.Position = UDim2.new(0.810906529, 0, 0.5, 0)
        AddSlider.Size = UDim2.new(0, 20, 0, 20)
        AddSlider.Font = Enum.Font.Gotham
        AddSlider.Text = "+"
        AddSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
        AddSlider.TextSize = 24.000
        AddSlider.TextWrapped = true

        local funcs = {
          SetValue = function(self, value)
            local percent = (mouse.X - SliderBar.AbsolutePosition.X) / SliderBar.AbsoluteSize.X
            if value then
              percent = (value - min) / (max - min)
            end
            percent = math.clamp(percent, 0, 1)
            if precise then
              value = value or tonumber(string.format("%.1f", tostring(min + (max - min) * percent)))
             else
              value = value or math.floor(min + (max - min) * percent)
            end
            library.flags[flag] = tonumber(value)
            SliderValue.Text = tostring(value)
            SliderPart.Size = UDim2.new(percent, 0, 1, 0)
            callback(tonumber(value))
          end
        }

        MinSlider.MouseButton1Click:Connect(function()
          local currentValue = library.flags[flag]
          currentValue = math.clamp(currentValue - 1, min, max)
          funcs:SetValue(currentValue)
        end)

        AddSlider.MouseButton1Click:Connect(function()
          local currentValue = library.flags[flag]
          currentValue = math.clamp(currentValue + 1, min, max)
          funcs:SetValue(currentValue)
        end)

        funcs:SetValue(default)

        local dragging, boxFocused, allowed = false, false, {
          [""] = true,
          ["-"] = true
        }

        SliderBar.InputBegan:Connect(function(input)
          if input.UserInputType == Enum.UserInputType.MouseButton1 then
            funcs:SetValue()
            dragging = true
          end
        end)

        services.UserInputService.InputEnded:Connect(function(input)
          if dragging and input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
          end
        end)

        services.UserInputService.InputChanged:Connect(function(input)
          if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            funcs:SetValue()
          end
        end)

        SliderBar.InputBegan:Connect(function(input)
          if input.UserInputType == Enum.UserInputType.Touch then
            funcs:SetValue()
            dragging = true
          end
        end)

        services.UserInputService.InputEnded:Connect(function(input)
          if dragging and input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
          end
        end)

        services.UserInputService.InputChanged:Connect(function(input)
          if dragging and input.UserInputType == Enum.UserInputType.Touch then
            funcs:SetValue()
          end
        end)

        SliderValue.Focused:Connect(function()
          boxFocused = true
        end)

        SliderValue.FocusLost:Connect(function()
          boxFocused = false
          if SliderValue.Text == "" then
            funcs:SetValue(default)
          end
        end)

        SliderValue:GetPropertyChangedSignal("Text"):Connect(function()
          if not boxFocused then return end
          SliderValue.Text = SliderValue.Text:gsub("%D+", "")

          local text = SliderValue.Text

          if not tonumber(text) then
            SliderValue.Text = SliderValue.Text:gsub('%D+', '')
           elseif not allowed[text] then
            if tonumber(text) > max then
              text = max
              SliderValue.Text = tostring(max)
            end
            funcs:SetValue(tonumber(text))
          end
        end)

        return funcs
      end
      function section.Dropdown(section, text, flag, options, callback)
        local callback = callback or function() end
        local options = options or {}
        assert(text, "No text provided")
        assert(flag, "No flag provided")

        library.flags[flag] = nil

        local DropdownModule = Instance.new("Frame")
        local DropdownTop = Instance.new("TextButton")
        local DropdownTopC = Instance.new("UICorner")
        local DropdownOpen = Instance.new("TextButton")
        local DropdownText = Instance.new("TextBox")
        local DropdownModuleL = Instance.new("UIListLayout")
        local Option = Instance.new("TextButton")
        local OptionC = Instance.new("UICorner")

        DropdownModule.Name = "DropdownModule"
        DropdownModule.Parent = Objs
        DropdownModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DropdownModule.BackgroundTransparency = 1.000
        DropdownModule.BorderSizePixel = 0
        DropdownModule.ClipsDescendants = true
        DropdownModule.Position = UDim2.new(0, 0, 0, 0)
        DropdownModule.Size = UDim2.new(0, 428, 0, 38)

        DropdownTop.Name = "DropdownTop"
        DropdownTop.Parent = DropdownModule
        DropdownTop.BackgroundColor3 = zyColor
        DropdownTop.BorderSizePixel = 0
        DropdownTop.Size = UDim2.new(0, 428, 0, 38)
        DropdownTop.AutoButtonColor = false
        DropdownTop.Font = Enum.Font.GothamSemibold
        DropdownTop.Text = ""
        DropdownTop.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropdownTop.TextSize = 16.000
        DropdownTop.TextXAlignment = Enum.TextXAlignment.Left

        DropdownTopC.CornerRadius = UDim.new(0, 6)
        DropdownTopC.Name = "DropdownTopC"
        DropdownTopC.Parent = DropdownTop

        DropdownOpen.Name = "DropdownOpen"
        DropdownOpen.Parent = DropdownTop
        DropdownOpen.AnchorPoint = Vector2.new(0, 0.5)
        DropdownOpen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DropdownOpen.BackgroundTransparency = 1.000
        DropdownOpen.BorderSizePixel = 0
        DropdownOpen.Position = UDim2.new(0.918383181, 0, 0.5, 0)
        DropdownOpen.Size = UDim2.new(0, 20, 0, 20)
        DropdownOpen.Font = Enum.Font.Gotham
        DropdownOpen.Text = "+"
        DropdownOpen.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropdownOpen.TextSize = 24.000
        DropdownOpen.TextWrapped = true
                if option.Text:lower():match(text:lower()) then
                  option.Visible = true
                 else
                  option.Visible = false
                end
              end
            end
          end
        end

        local open = false
        local ToggleDropVis = function()
          open = not open
          if open then setAllVisible() end
          DropdownOpen.Text = (open and "-" or "+")
          DropdownModule.Size = UDim2.new(0, 428, 0, (open and DropdownModuleL.AbsoluteContentSize.Y + 4 or 38))
        end

        DropdownOpen.MouseButton1Click:Connect(ToggleDropVis)
        DropdownText.Focused:Connect(function()
          if open then return end
          ToggleDropVis()
        end)

        DropdownText:GetPropertyChangedSignal("Text"):Connect(function()
          if not open then return end
          searchDropdown(DropdownText.Text)
        end)

        DropdownModuleL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
          if not open then return end
          DropdownModule.Size = UDim2.new(0, 428, 0, (DropdownModuleL.AbsoluteContentSize.Y + 4))
        end)

        local funcs = {}
        funcs.AddOption = function(self, option)
          local Option = Instance.new("TextButton")
          local OptionC = Instance.new("UICorner")

          Option.Name = "Option_" .. option
          Option.Parent = DropdownModule
          Option.BackgroundColor3 = zyColor
          Option.BorderSizePixel = 0
          Option.Position = UDim2.new(0, 0, 0.328125, 0)
          Option.Size = UDim2.new(0, 428, 0, 26)
          Option.AutoButtonColor = false
          Option.Font = Enum.Font.Gotham
          Option.Text = option
          Option.TextColor3 = Color3.fromRGB(255, 255, 255)
          Option.TextSize = 14.000

          OptionC.CornerRadius = UDim.new(0, 6)
          OptionC.Name = "OptionC"
          OptionC.Parent = Option

          Option.MouseButton1Click:Connect(function()
            ToggleDropVis()
            callback(Option.Text)
            DropdownText.Text = Option.Text
            library.flags[flag] = Option.Text
          end)
        end

        funcs.RemoveOption = function(self, option)
          local option = DropdownModule:FindFirstChild("Option_" .. option)
          if option then option:Destroy() end
        end

        funcs.SetOptions = function(self, options)
          for _, v in next, DropdownModule:GetChildren() do
            if v.Name:match("Option_") then
              v:Destroy()
            end
          end
          for _,v in next, options do
            funcs:AddOption(v)
          end
        end

        funcs:SetOptions(options)
        return funcs
      end
      return section
    end
    return tab
  end
  return window
end

local win = library:new("搬运--木材大亨2")
local Tab1 = win:Tab("玩家功能", "10882439086")
local Section3 = Tab1:section("玩家")
local Sectioncs = Tab1:section("传送")
local Sectionqccs = Tab1:section("汽车传送")
local Tab = win:Tab("主要功能", "10728953248")
local Section = Tab:section("斧头")
local Section1 = Tab:section("基地")
local Sectionchuanson = Tab:section("传送东西")
local Sectionzhengli = Tab:section("整理")
local Section5 = Tab:section("木头")
local SectionKJ = Tab:section("蓝图")
local Tab2 = win:Tab("环境", "4626047596")
local Sectionhuanjin = Tab2:section("环境")

Section3:Textbox("设置速度","TextBoxfalg","输入数字",function(s)

  spawn(function()
    while task.wait() do
      lp.Character.Humanoid.WalkSpeed = s
    end
  end)
end)
Section3:Textbox("设置跳跃","TextBoxfalg","输入数字",function(s)

  spawn(function()
    while task.wait() do
      game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = s
    end
  end)
end)
Section3:Textbox("设置高度","TextBoxfalg","输入数字",function(s)
  lp.Character.Humanoid.HipHeight=s
end)
Section3:Button("飞行", function()
  loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)
Sectioncs:Dropdown("传送","Dropdown",{"恶魔鸭祭坛","月神剑祭坛","回家","连接逻辑店","三叉戟祭坛","会员商店","画店","桥对岸","沙滩","火木","复仇剑祭坛","洞穴","码头","黑市","糖果原","雪地入口","盖克斯航运","玻璃冰木入口","云层","山边商品","章鱼哥祭坛","沼泽商店","石头商店","沼泽","冰胡","沙漠","辐射商店","核污染区","种子商人","鲍勃的店","家具店","车店","摩斯密码商店","盲盒商店","秋季商店"}, function(b)
  list = b
  if list == "恶魔鸭祭坛"then
    tp(CFrame.new(-208.76177978515625, 59.79999542236328, 924.8598022460938))

   elseif list == "月神剑祭坛"then
    tp(CFrame.new(-7612.0859375, 319.6391296386719, 4276.14990234375))

   elseif list == "洞穴" then

    tp(CFrame.new(-7229.9619140625, 390.3774108886719, 4686.23486328125))

   elseif list == "连接逻辑店" then
    tp(CFrame.new(4607, 9, -798))

   elseif list == "复仇剑祭坛" then
    tp(CFrame.new(6458.20703125, -85.10005187988281, -4557.05224609375))

   elseif list == "三叉戟祭坛" then
    tp(CFrame.new(-374.26605224609375, 15.62093734741211, -1340.554443359375))

   elseif list == "画店" then
    tp(CFrame.new(5207, -156, 719))

   elseif list == "火木" then
    tp(CFrame.new(-1585, 625, 1140))

   elseif list == "沙滩" then
    tp(CFrame.new(2549, 5, -42))

   elseif list == "桥对岸"then
    tp(CFrame.new(109,5,-1166))

   elseif list == "会员商店" then
    tp(CFrame.new(907,4,-92))
   elseif list == "码头" then
    tp(CFrame.new(1122,1,-203))

   elseif list == "黑市" then
    tp(CFrame.new(-22,61,1377))

   elseif list == "糖果原" then
    tp(CFrame.new(-561,272,2312))

   elseif list == "雪地入口"then
    tp(CFrame.new(-712.809, 26.8001, -248.328))

   elseif list == "盖克斯航运"then
    tp(CFrame.new(1894,-2,1581))

   elseif list == "玻璃冰木入口" then
    tp(CFrame.new(2305.939697265625, 255.29136657714844, 2976.620361328125))

   elseif list == "云层" then
    tp(CFrame.new(2073,495,2967))

   elseif list == "山边商品"then
    tp(CFrame.new(-640,160,374))

   elseif list == "章鱼哥祭坛" then
    tp(CFrame.new(-1622,196,941))

   elseif list == "沼泽商店" then
    tp(CFrame.new(-1274,133,-1443))

   elseif list == "沼泽" then
    tp(CFrame.new(-999,133,-1191))

   elseif list == "石头商店" then
    tp(CFrame.new(-2387,302,-1899))

   elseif list == "冰胡" then
    tp(CFrame.new(-2149,321,743))

   elseif list == "沙漠" then
    tp(CFrame.new(-520.5476684570312, -87.6123046875, -2028.247802734375))

   elseif list == "辐射商店" then
    tp(CFrame.new(172,12,-2627))

   elseif list == "核污染区" then
    tp(CFrame.new(207,15,-2752))

   elseif list == "种子商人" then
    tp(CFrame.new(-24,18,-2684))

   elseif list == "鲍勃的店" then
    tp(CFrame.new(261,9,-2541))

   elseif list == "家具店" then
    tp(CFrame.new(492,4,-1723))

   elseif list == "车店" then
    tp(CFrame.new(512,4,-1459))

   elseif list == "摩斯密码商店" then
    tp(CFrame.new(652,4,-1589))

   elseif list == "盲盒商店" then
    tp(CFrame.new(65,4,-455))

   elseif list == "秋季商店" then
    tp(CFrame.new(6004,4,33))
   elseif list == "回家" then
    for i,v in pairs(game.Workspace.Properties:GetChildren()) do
      if v.Owner.Value == lp then
        tp(v.OriginSquare.CFrame + Vector3.new(0,10,0))
      end
    end
  end




end)

Sectionqccs:Dropdown("汽车传送","Dropdown",{"出生点","回家","月神剑祭坛","连接逻辑店","土地商店","会员商店","画店","桥对岸","沙滩","火木","雪山","洞穴","码头","黑市","糖果原","雪地入口","盖克斯航运","玻璃冰木入口","云层","山边商品","章鱼哥祭坛","沼泽商店","石头商店","沼泽","冰胡","沙漠","辐射商店","核污染区","种子商人","鲍勃的店","家具店","车店","摩斯密码商店","盲盒商店","秋季商店"}, function(v)
  list = v
  if list == "出生点"then

    cartp(CFrame.new(187,5,55))

   elseif list == "月神剑祭坛"then

    cartp(CFrame.new(-7612.0859375, 319.6391296386719, 4276.14990234375))

   elseif list == "洞穴" then

    cartp(CFrame.new(3581, -177, 430))

   elseif list == "连接逻辑店" then

    cartp(CFrame.new(4607, 9, -740))

   elseif list == "雪山" then

    cartp(CFrame.new(1451.66248, 412.208405, 3183.47607))

   elseif list == "土地商店" then

    cartp(CFrame.new(230, 5, -99))

   elseif list == "画店" then

    cartp(CFrame.new(5207, -156, 719))

   elseif list == "火木" then

    cartp(CFrame.new(-1585, 625, 1140))

   elseif list == "沙滩" then

    cartp(CFrame.new(2549, 5, -42))

   elseif list == "桥对岸"then

    cartp(CFrame.new(109,5,-1166))

   elseif list == "会员商店" then

    cartp(CFrame.new(907,4,-115))

   elseif list == "码头" then

    cartp(CFrame.new(1122,1,-203))

   elseif list == "黑市" then

    cartp(CFrame.new(-15,61,1365))

   elseif list == "糖果原" then

    cartp(CFrame.new(-561,272,2312))

   elseif list == "雪地入口"then

    cartp(CFrame.new(888,61,1188))

   elseif list == "盖克斯航运"then

   elseif list == "玻璃冰木入口" then

    cartp(CFrame.new(1929,256,2918))

   elseif list == "云层" then

    cartp(CFrame.new(2060,495,2967))

   elseif list == "山边商品"then

    cartp(CFrame.new(-640,160,374))

   elseif list == "章鱼哥祭坛" then

    cartp(CFrame.new(-1622,196,941))

   elseif list == "沼泽商店" then

    cartp(CFrame.new(-1274,133,-1443))

   elseif list == "沼泽" then

    cartp(CFrame.new(-999,133,-1191))

   elseif list == "石头商店" then

    cartp(CFrame.new(-2395,302,-1899))

   elseif list == "冰胡" then

    cartp(CFrame.new(-2149,321,743))

   elseif list == "沙漠" then

    cartp(CFrame.new(-612,46,-3169))

   elseif list == "辐射商店" then

    cartp(CFrame.new(172,12,-2627))

   elseif list == "核污染区" then

    cartp(CFrame.new(207,15,-2752))

   elseif list == "种子商人" then

    cartp(CFrame.new(-15,18,-2680))

   elseif list == "鲍勃的店" then

    cartp(CFrame.new(-712.809, 26.8001, -248.328))

   elseif list == "家具店" then

    cartp(CFrame.new(490,4,-1690))

   elseif list == "车店" then

    cartp(CFrame.new(512,4,-1490))

   elseif list == "摩斯密码商店" then

    cartp(CFrame.new(652,4,-1565))

   elseif list == "盲盒商店" then

    cartp(CFrame.new(100,4,-455))

   elseif list == "秋季商店" then

    cartp(CFrame.new(6004,4,33))
   elseif list == "回家" then
    for i,v in pairs(game.Workspace.Properties:GetChildren()) do
      if v.Owner.Value == lp then
        cartp(v.OriginSquare.CFrame + Vector3.new(0,10,0))
      end
    end
  end





end)

Section:Button("复制斧头", function()
  Dupeaxe()
end)
Section:Button("扔掉所有斧头", function()
  for i,v in pairs(game:service"Players".LocalPlayer.Backpack:GetChildren()) do
    if v.Name == "Tool" then
      game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(v,"Drop tool",game:service"Players".LocalPlayer.Character.Torso.CFrame * CFrame.new(0,5,0))
    end
  end
end)
Section:Button("捡斧头", function()
  for a,b in pairs(workspace.PlayerModels:GetChildren()) do
    if b:FindFirstChild("Owner") and b.Owner.Value == lp then
      if b:FindFirstChild("Type") and b.Type.Value == "Tool" then
        game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(b,"Pick up Vengeance")
        task.wait()

      end
    end
  end
end)

Section:Toggle("自动复制斧头","Toggleflag",false,function(state)
  if state then
    bai.autoaxedupe=true

    while bai.autoaxedupe ==true do

      Dupeaxe()

    end
   else
    bai.autoaxedupe=false
  end
end)

Section1:Textbox("加载基地数字","TextBoxfalg","输入数字",function(s)
  bai.slot=s
end)
Section1:Button("加载（不保存当前基地）", function()
  ScriptLoadOrSave = true
  local CheckSlot = CheckSlotNumber()
  if CheckSlot ~= false then
    if CheckIfSlotAvailable(CheckSlot) == true then
      local LoadSlot = game.ReplicatedStorage.LoadSaveRequests.RequestLoad:InvokeServer(CheckSlot)
      if LoadSlot == false then
        notify("搬运", "现在不能加载!", 1)
      end
      if LoadSlot == true then
        notify("搬运", "已加载!", 2)
        CurrentSlot = CheckSlot
      end
     else
      notify("搬运", "貌似不工作了", 2)
    end
   else
    notify("搬运", "请你填数字☹️", 2)
  end
  ScriptLoadOrSave = false
end)
Section1:Button("保存", function()
  local CheckSlot = CheckSlotNumber()
  if CheckSlot ~= false then
    if CurrentSlot ~= -1 then
      ScriptLoadOrSave = true
      local SaveSlot = game.ReplicatedStorage.LoadSaveRequests.RequestSave:InvokeServer(CheckSlot)
      if SaveSlot == true then
        notify("搬运", "已保存 ✅", 2)
        wait(.5)
        ScriptLoadOrSave = false
       elseif SaveSlot == false then
        notify("搬运", "保存成功!", 1)
        wait(.5)
        ScriptLoadOrSave = false
      end
     else
      notify("搬运", "错误会不会弄!", 1)
    end
   else
    notify("搬运", "你会不会填!", 1)
  end
end)
Section1:Button("免费土地", function()
  for a,b in pairs(workspace.Properties:GetChildren()) do
    if b:FindFirstChild("Owner") and b:FindFirstChild("OriginSquare") and b.Owner.Value == nil then
      game.ReplicatedStorage.PropertyPurchasing.ClientPurchasedProperty:FireServer(b, b.OriginSquare.OriginCFrame.Value.p + Vector3.new(0,3,0))
      wait(0.5)
      Instance.new("RemoteEvent", game:service"ReplicatedStorage".Interaction).Name = "Ban"
      for i,v in pairs(game.Workspace.Properties:GetChildren()) do
        if v.Owner.Value == game.Players.LocalPlayer then
          game.Players.LocalPlayer.Character.Humanoid.Jump = true
          wait(0.1)
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame + Vector3.new(0,10,0)
          game.Players.LocalPlayer.Character.Humanoid.Jump = true
          wait(0.1)
        end
      end
    end
  end
end)

Section1:Button("最大土地", function()
  for i, v in pairs(game:GetService("Workspace").Properties:GetChildren()) do
    if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
      base = v
      square = v.OriginSquare
    end
  end
  function makebase(pos)
    local Event = game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty
    Event:FireServer(base, pos)
  end
  spos = square.Position
  makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z))
  makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z))
  makebase(CFrame.new(spos.X, spos.Y, spos.Z + 40))
  makebase(CFrame.new(spos.X, spos.Y, spos.Z - 40))
  makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z + 40))
  makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z - 40))
  makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z + 40))
  makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z - 40))
  makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z))
  makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z))
  makebase(CFrame.new(spos.X, spos.Y, spos.Z + 80))
  makebase(CFrame.new(spos.X, spos.Y, spos.Z - 80))
  --Corners--
  makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z + 80))
  makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z - 80))
  makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z + 80))
  makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z - 80))
  --Corners--
  makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z + 80))
  makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z + 80))
  makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z + 40))
  makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z - 40))
  makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z + 40))
  makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z - 40))
  makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z - 80))
  makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z - 80))
end)
local Players = Sectionchuanson:Dropdown("选择玩家","Dropdown",bai.dropdown,function(v)
  bai.cswjia= v
end)
Sectionchuanson:Button("重置玩家名称", function()
  shuaxinlb(true)
  Players:SetOptions(bai.dropdown)
end)
local Players = Sectionzhengli:Dropdown("选择玩家","Dropdown",bai.dropdown,function(v)
  bai.zlwjia= v
end)

Sectionchuanson:Button("设置传送点", function()
  pcall(function()
    workspace.baiBasedropCord:Destroy();
    bai.itemset=nil
  end)
  local baiBasedropCord=Instance.new("Part")
  baiBasedropCord.Name="baiBasedropCord";
  baiBasedropCord.Anchored=true;
  baiBasedropCord.Parent=game.Workspace;
  baiBasedropCord.Shape=Enum.PartType.Ball;
  baiBasedropCord.Size=Vector3.new(2,2,2)
  baiBasedropCord.Color=Color3.fromRGB(0, 217, 255);
  baiBasedropCord.Material=Enum.Material.ForceField;
  baiBasedropCord.CFrame=lp.Character.HumanoidRootPart.CFrame
  bai.itemset=lp.Character.HumanoidRootPart.CFrame
end)
Sectionchuanson:Button("删除传送点", function()
  pcall(function()
    workspace.baiBasedropCord:Destroy();
    bai.itemset=nil
  end)

end)
Sectionchuanson:Button("传送东西", function()
  for i=1,20 do
    tpitems("Loose Item")
    wait()
  end
end)
Sectionchuanson:Button("传送斧头", function()
  for i=1,20 do
    tpitems("Tool")
    wait()
  end
end)

Sectionchuanson:Button("传送家具", function()
  for i=1,20 do
    tpitems("Furniture")
    wait()
  end

end)

Sectionchuanson:Button("传送礼物", function()
  for i=1,20 do

    tpitems("Trident")
    wait()
  end
end)
Sectionchuanson:Button("传送木板", function()
  for i=1,20 do
    tpitems("TreeClass")
    wait()
  end
end)
Sectionzhengli:Button("重置玩家名称", function()
  shuaxinlb(true)
  Players:SetOptions(bai.dropdown)
end)

Sectionzhengli:Textbox("x轴","TextBoxfalg","输入数字",function(txt)
  bai.zix=txt
end)
Sectionzhengli:Textbox("z轴","TextBoxfalg","输入数字",function(txt)
  bai.zlz=txt
end)
Sectionzhengli:Button("获取整理工具", function()
  Identify = Instance.new("Tool")
  Identify.RequiresHandle = false;
  Identify.Name = "点击要整理的物品"
  Identify.Activated:connect(function()
    if mouse.Target.Parent:FindFirstChild("PurchasedBoxItemName") then
      bai.dxmz=mouse.Target.Parent.PurchasedBoxItemName.Value
      ItemStackerbox(bai.dxmz,bai.zix, bai.zlz)

     elseif mouse.Target.Parent:FindFirstChild("ItemName") then
      bai.dxmz=mouse.Target.Parent.ItemName.Value
      ItemStackeraxe(bai.dxmz,bai.zix, bai.zlz)
    end
  end)
  Identify.Parent = game.Players.LocalPlayer.Backpack
end)

Section5:Button("传送木头", function()

  local oldPosition = lp.Character.HumanoidRootPart.Position

  for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
    if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
      if Log.Owner.Value == game.Players.LocalPlayer then
        for _ = 1, 60 do
          tp(Log.WoodSection.CFrame)
          Log:MoveTo(oldPosition)
          tp(oldPosition)
        end
      end
    end
  end

end)
Section5:Button("卖木头", function()
  sellwood()
end)
Section5:Toggle("拖拽器","Toggleflag",false,function(state)
  if state then
    workspace.ChildAdded:connect(function(Dragger)
      if tostring(Dragger)=="Dragger"then
        local BodyGyro=Dragger:WaitForChild"BodyGyro";
        local BodyPosition=Dragger:WaitForChild"BodyPosition";
        repeat game:GetService"RunService".Stepped:wait()until workspace:FindFirstChild"Dragger";

        BodyPosition.P=120000;
        BodyPosition.D=1000;
        BodyPosition.maxForce=Vector3.new(1,1,1)*1000000;
        BodyGyro.maxTorque=Vector3.new(1,1,1)*200;
        BodyGyro.P=1200;
        BodyGyro.D=140;

      end
    end)
   else


    workspace.ChildAdded:connect(function(Dragger)
      if tostring(Dragger)=="Dragger"then
        local BodyGyro=Dragger:WaitForChild"BodyGyro";
        local BodyPosition=Dragger:WaitForChild"BodyPosition";
        repeat game:GetService"RunService".Stepped:wait()until workspace:FindFirstChild"Dragger";


        BodyPosition.P=10000;
        BodyPosition.D=800;
        BodyPosition.maxForce=Vector3.new(17000,17000,17000);
        BodyGyro.maxTorque=Vector3.new(200,200,200);
        BodyGyro.P=1200;
        BodyGyro.D=140;
      end;
    end)

  end
end)
Section5:Toggle("传送木头","Toggleflag",false,function(state)
if state then
  bai.away = true
  while wait() do
    if bai.away == true then
      local oldPosition = lp.Character.HumanoidRootPart.Position

      for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
        if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
          if Log.Owner.Value == game.Players.LocalPlayer then


              Log:MoveTo(oldPosition)

            
          end
        end
      end
    end
  end
 else
bai.away = false
end     end)

    Section5:Dropdown("选择树","Dropdown",{"普通树","曲奇树","卡通树","幻影树","砖头木","生命树","玻璃冰木","红颜树", "石头木","沼泽黄金", "樱花", "蓝木", "冰木", "火山木", "橡木", "巧克力木", "白桦木", "黄金木", "雪地松", "僵尸木", "大巧克力树", "椰子树","南瓜木","幽灵木","大理石木","天堂木","虚拟木","玻璃木","糖果树","积木树","发光红色糖果木","彩虹树","雷电木","岩浆树","紫木","下水道木","辐射木","地狱木","沙滩木","白洋木","发光彩虹木","布料木","裂纹木","幽灵食尸者","金子木","生锈木","蓝色火焰木","星空木","火焰木","星星木","雪木","死木"},functio
      if b=="普通树"then       
        bai.cuttreeselect="Generic"
       elseif b=="沼泽黄金"then
        bai.cuttreeselect="GoldSwampy"
       elseif b=="樱花"then
        bai.cuttreeselect="Cherry"
       elseif b=="蓝木"then
        bai.cuttreeselect="CaveCrawler"
       elseif b=="冰木"then
        bai.cuttreeselect="Frost"
       elseif b=="火山木"then
        bai.cuttreeselect="Volcano"
       elseif b=="橡木"then
        bai.cuttreeselect="Oak"
       elseif b=="巧克力木"then
        bai.cuttreeselect="Walnut"
       elseif b=="白桦木"then
        bai.cuttreeselect="Birch"
       elseif b=="黄金木"then
        bai.cuttreeselect="SnowGlow"
       elseif b=="雪地松"then
        bai.cuttreeselect="Pine"
       elseif b=="僵尸木"then
        bai.cuttreeselect="GreenSwampy"
       elseif b=="大巧克力树"then
        bai.cuttreeselect="Koa"
       elseif b=="椰子树"then
        bai.cuttreeselect="Palm"
       elseif b=="幽灵木"then
        bai.cuttreeselect="Spooky"
       elseif b=="南瓜木"then
        bai.cuttreeselect="SpookyNeon"
       elseif b=="大理石木"then
        bai.cuttreeselect="Marble"
       elseif b=="天堂木"then
        bai.cuttreeselect="Sky"
       elseif b=="虚拟木"then
        bai.cuttreeselect="Virtual"
       elseif b=="玻璃木"then
        bai.cuttreeselect="Taco"
       elseif b=="糖果树"then
        bai.cuttreeselect="CandycaneGreen"
       elseif b=="积木树"then
        bai.cuttreeselect="CandycaneRed"
       elseif b=="发光红色糖果木"then
        bai.cuttreeselect="CandyNeon"
       elseif b=="彩虹树"then
        bai.cuttreeselect="Rainbow"
       elseif b=="雷电木"then
        bai.cuttreeselect="Electric"
       elseif b=="岩浆树"then
        bai.cuttreeselect="Skittles"
       elseif b=="紫木"then
        bai.cuttreeselect="Cavern"
       elseif b=="下水道木"then
        bai.cuttreeselect="MuckySewer"
       elseif b=="辐射木"then
        bai.cuttreeselect="Radioactive"
       elseif b=="地狱木"then
        bai.cuttreeselect="Hell"
       elseif b=="沙滩木"then
        bai.cuttreeselect="Sand"
       elseif b=="白洋木"then
        bai.cuttreeselect="Aspen"
       elseif b=="发光彩虹木"then
        bai.cuttreeselect="NeonRainbow"
       elseif b=="布料木"then
        bai.cuttreeselect="Dog"
       elseif b=="幻影树"then
        bai.cuttreeselect="LoneCave"
       elseif b=="红颜树"then
        bai.cuttreeselect="Shine"
       elseif b=="石头木"then
        bai.cuttreeselect="Magma"
       elseif b=="玻璃冰木"then
        bai.cuttreeselect="Ice"
       elseif b=="砖头木"then
        bai.cuttreeselect="Blah"
       elseif b=="卡通树"then
        bai.cuttreeselect="CobbleStone"
       elseif b=="曲奇树"then
        bai.cuttreeselect="Cookie"
       elseif b=="生命树"then
        bai.cuttreeselect="GreatOak"
       elseif b=="裂纹木"then
        bai.cuttreeselect="Celestial"
       elseif b=="幽灵食尸者"then
        bai.cuttreeselect="SpookyGhoul"
       elseif b=="生锈木"then
        bai.cuttreeselect="SewageTree"
       elseif b=="金子木"then
        bai.cuttreeselect="Gold"
       elseif b=="蓝色火焰木"then
        bai.cuttreeselect="BlueFlame"
       elseif b=="星空木"then
        bai.cuttreeselect="Spirit"
       elseif b=="火焰木"then
        bai.cuttreeselect="Flame"
       elseif b=="星星木"then
        bai.cuttreeselect="Star"
       elseif b=="雪木"then
        bai.cuttreeselect="Snow"
        
      end
    end)
    Section5:Textbox("带来树的数量","TextBoxfalg","输入数字",function(txt)
      bai.bringamount=txt
    end)
    Section5:Button("带来树", function()
      bai.bringtree=true
      for i=1 , bai.bringamount do
        if bai.bringtree==true then
          task.wait()
          bringTree(bai.cuttreeselect)
        end

      end


    end)
    Section5:Button("停止", function()
      bai.bringtree=false
      workspace.Camera.CameraSubject = lp.Character
    end)
    Section5:Button("处理树", function()
      modwood()
    end)
    Sectionhuanjin:Toggle("一直白天","Toggleflag",false, function(state)
      if state then
        bai.awaysday=true
        while task.wait() do
          if bai.awaysday==true then
            game:GetService("Lighting").TimeOfDay=("12:00:00");
          end
        end
       else bai.awaysday=false
      end

    end)
    Sectionhuanjin:Toggle("一直黑天","Toggleflag",false, function(state)
      if state then
        bai.awaysdnight=true
        while task.wait() do
          if bai.awaysdnight==true then
            game:GetService("Lighting").TimeOfDay=("2:00:00");
          end
        end
       else
        bai.awaysdnight=false
      end
    end)
    game:GetService("Lighting").GlobalShadows =true
    Sectionhuanjin:Toggle("去掉阴影","Toggleflag",false, function(state)


      if state then
        game:GetService("Lighting").GlobalShadows=false
       else
        game:GetService("Lighting").GlobalShadows=true
      end

    end)
    Sectionhuanjin:Button("删除灵视神殿的石头", function()
      workspace.Region_Mountainside.BoulderRegen.Boulder:Destroy()
      workspace.Region_Mountainside.Door.Door:Destroy()

    end)

    Sectionhuanjin:Button("删除灵视神殿的石头", function()
      workspace.Camera.CameraSubject = lp.Character
    end)

    Sectionhuanjin:Toggle("删除岩浆","Toggleflag",false,function(state)
      for i,v in pairs(game.Workspace.Region_Volcano:GetDescendants()) do
        if v.Name == "TouchInterest" then
          v:Destroy()
         elseif v.Name == "Lava" then
          for n,k in pairs(v:GetChildren()) do
            if k:IsA("Part") then
              if state == true then
                k.Transparency = 1
               else
                k.Transparency = 0
              end
            end
          end
        end
      end
    end)
    Sectionhuanjin:Toggle("删除水","Toggleflag",false,function(state)
      for _,v in pairs(game.Workspace.Water:GetChildren()) do
        if v.Name == "Water" then
          if state then
            v.Transparency = 1;
           else
            v.Transparency = 0;
          end
        end
      end
    end)

    Sectionhuanjin:Toggle("去除雾","Toggleflag",false, function(state)
      if state then
        bai.nofog=true
        while task.wait() do
          if bai.nofog==true then
            game:GetService("Lighting").FogEnd=1000000;
          end
        end
       else bai.nofog=false
      end
    end)
    Sectionhuanjin:Toggle("水上行走","Toggleflag",false, function(state)
      for i,v in next,game.workspace.Water:children()do
        if v.ClassName=="Part"then
          bai.waterwalk,v.CanCollide=state,state;
        end;
      end;
      for i,v in next,game:GetService("Workspace").Bridge.VerticalLiftBridge.WaterModel:children()do
        if v:IsA("BasePart")then
          v.CanCollide=state;
        end;
      end;


    end)
    Sectionhuanjin:Toggle("岩浆行走","Toggleflag",false, function(state)
      for i,v in next,game.workspace.Region_Volcano:children()do
        if v.ClassName=="Part"then
          bai.waterwalk,v.CanCollide=state,state;
        end;
      end;
      for i,v in next,game:GetService("Workspace").Bridge.VerticalLiftBridge.LavaModel:children()do
        if v:IsA("BasePart")then
          v.CanCollide=state;
        end;
      end;


    end)
    local function notify(Title,Text,Duration) -- Sends Notification in the bottom right of the screen
  game.StarterGui:SetCore("SendNotification", {
    Title = Title;
    Text = Text;
    Icon = nil;
    Duration = Duration
  })
end
local w={"白杨树","桦树","无趣","灌木丛","糖果","糖果替代品","糖果霓虹","糖果棒绿","糖果棒红","卡通风格","卡通彩虹","洞穴爬行者","洞穴","洞穴爬行者","樱桃","鹅卵石","饼干","沙","钻石","干燥","干燥霓虹","电力","余烬","冷杉","霜","通用","特殊通用","玻璃","发光蘑菇","金","金沼泽","草1","绿色沼泽","洞窟爬行者","地狱","koa树","孤洞","枫树","大理石","泥泞下水道","橡树","棕榈树","松树","罐灌木","土豆","REEE","灵魂","彩虹","随机","红宝石","鳞片","污水树","闪耀","标志","银","彩虹糖","天空","雪","雪光","诡异","恐怖僵尸","恐怖霓虹","石头","玉米饼","测试","线","隧道爬行者","霓虹彩虹","虚拟","虚空","火山","华夫饼","胡桃","灰烬","铜","狗","通用主","通用秋","通用死","大橡树","岩浆","冰","放射性","通用金","天体","星星","砖替代品","深色砖","砖","裂缝岩浆","蓝色火焰","火焰","骨头","彩虹火焰"}

SectionKJ:Dropdown("选择树","Dropdown",w,function(b)
  if b == "白杨树" then
    bai.cuttreeselect = "Aspen"
   elseif b == "桦树" then
    bai.cuttreeselect = "Birch"
   elseif b == "无趣" then
    bai.cuttreeselect = "Blah"
   elseif b == "灌木丛" then
    bai.cuttreeselect = "Bush"
   elseif b == "糖果" then
    bai.cuttreeselect = "Candy"
   elseif b == "糖果替代品" then
    bai.cuttreeselect = "CandyAlternitive"
   elseif b == "糖果霓虹" then
    bai.cuttreeselect = "CandyNeon"
   elseif b == "糖果棒绿" then
    bai.cuttreeselect = "CandycaneGreen"
   elseif b == "糖果棒红" then
    bai.cuttreeselect = "CandycaneRed"
   elseif b == "卡通风格" then
    bai.cuttreeselect = "Cartoony"
   elseif b == "卡通彩虹" then
    bai.cuttreeselect = "CartoonyRainbow"
   elseif b == "洞穴爬行者" then
    bai.cuttreeselect = "CaveCrawler"
   elseif b == "洞穴" then
    bai.cuttreeselect = "Cavern"
   elseif b == "洞窟爬行者" then
    bai.cuttreeselect = "CavernCrawler"
   elseif b == "樱桃" then
    bai.cuttreeselect = "Cherry"
   elseif b == "鹅卵石" then
    bai.cuttreeselect = "CobbleStone"
   elseif b == "饼干" then
    bai.cuttreeselect = "Cookie"
   elseif b == "沙" then
    bai.cuttreeselect = "Sand"
   elseif b == "钻石" then
    bai.cuttreeselect = "Diamond"
   elseif b == "干燥" then
    bai.cuttreeselect = "Dry"
   elseif b == "干燥霓虹" then
    bai.cuttreeselect = "DryNeon"
   elseif b == "电力" then
    bai.cuttreeselect = "Electric"
   elseif b == "余烬" then
    bai.cuttreeselect = "Ember"
   elseif b == "冷杉" then
    bai.cuttreeselect = "Fir"
   elseif b == "霜" then
    bai.cuttreeselect = "Frost"
   elseif b == "通用" then
    bai.cuttreeselect = "Generic"
   elseif b == "特殊通用" then
    bai.cuttreeselect = "GenericSpecial"
   elseif b == "玻璃" then
    bai.cuttreeselect = "Glass"
   elseif b == "发光蘑菇" then
    bai.cuttreeselect = "GlowShroom"
   elseif b == "金" then
    bai.cuttreeselect = "Gold"
   elseif b == "金沼泽" then
    bai.cuttreeselect = "GoldSwampy"
   elseif b == "草1" then
    bai.cuttreeselect = "Grass1"
   elseif b == "绿色沼泽" then
    bai.cuttreeselect = "GreenSwampy"
   elseif b == "洞窟爬行者" then
    bai.cuttreeselect = "GrottoCrawler"
   elseif b == "地狱" then
    bai.cuttreeselect = "Hell"
   elseif b == "koa树" then
    bai.cuttreeselect = "Koa"
   elseif b == "孤洞" then
    bai.cuttreeselect = "LoneCave"
   elseif b == "枫树" then
    bai.cuttreeselect = "Maple"
   elseif b == "大理石" then
    bai.cuttreeselect = "Marble"
   elseif b == "泥泞下水道" then
    bai.cuttreeselect = "MuckySewer"
   elseif b == "橡树" then
    bai.cuttreeselect = "Oak"
   elseif b == "棕榈树" then
    bai.cuttreeselect = "Palm"
   elseif b == "松树" then
    bai.cuttreeselect = "Pine"
   elseif b == "罐灌木" then
    bai.cuttreeselect = "PotBush"
   elseif b == "土豆" then
    bai.cuttreeselect = "Potato"
   elseif b == "REEE" then
    bai.cuttreeselect = "REEE"
   elseif b == "灵魂" then
    bai.cuttreeselect = "Spirit"
   elseif b == "彩虹" then
    bai.cuttreeselect = "Rainbow"
   elseif b == "随机" then
    bai.cuttreeselect = "Random"
   elseif b == "红宝石" then
    bai.cuttreeselect = "Ruby"
   elseif b == "鳞片" then
    bai.cuttreeselect = "Scale"
   elseif b == "污水树" then
    bai.cuttreeselect = "SewageTree"
   elseif b == "闪耀" then
    bai.cuttreeselect = "Shine"
   elseif b == "标志" then
    bai.cuttreeselect = "Sign"
   elseif b == "银" then
    bai.cuttreeselect = "Silver"
   elseif b == "彩虹糖" then
    bai.cuttreeselect = "Skittles"
   elseif b == "天空" then
    bai.cuttreeselect = "Sky"
   elseif b == "雪" then
    bai.cuttreeselect = "Snow"
   elseif b == "雪光" then
    bai.cuttreeselect = "SnowGlow"
   elseif b == "诡异" then
    bai.cuttreeselect = "Spooky"
   elseif b == "恐怖僵尸" then
    bai.cuttreeselect = "SpookyGhoul"
   elseif b == "恐怖霓虹" then
    bai.cuttreeselect = "SpookyNeon"
   elseif b == "石头" then
    bai.cuttreeselect = "Stone"
   elseif b == "玉米饼" then
    bai.cuttreeselect = "Taco"
   elseif b == "测试" then
    bai.cuttreeselect = "Test"
   elseif b == "线" then
    bai.cuttreeselect = "Thread"
   elseif b == "隧道爬行者" then
    bai.cuttreeselect = "TunnelCrawler"
   elseif b == "霓虹彩虹" then
    bai.cuttreeselect = "NeonRainbow"
   elseif b == "虚拟" then
    bai.cuttreeselect = "Virtual"
   elseif b == "虚空" then
    bai.cuttreeselect = "Void"
   elseif b == "火山" then
    bai.cuttreeselect = "Volcano"
   elseif b == "华夫饼" then
    bai.cuttreeselect = "Waffer"
   elseif b == "胡桃" then
    bai.cuttreeselect = "Walnut"
   elseif b == "灰烬" then
    bai.cuttreeselect = "Ash"
   elseif b == "铜" then
    bai.cuttreeselect = "Copper"
   elseif b == "狗" then
    bai.cuttreeselect = "Dog"
   elseif b == "通用主" then
    bai.cuttreeselect = "GenericPrime"
   elseif b == "通用秋" then
    bai.cuttreeselect = "GenericFall"
   elseif b == "通用死" then
    bai.cuttreeselect = "GenericDead"
   elseif b == "大橡树" then
    bai.cuttreeselect = "GreatOak"
   elseif b == "岩浆" then
    bai.cuttreeselect = "Magma"
   elseif b == "冰" then
    bai.cuttreeselect = "Ice"
   elseif b == "放射性" then
    bai.cuttreeselect = "Radioactive"
   elseif b == "通用金" then
    bai.cuttreeselect = "GenericGold"
   elseif b == "天体" then
    bai.cuttreeselect = "Celestial"
   elseif b == "星星" then
    bai.cuttreeselect = "Star"
   elseif b == "砖替代品" then
    bai.cuttreeselect = "BrickAlternative"
   elseif b == "深色砖" then
    bai.cuttreeselect = "BrickDark"
   elseif b == "砖" then
    bai.cuttreeselect = "Brick"
   elseif b == "裂缝岩浆" then
    bai.cuttreeselect = "CrackedLava"
   elseif b == "蓝色火焰" then
    bai.cuttreeselect = "BlueFlame"
   elseif b == "火焰" then
    bai.cuttreeselect = "Flame"
   elseif b == "骨头" then
    bai.cuttreeselect = "Bone"
   elseif b == "彩虹火焰" then
    bai.cuttreeselect = "RainbowFlame"
  end
end)
SectionKJ:Button("获取道具", function()
  local tool = Instance.new("Tool", lp.Backpack)
  tool.RequiresHandle = false
  tool.Name = "点击一块蓝图"
  tool.Activated:Connect(function()
    local str = mouse.Target.Parent
    game.ReplicatedStorage.PlaceStructure.ClientPlacedStructure:FireServer(str.ItemName.Value, str.PrimaryPart.CFrame, game.Players.LocalPlayer, bai.cuttreeselect, str ,false)
  end)
end)

local UITab12 = win:Tab("『一路向西』",'16060333448')

local about = UITab18:section("『一路向西』",true)

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "染春中心",
	Content = "正在加载 染春中心-一路向西",
	Image = "rbxthumb://type=Asset&id=5107182114&w=150&h=150",
	Time = 2
})

local Window = OrionLib:MakeWindow({Name = "北风中心-一路向西", HidePremium = false, SaveConfig = true, IntroText = "北风中心-一路向西", ConfigFolder = "BeiFengWestBound"})

local Back = Window:MakeTab({
	Name = "染春中心",
	Icon = "rbxassetid://14380684950",
	PremiumOnly = false
})

Back:AddButton({
	Name = "返回染春中心",
	Callback = function()
		loadstring(game:HttpGet(("https://raw.githubusercontent.com/UWUBeiFeng/Scripts/main/BeiFengCenter.lua"),true))()
	end
})

local Weapon = Window:MakeTab({
	Name = "武器功能",
	Icon = "rbxassetid://14392420014",
	PremiumOnly = false
})

_G.AimbotEnabled = false

Weapon:AddToggle({
	Name = "锁头",
	Default = false,
	Callback = function(Value)
		_G.AimbotEnabled = Value

		local Camera = workspace.CurrentCamera
		local Players = game:GetService("Players")
		local RunService = game:GetService("RunService")
		local UserInputService = game:GetService("UserInputService")
		local TweenService = game:GetService("TweenService")
		local LocalPlayer = Players.LocalPlayer
		local Holding = false

		_G.TeamCheck = true
		_G.AimPart = "Head"
		_G.Sensitivity = 0

		_G.CircleSides = 64
		_G.CircleColor = Color3.fromRGB(255, 255, 255)
		_G.CircleTransparency = 0.7
		_G.CircleRadius = 80
		_G.CircleFilled = false
		_G.CircleVisible = false
		_G.CircleThickness = 0

		local FOVCircle = Drawing.new("Circle")
		FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
		FOVCircle.Radius = _G.CircleRadius
		FOVCircle.Filled = _G.CircleFilled
		FOVCircle.Color = _G.CircleColor
		FOVCircle.Visible = _G.CircleVisible
		FOVCircle.Radius = _G.CircleRadius
		FOVCircle.Transparency = _G.CircleTransparency
		FOVCircle.NumSides = _G.CircleSides
		FOVCircle.Thickness = _G.CircleThickness

		local function GetClosestPlayer()
			local MaximumDistance = _G.CircleRadius
			local Target = nil

			for _, v in next, Players:GetPlayers() do
				if v.Name ~= LocalPlayer.Name then
					if _G.TeamCheck == true then
						if v.Team ~= LocalPlayer.Team then
							if v.Character ~= nil then
								if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
									if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
										local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
										local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude

										if VectorDistance < MaximumDistance then
											Target = v
										end
									end
								end
							end
						end
					else
						if v.Character ~= nil then
							if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
								if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
									local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
									local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude

									if VectorDistance < MaximumDistance then
										Target = v
									end
								end
							end
						end
					end
				end
			end

			return Target
		end

		UserInputService.InputBegan:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton2 then
				Holding = true
			end
		end)

		UserInputService.InputEnded:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton2 then
				Holding = false
			end
		end)

		RunService.RenderStepped:Connect(function()
			FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
			FOVCircle.Radius = _G.CircleRadius
			FOVCircle.Filled = _G.CircleFilled
			FOVCircle.Color = _G.CircleColor
			FOVCircle.Visible = _G.CircleVisible
			FOVCircle.Radius = _G.CircleRadius
			FOVCircle.Transparency = _G.CircleTransparency
			FOVCircle.NumSides = _G.CircleSides
			FOVCircle.Thickness = _G.CircleThickness

			if Holding == true and _G.AimbotEnabled == true then
				TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.AimPart].Position)}):Play()
			end
		end)
	end    
})

local Auto = Window:MakeTab({
	Name = "自动购买",
	Icon = "rbxassetid://14391860091",
	PremiumOnly = false
})

autoSell = false

Auto:AddToggle({
	Name = "自动出售（靠近出售NPC即可）",
	Default = false,
	Callback = function(Value)
		autoSell = Value

		while autoSell do
			game:GetService("ReplicatedStorage").GeneralEvents.Inventory:InvokeServer( "Sell")
			wait(2)
		end
	end    
})

autoClear = false

Auto:AddToggle({
	Name = "消除赏金（靠近出警长即可）",
	Default = false,
	Callback = function(Value)
		autoClear = Value

		while autoClear do
			game:GetService("ReplicatedStorage").GeneralEvents.BuyItem:InvokeServer("PayOffBounty")
			wait(2)
		end
	end    
})

autoWater = false

Auto:AddToggle({
	Name = "购买药水（靠近医生即可）",
	Default = false,
	Callback = function(Value)
		autoWater = Value

		while autoWater do
			game:GetService("ReplicatedStorage").GeneralEvents.BuyItem:InvokeServer("Health Potion", true)
			wait(2)
		end
	end    
})

local Section = Auto:AddSection({
	Name = "↓子弹（靠近武器店NPC即可）↓"
})

autoGun = false

Auto:AddToggle({
	Name = "手枪子弹",
	Default = false,
	Callback = function(Value)
		autoGun = Value

		while autoGun do
			game:GetService("ReplicatedStorage").GeneralEvents.BuyItem:InvokeServer("PistolAmmo", true)
			wait(2)
		end
	end    
})

autoGun1 = false

Auto:AddToggle({
	Name = "步枪子弹",
	Default = false,
	Callback = function(Value)
		autoGun1 = Value

		while autoGun1 do
			game:GetService("ReplicatedStorage").GeneralEvents.BuyItem:InvokeServer("RifleAmmo", true)
			wait(2)
		end
	end    
})

autoGun2 = false

Auto:AddToggle({
	Name = "购买箭矢",
	Default = false,
	Callback = function(Value)
		autoGun2 = Value

		while autoGun2 do
			game:GetService("ReplicatedStorage").GeneralEvents.BuyItem:InvokeServer("Arrows")
			wait(2)
		end
	end    
})

autoGun3 = false

Auto:AddToggle({
	Name = "霰弹枪子弹",
	Default = false,
	Callback = function(Value)
		autoGun3 = Value

		while autoGun3 do
			game:GetService("ReplicatedStorage").GeneralEvents.BuyItem:InvokeServer("ShotgunAmmo")
			wait(2)
		end
	end    
})

autoGun4 = false

Auto:AddToggle({
	Name = "狙击枪子弹",
	Default = false,
	Callback = function(Value)
		autoGun4 = Value

		while autoGun4 do
			game:GetService("ReplicatedStorage").GeneralEvents.BuyItem:InvokeServer("SniperAmmo", true)
			wait(2)
		end
	end    
})

autoGun5 = false

Auto:AddToggle({
	Name = "小型炸药",
	Default = false,
	Callback = function(Value)
		autoGun5 = Value

		while autoGun5 do
			game:GetService("ReplicatedStorage").GeneralEvents.BuyItem:InvokeServer("Dynamite")
			wait(2)
		end
	end    
})

autoGun6 = false

Auto:AddToggle({
	Name = "大型炸药",
	Default = false,
	Callback = function(Value)
		autoGun6 = Value

		while autoGun6 do
			game:GetService("ReplicatedStorage").GeneralEvents.BuyItem:InvokeServer("BIG Dynamite", true)
			wait(2)
		end
	end    
})

local PTeleport = Window:MakeTab({
	Name = "传送功能",
	Icon = "rbxassetid://14369026854",
	PremiumOnly = false
})

local Section = PTeleport:AddSection({
	Name = "↓牛仔传送点（只能牛仔传送）↓"
})

PTeleport:AddButton({
	Name = "滚筒",
	Callback = function()
		game:GetService("ReplicatedStorage").GeneralEvents.Spawn:FireServer("Tumbleweed", false)
	end
})

PTeleport:AddButton({
	Name = "岩石溪",
	Callback = function()
		game:GetService("ReplicatedStorage").GeneralEvents.Spawn:FireServer("StoneCreek", false)
	end
})

PTeleport:AddButton({
	Name = "灰色山脊",
	Callback = function()
		game:GetService("ReplicatedStorage").GeneralEvents.Spawn:FireServer("Grayridge", false)
	end
})

PTeleport:AddButton({
	Name = "大矿洞",
	Callback = function()
		game:GetService("ReplicatedStorage").GeneralEvents.Spawn:FireServer("Quarry", false)
	end
})

local Section = PTeleport:AddSection({
	Name = "↓不法之徒传送点（只能不法之徒传送）↓"
})

PTeleport:AddButton({
	Name = "堡垒",
	Callback = function()
		game:GetService("ReplicatedStorage").GeneralEvents.Spawn:FireServer("FortCassidy", true)
	end
})

PTeleport:AddButton({
	Name = "阿瑟堡",
	Callback = function()
		game:GetService("ReplicatedStorage").GeneralEvents.Spawn:FireServer("FortArthur", true)
	end
})

PTeleport:AddButton({
	Name = "红色岩石营地",
	Callback = function()
		game:GetService("ReplicatedStorage").GeneralEvents.Spawn:FireServer("RedRocks", true)
	end
})

OrionLib:Init()

local UITab12 = win:Tab("『DOORS』",'16060333448')

local about = UITab18:section("『DOORS』",true)

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "Doors GUI v1.2",Name = "Doors", HidePremium = false, SaveConfig = true, ConfigFolder = "DoorsSex"})
if game.PlaceId == 6516141723 then
    OrionLib:MakeNotification({
        Name = "错误",
        Content = "请在游戏中执行，而不是在大厅。",
        Time = 2
    })
end
local VisualsTab = Window:MakeTab({
	Name = "画面",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local CF = CFrame.new
local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
local ChaseStart = game:GetService("ReplicatedStorage").GameData.ChaseStart

local KeyChams = {}
VisualsTab:AddToggle({
	Name = "密钥获取",
	Default = false,
    Flag = "密钥获取",
    Save = true,
	Callback = function(Value)
		for i,v in pairs(KeyChams) do
            v.Enabled = Value
        end
	end    
})

local function ApplyKeyChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(0.980392, 0.670588, 0)
    Cham.FillTransparency = 0.5
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = game:GetService("CoreGui")
    Cham.Adornee = inst
    Cham.Enabled = OrionLib.Flags["KeyToggle"].Value
    Cham.RobloxLocked = true
    return Cham
end

local KeyCoroutine = coroutine.create(function()
    workspace.CurrentRooms.DescendantAdded:Connect(function(inst)
        if inst.Name == "密钥获取" then
            table.insert(KeyChams,ApplyKeyChams(inst))
        end
    end)
end)
for i,v in ipairs(workspace:GetDescendants()) do
    if v.Name == "密钥获取" then
        table.insert(KeyChams,ApplyKeyChams(v))
    end
end
coroutine.resume(KeyCoroutine)

local BookChams = {}
VisualsTab:AddToggle({
	Name = "Book Chams",
	Default = false,
    Flag = "图书切换",
    Save = true,
	Callback = function(Value)
		for i,v in pairs(BookChams) do
            v.Enabled = Value
        end
	end    
})

local FigureChams = {}
VisualsTab:AddToggle({
	Name = "数字通道",
	Default = false,
    Flag = "图形切换",
    Save = true,
    Callback = function(Value)
        for i,v in pairs(FigureChams) do
            v.Enabled = Value
        end
    end
})

local function ApplyBookChams(inst)
    if inst:IsDescendantOf(game:GetService("Workspace").CurrentRooms:FindFirstChild("50")) and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value == 50 then
        wait()
        local Cham = Instance.new("Highlight")
        Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        Cham.FillColor = Color3.new(0, 1, 0.749019)
        Cham.FillTransparency = 0.5
        Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
        Cham.Parent = game:GetService("CoreGui")
        Cham.Enabled = OrionLib.Flags["BookToggle"].Value
        Cham.Adornee = inst
        Cham.RobloxLocked = true
        return Cham
    end
end

local function ApplyEntityChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(1, 0, 0)
    Cham.FillTransparency = 0.5
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = game:GetService("CoreGui")
    Cham.Enabled = OrionLib.Flags["FigureToggle"].Value
    Cham.Adornee = inst
    Cham.RobloxLocked = true
    return Cham
end

local BookCoroutine = coroutine.create(function()
    task.wait(1)
    for i,v in pairs(game:GetService("Workspace").CurrentRooms["50"].Assets:GetDescendants()) do
        if v.Name == "LiveHintBook" then
            table.insert(BookChams,ApplyBookChams(v))
        end
    end
end)
local EntityCoroutine = coroutine.create(function()
    local Entity = game:GetService("Workspace").CurrentRooms["50"].FigureSetup:WaitForChild("FigureRagdoll",5)
    Entity:WaitForChild("Torso",2.5)
    table.insert(FigureChams,ApplyEntityChams(Entity))
end)


local GameTab = Window:MakeTab({
	Name = "比赛",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local CharTab = Window:MakeTab({
	Name = "性格；角色；字母",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TargetWalkspeed
CharTab:AddSlider({
	Name = "速度",
	Min = 0,
	Max = 50,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		TargetWalkspeed = Value
	end    
})

local pcl = Instance.new("SpotLight")
pcl.Brightness = 1
pcl.Face = Enum.NormalId.Front
pcl.Range = 90
pcl.Parent = game.Players.LocalPlayer.Character.Head
pcl.Enabled = false


CharTab:AddToggle({
	Name = "前灯",
	Default = false,
    Callback = function(Value)
        pcl.Enabled = Value
    end
})

GameTab:AddToggle({
	Name = "禁止搜寻武器/障碍物",
	Default = false,
    Flag = "诺塞克",
    Save = true
})

GameTab:AddToggle({
	Name = "即时互动",
	Default = false,
    Flag = "瞬时切换",
    Save = true
})
GameTab:AddButton({
	Name = "跳过级别",
	Callback = function()
        pcall(function()
            local HasKey = false
            local CurrentDoor = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door")
            for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                if v.Name == "KeyObtain" then
                    HasKey = v
                end
            end
            if HasKey then
                game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                wait(0.3)
                fireproximityprompt(HasKey.ModulePrompt,0)
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                wait(0.3)
                fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
            end
            if LatestRoom == 50 then
                CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
            end
            game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
            wait(0.3)
            CurrentDoor.ClientOpen:FireServer()
        end)
  	end    
})

GameTab:AddToggle({
	Name = "自动跳过级别",
	Default = false,
    Save = false,
    Flag = "自动跳过"
})

local AutoSkipCoro = coroutine.create(function()
        while true do
            task.wait()
            pcall(function()
            if OrionLib.Flags["AutoSkip"].Value == true and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value < 100 then
                local HasKey = false
                local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
                local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom)]:WaitForChild("Door")
                for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                    if v.Name == "KeyObtain" then
                        HasKey = v
                    end
                end
                if HasKey then
                    game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                    task.wait(0.3)
                    fireproximityprompt(HasKey.ModulePrompt,0)
                    game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                    task.wait(0.3)
                    fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
                end
                if LatestRoom == 50 then
                    CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
                end
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                task.wait(0.3)
                CurrentDoor.ClientOpen:FireServer()
            end
        end)
        end
end)
coroutine.resume(AutoSkipCoro)

GameTab:AddButton({
	Name = "没有惊吓",
	Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage").Bricks.Jumpscare:Destroy()
        end)
  	end    
})
GameTab:AddToggle({
	Name = "避免匆忙/伏击",
	Default = false,
    Flag = "回避开关",
    Save = true
})
GameTab:AddToggle({
	Name = "没有尖叫",
	Default = false,
    Flag = "尖叫开关",
    Save = true
})

GameTab:AddToggle({
	Name = "永远赢得心跳",
	Default = false,
    Flag = "心跳赢了",
    Save = true
})

GameTab:AddToggle({
	Name = "预测追逐",
	Default = false,
    Flag = "预测切换" ,
    Save = true
})
GameTab:AddToggle({
	Name = "当怪物出现时通知",
	Default = false,
    Flag = "MobToggle" ,
    Save = true
})
GameTab:AddButton({
	Name = "完整的断路器盒迷你游戏",
	Callback = function()
        game:GetService("ReplicatedStorage").Bricks.EBF:FireServer()
  	end    
})
GameTab:AddButton({
	Name = "跳过50级",
	Callback = function()
        local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
        game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
  	end    
})
GameTab:AddParagraph("Warning","You may need to open/close the panel a few times for this to work, fixing soon.")

--// ok actual code starts here

game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/50)
        end
    end)
end)

game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(descendant)
    if OrionLib.Flags["NoSeek"].Value == true and descendant.Name == ("Seek_Arm" or "ChandelierObstruction") then
        task.spawn(function()
            wait()
            descendant:Destroy()
        end)
    end
end)

game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
    if OrionLib.Flags["InstantToggle"].Value == true then
        fireproximityprompt(prompt)
    end
end)

local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    
    if tostring(self) == 'Screech' and method == "消防队员" and OrionLib.Flags["ScreechToggle"].Value == true then
        args[1] = true
        return old(self,unpack(args))
    end
    if tostring(self) == 'ClutchHeartbeat' and method == "消防队员" and OrionLib.Flags["HeartbeatWin"].Value == true then
        args[2] = true
        return old(self,unpack(args))
    end
    
    return old(self,...)
end))

workspace.CurrentCamera.ChildAdded:Connect(function(child)
    if child.Name == "尖叫声" and OrionLib.Flags["ScreechToggle"].Value == true then
        child:Destroy()
    end
end)

local NotificationCoroutine = coroutine.create(function()
    LatestRoom.Changed:Connect(function()
        if OrionLib.Flags["PredictToggle"].Value == true then
            local n = ChaseStart.Value - LatestRoom.Value
            if 0 < n and n < 4 then
                OrionLib:MakeNotification({
                    Name = "警告！",
                    Content = "事件发生在" .. tostring(n) .. " 房间.",
                    Time = 5
                })
            end
        end
        if OrionLib.Flags["BookToggle"].Value == true then
            if LatestRoom.Value == 50 then
                coroutine.resume(BookCoroutine)
            end
        end
        if OrionLib.Flags["FigureToggle"].Value == true then
            if LatestRoom.Value == 50 then
                coroutine.resume(EntityCoroutine)
            end
        end
    end)
    workspace.ChildAdded:Connect(function(inst)
        if inst.Name == "狂奔" and OrionLib.Flags["MobToggle"].Value == true then
            if OrionLib.Flags["AvoidRushToggle"].Value == true then
                OrionLib:MakeNotification({
                    Name = "警告！",
                    Content = "避免匆忙。请稍等。",
                    Time = 5
                })
                local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local con = game:GetService("RunService").Heartbeat:Connect(function()
                    game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0))
                end)
                
                inst.Destroying:Wait()
                con:Disconnect()

                game.Players.LocalPlayer.Character:MoveTo(OldPos)
            else
                OrionLib:MakeNotification({
                    Name = "警告！",
                    Content = "拉什已经繁殖了，躲起来！",
                    Time = 5
                })
            end
        elseif inst.Name == "AmbushMoving" and OrionLib.Flags["MobToggle"].Value == true then
            if OrionLib.Flags["AvoidRushToggle"].Value == true then
                OrionLib:MakeNotification({
                    Name = "警告!",
                    Content = "躲避伏击。请稍等。",
                    Time = 5
                })
                local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local con = game:GetService("RunService").Heartbeat:Connect(function()
                    game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0))
                end)
                
                inst.Destroying:Wait()
                con:Disconnect()
                
                game.Players.LocalPlayer.Character:MoveTo(OldPos)
            else
                OrionLib:MakeNotification({
                    Name = "警告！",
                    Content = "有埋伏了，躲起来！",
                    Time = 5
                })
            end
        end
    end)
end)

--// ok actual code ends here

local CreditsTab = Window:MakeTab({
	Name = "信用",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

CreditsTab:AddParagraph("归功于","凛QQ3623422062")

coroutine.resume(NotificationCoroutine)

OrionLib:Init()

task.wait(2)
