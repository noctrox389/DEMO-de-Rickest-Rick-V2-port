// USES PSYCH ENGINE 0.7.1h
// Author: TheLeerName

var zoomblurAllowed:Bool = true;
var intensity:Float = 500;
var pos = {x: 0.5, y: 0.5};

game.initLuaShader('zoomblur');
var shader = game.createRuntimeShader('zoomblur');
var filters = [new ShaderFilter(shader)];
game.camGame._filters = game.camHUD._filters = filters;
shader.setFloat('posX', pos.x); shader.setFloat('posY', pos.y);

function onUpdate(elapsed) {
	shader.setFloat('focusPower', zoomblurAllowed ? (game.camHUD.zoom - 1) * intensity : 0);
}