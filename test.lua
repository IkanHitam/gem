-- nyalakan
if getgenv().HapusSpiderWeb then 
    getgenv().HapusSpiderWeb:Disconnect() 
end

-- bersihin jaring
for _, item in pairs(workspace:GetChildren()) do
    if item.Name == "SpiderWebFX" then item:Destroy() end
end

-- pantau otomatis 
getgenv().HapusSpiderWeb = workspace.ChildAdded:Connect(function(item)
    if item.Name == "SpiderWebFX" then
        item:Destroy()
    end
end)

print("✅ Penghapus SpiderWeb Aktif!")
