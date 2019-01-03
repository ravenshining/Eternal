function mediafog()
	for p in Players() do
		if p.polygon.media then
			if p.polygon.media.type == "water" then
				Level.underwater_fog.color.r = .75
				Level.underwater_fog.color.g = .875
				Level.underwater_fog.color.b = 1
			elseif p.polygon.media.type == "lava" then
				Level.underwater_fog.color.r = 1
				Level.underwater_fog.color.g = .5
				Level.underwater_fog.color.b = 0
			elseif p.polygon.media.type == "goo" then
				Level.underwater_fog.color.r = 1
				Level.underwater_fog.color.g = 0
				Level.underwater_fog.color.b = 1
			elseif p.polygon.media.type == "sewage" then
				Level.underwater_fog.color.r = 0
				Level.underwater_fog.color.g = 1
				Level.underwater_fog.color.b = 0
			else
				Level.underwater_fog.color.r = 0
				Level.underwater_fog.color.g = .25
				Level.underwater_fog.color.b = 0
			end
		end
	end
end

Triggers = {}
	if #Players == 1 then
		mediafog()
	end
end