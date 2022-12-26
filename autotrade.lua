for i = 1,AmountToTrade do if not getgenv().autotrade then break end
    for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
        if v:IsA("Tool") and v.Name ~= "Boombox" then
            v.Parent = v.Parent.Parent.Character
            wait(1)
            local args = {
                [1] = game:GetService("Players")[PlayerToTrade],
                [2] = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"),
                [3] = 1e5
            }

            game:GetService("ReplicatedStorage"):FindFirstChild("_CS.Events").TradeSellerBuyer:FireServer(unpack(args))
        end
    task.wait(10)
    end
end
