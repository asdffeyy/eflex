local conf = require(script.Parent.Parent.Configuration)
print("? | eFlex Booted!")
while true do
	for i,v in pairs(conf.Ads) do
		if conf.AdFadeAnimation==true then
			game.TweenService:Create(script.Parent.Screen_1.SurfaceGui.ImageLabel,TweenInfo.new(1,Enum.EasingStyle.Linear),{ImageTransparency=0}):Play()
		end
		script.Parent.Screen_1.SurfaceGui.ImageLabel.Image=v.Image
		if conf.AdFadeAnimation==true then
			task.wait(v.Duration+1)
		else
			task.wait(v.Duration)
		end
		if conf.AdFadeAnimation==true then
			game.TweenService:Create(script.Parent.Screen_1.SurfaceGui.ImageLabel,TweenInfo.new(1,Enum.EasingStyle.Linear),{ImageTransparency=1}):Play()
			task.wait(1)
		end
	end
end
