--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=game:GetService("Players");local v1=v0.LocalPlayer;local v2=v1.Character or v1.CharacterAdded:Wait() ;local v3=v2:WaitForChild("HumanoidRootPart");local v4=Instance.new("ScreenGui");local v5=Instance.new("TextButton");v4.Parent=v1:WaitForChild("PlayerGui");v5.Parent=v4;v5.Size=UDim2.new(0,200,0,50);v5.Position=UDim2.new(0.5, -100,0.9, -25);v5.Text="Start Farm";v5.BackgroundColor3=Color3.fromRGB(85,170,255);v5.TextScaled=true;v5.Font=Enum.Font.SourceSansBold;v5.TextColor3=Color3.fromRGB(255,255,255);local v16=false;local v17;_G.ProximityPromptCountdown=1;_G.AutoProximityPrompt=false;local function v18(v22,v23,v24) if (v22.ClassName=="ProximityPrompt") then v23=v23 or 1 ;local v35=v22.HoldDuration;if v24 then v22.HoldDuration=0;end for v41=1,v23 do v22:InputHoldBegin();if  not v24 then wait(v22.HoldDuration);end v22:InputHoldEnd();end v22.HoldDuration=v35;else error("userdata<ProximityPrompt> expected");end end local function v19() while _G.AutoProximityPrompt do wait(_G.ProximityPromptCountdown);for v37,v38 in pairs(game:GetService("Workspace"):GetDescendants()) do if v38:IsA("ProximityPrompt") then v18(v38,1,true);end end end end local function v20(v25) v3.CFrame=CFrame.new(v25);end local function v21() local v27={Vector3.new(918.5054931640625,6.004361629486084,2593.403076171875),Vector3.new(906.214111328125,5.937725067138672,2598.89599609375),Vector3.new(902.2783203125,5.911746501922607,2598.19482421875),Vector3.new(893.4700927734375,6.002333164215088,2604.52685546875),Vector3.new(894.46728515625,6.192965030670166,2609.843505859375),Vector3.new(916.9315185546875,5.948697090148926,2617.240966796875),Vector3.new(922.0988159179688,5.937203884124756,2617.114013671875),Vector3.new(931.0291748046875,5.925728797912598,2616.84619140625),Vector3.new(934.7196044921875,5.966183185577393,2616.73583984375),Vector3.new(960.099853515625,5.936804294586182,2609.057373046875),Vector3.new(960.1348266601562,5.867787837982178,2605.752197265625),Vector3.new(951.9701538085938,5.467665195465088,2599.0078125),Vector3.new(946.7758178710938,5.467687606811523,2599.128662109375)};local v28={Vector3.new(772.5806884765625,5.931325912475586,2004.1370849609375),Vector3.new(763.7918090820312,5.931321620941162,2004.209228515625),Vector3.new(738.3623046875,5.931361198425293,2003.635498046875),Vector3.new(730.3677368164062,5.931342124938965,2003.906494140625),Vector3.new(759.4608764648438,5.918132781982422,1982.158203125),Vector3.new(750.1384887695312,5.931386470794678,1982.6368408203125),Vector3.new(749.9178466796875,5.93133020401001,1978.375244140625),Vector3.new(758.1748046875,5.931359767913818,1977.9512939453125),Vector3.new(771.8670654296875,5.9313130378723145,1955.5863037109375),Vector3.new(762.49560546875,5.93131685256958,1955.64208984375),Vector3.new(738.40478515625,5.881110668182373,1957.04931640625),Vector3.new(729.3521728515625,5.922060489654541,1956.755126953125)};for v29,v30 in ipairs(v27) do v20(v30);if (v30==Vector3.new(918.5054931640625,6.004361629486084,2593.403076171875)) then wait(15);else wait(1);end end v20(Vector3.new(884.8269653320312,2.7613680362701416,2602.364990234375));wait(380);for v31,v32 in ipairs(v27) do v20(v32);if (v32==Vector3.new(918.5054931640625,6.004361629486084,2593.403076171875)) then wait(5);else wait(1);end end v20(Vector3.new(884.8269653320312,2.7613680362701416,2602.364990234375));wait(380);for v33,v34 in ipairs(v28) do v20(v34);wait(2);end v20(Vector3.new(884.8269653320312,2.7613680362701416,2602.364990234375));wait(380);end v5.MouseButton1Click:Connect(function() v16= not v16;if v16 then v5.Text="Stop Farm";_G.AutoProximityPrompt=true;v17=coroutine.wrap(function() while v16 do v21();end end);v17();v19();else v5.Text="Start Farm";_G.AutoProximityPrompt=false;end end);