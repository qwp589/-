repeat task.wait() until game:IsLoaded()
repeat task.wait() until game:GetService("Players").LocalPlayer

local FengYuUI = loadstring(game:HttpGet('https://raw.githubusercontent.com/FengYu-X/FengYu-ui/refs/heads/main/UI.lua'))()

local Window = FengYuUI:CreateWindow({
    Subtitle = "脚本作者 风御 X | QQ:1926190957",
    Title = "撕咬之夜脚本",
    Keybind = Enum.KeyCode.RightControl,
})

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Lighting = game:GetService("Lighting")
local LocalPlayer = Players.LocalPlayer

local noclipEnabled = false
local noclipConnection = nil
local fullbrightEnabled = false
local autoDoorEnabled = false
local autoDoorConnection = nil
local infiniteStaminaEnabled = false
local infiniteStaminaConnection = nil
local runSpeedEnabled = false
local walkSpeedEnabled = false
local runSpeedValue = 24
local walkSpeedValue = 15
local autoRepairEnabled = false
local autoRepairDelay = 0.5
local autoRepairThread = nil
local hitboxEnabled = false
local hitboxSize = 15
local hitboxConnection = nil
local killAllEnabled = false
当地的自动阻止启用=错误的

当地的SafePlatform = Instance.new('部分')
安全平台。名称='安全平台'
安全平台。Size = Vector3.new(50, 2, 50)
安全平台。位置= Vector3.new(0, 1000, 0)
安全平台。锚定=真实的
安全平台。CanCollide =真实的
安全平台。材料=枚举。材料.力场
安全平台。Color = Color3.fromRGB(0, 170, 255)
安全平台。透明度=0.3
安全平台。父级=工作空间

当地的MainTab = Window:Tab('[主要]', '84830962019412')
当地的MainSection = MainTab:Section('主要功能'，{ Y ='84830962019412'，F ='84830962019412' }, 真实的)

主部分:开关('绕过反作弊', 错误的, 功能(州)
    如果状态然后
        为_，obj在pairs(getgc(真实的)) 做
            如果type(obj) ==“功能” 然后
                当地的info = debug.getinfo(obj)
                如果信息和info.name ==" IsInBypass " 然后
钩子函数(obj，功能() 返回 真实的 结束)
                结束
            结束
        结束
窗口:通知('已打开', '', “成功”, 4)
    end
end)

MainSection:Toggle('自动挡门', false, function(state)
    autoDoorEnabled = state
    if autoDoorEnabled then
        if autoDoorConnection then autoDoorConnection:Disconnect() end
        autoDoorConnection = RunService.RenderStepped:Connect(function()
            local playerGui = LocalPlayer:WaitForChild('PlayerGui')
            local dot = playerGui:FindFirstChild('Dot')
            if dot and dot:IsA('ScreenGui') then
                local container = dot:FindFirstChild('Container')
                if container then
                    local frame = container:FindFirstChild('Frame')
                    if frame and frame:IsA('GuiObject') then
                        frame.AnchorPoint = Vector2.new(0.5, 0.5)
                        frame.Position = UDim2.new(0.5, 0, 0.5, 0)
                    end
                end
            end
        end)
    else
        if autoDoorConnection then autoDoorConnection:Disconnect() end
    end
end)

主部分:开关('穿墙', 错误的, 功能(州)
noclipEnabled =状态
    如果 noclipEnabled 然后
        如果 noclipConnection 然后 noclipConnection:Disconnect() 结束
然后
本地玩家。性格；角色；字母
重复
                    如果零件:IsA('基础零件') 然后
部分。CanCollide =错误的
                    结束
                结束
            结束
        结束)
    其他
假如noclipconnection 功能然后noclipConnection:Disconnect()结束
        如果本地玩家。性格；角色；字母然后
为_,部分在ipairs(本地播放器.Character:GetDescendants())做
                如果零件:IsA('基础零件') 然后
部分。CanCollide =真实的
                结束
            结束
        结束
    结束
结束

主部分:开关('全亮', 错误的, 功能(州)
fullbrightEnabled = state
如果fullbrightEnabled然后
然后5
照明。时钟时间=14
照明FogEnd =100000
照明GlobalShadows =
照明。环境= Color3.fromRGB(255, 255, 255)
    其他
照明。亮度=1
照明。时钟时间=0
照明FogEnd =500
照明GlobalShadows =真实的
照明。环境= Color3.fromRGB(0, 0, 0)
    结束
结束)

主要部分:按钮（'删除所有门', 功能()
当地的游戏地图=工作空间。地图:FindFirstChild('游戏地图')
    如果游戏地图然后
当地的doors = gameMap:FindFirstChild("门"如果
本地玩家。性格；角色；字母
门:销毁()
窗口:通知('成功', '已删除所有门', “成功”, 3)
        结束
    结束
结束)

-- ===== 体力标签页 =====
当地的StaminaTab = Window:Tab('[体力]', '84830962019412')
通信线路(通信线路)
