while task.wait(10) do if not getgenv().autotrade then break end
    for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
        if v:IsA("Tool") then
            game.Players.LocalPlayer.character.Humanoid:EquipTool(v)
            break
        end
    end
    wait(1)
    local args = {
        [1] = game:GetService("Players")[PlayerToTrade],
        [2] = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"),
        [3] = AmountToPay
    }

    game:GetService("ReplicatedStorage"):FindFirstChild("_CS.Events").TradeSellerBuyer:FireServer(unpack(args))
end
