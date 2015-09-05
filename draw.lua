-- color = {red, gree, blue}
function drawPixel(gc, x, y, color)
	gc:setColorRGB(color[1], color[2], color[3])
	gc:drawRect(x, y, 1, 1) -- Guessing on the most efficient way to draw a pixel
end

function testDraw(gc)
  color = {0, 255, 0}
  drawPixel(gc, 5, 50, color)	

	color = {255, 0, 0} 
	for x = 10, 50 do
		for y = 50, 90 do
			drawPixel(gc, x, y, color)	
		end
	end
end