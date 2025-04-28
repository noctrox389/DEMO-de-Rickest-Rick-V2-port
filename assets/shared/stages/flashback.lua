function onCreate()
	-- background shit

	makeLuaSprite('flashback', 'flashback', -800, -200);
	setScrollFactor('flashback', 1, 1);
	setGraphicSize('flashback', 3400, 2040)
    scaleObject('flashback',2.5,2.5)
	addLuaSprite('flashback', false);

	--close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end