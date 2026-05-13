repeat task.wait() until game:IsLoaded()
repeat task.wait() until game:GetService("Players").LocalPlayer

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "撕咬之夜脚本",
   LoadingTitle = "加载中...",
   LoadingSubtitle = "脚本作者 小张张 X",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "RayfieldConfig",
      FileName = "FengYuConfig"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = false,
   KeySettings = {
      Title = "密钥系统",
      Subtitle = "输入密钥",
      Note = "密钥: 114514",
      FileName = "Key",
      SaveKey = true,
      ReadOnly = false,
      Characters = "1234567890"
   }
})

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Lighting = game:GetService("Lighting")
local LocalPlayer = Players.LocalPlayer

当地的noclipEnabled =错误的
当地的noclipConnection =无
当地的fullbrightEnabled =错误的
当地的autoDoorEnabled =错误的
当地的autoDoorConnection =无
当地的infiniteStaminaEnabled =错误的
当地的无限终端连接=无
当地的runSpeedEnabled =错误的
当地的walkSpeedEnabled =错误的
当地的runSpeedValue =24
当地的walkSpeedValue =15
当地的autoRepairEnabled =错误的
当地的自动修复延迟=0.5
当地的自动修复线程=无
当地的hitboxEnabled =错误的
local hitboxSize = 15
local hitboxConnection = nil
local killAllEnabled = false
local autoBlockEnabled = false

当地的SafePlatform = Instance.new('部分')
安全平台。名称='安全平台'
SafePlatform.Size = Vector3.new(50, 2, 50)
SafePlatform.Position = Vector3.new(0, 1000, 0)
SafePlatform.Anchored = true
SafePlatform.CanCollide = true
SafePlatform.Material = Enum.Material.ForceField
SafePlatform.Color = Color3.fromRGB(0, 170, 255)
SafePlatform.Transparency = 0.3
SafePlatform.Parent = workspace

-- ===== 主要功能标签页 =====
local MainTab = Window:CreateTab("主要功能", 4483362458)
local MainSection = MainTab:CreateSection("基础功能")

MainTab:CreateToggle({
   Name = "绕过反作弊",
   CurrentValue = false,
   Flag = "BypassAnticheat",
   Callback = function(Value)
      if Value then
         for _, obj in pairs(getgc(true)) do
            if type(obj) == "function" then
               local info = debug.getinfo(obj)
               if info and info.name == "IsInBypass" then
                  hookfunction(obj, function() return true end)
               end
            end
         end
         Rayfield:Notify({
            Title = "成功",
            Content = "反作弊已绕过",
            Duration = 6.5,
            Image = 4483362458
         })
      end
   end
})

MainTab:CreateToggle({
   Name = "自动挡门",
   CurrentValue = false,
   Flag = "AutoDoor",
   Callback = function(Value)
      autoDoorEnabled = Value
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
   end
})

重复
   Name = "穿墙",
当前值=错误的,
标志=“不咬人”,
回拨=功能(值)
noclipEnabled =值
如果noclipEnabled然后
如果noclipConnection然后noclipConnection:Disconnect()结束
noclipConnection = RunService。步进式：连接（功能()
            如果本地玩家。性格；角色；字母然后
为_,部分在ipairs(本地播放器.Character:GetDescendants())做
如果零件:IsA('基础零件)然后'基础零件') 然后
部分CanCollide =错误的
                  结束
               结束
            结束
         结束)
      其他
假如noclipconnection功能然后noclipConnection:Disconnect()结束
         如果本地玩家。性格；角色；字母然后
为特尔韦瑟对（本地播放器)字符:GetDescendants())做
当故事结束时，则伊萨('基础零件') 然后
部分CanCollide=真实
               结束
            结束
         结束
      结束
   结束
})

MainTab:CreateToggle({
名称="全亮",
当前值=错误的,
标志=“富布赖特”,
回拨=功能(值)
fullbrightEnabled = Value
如果fullbrightEnabled然后
照明。亮度=5
      
