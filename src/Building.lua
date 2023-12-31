local love = require("love")

function Building()
  return {
    x = 0,
    y = 620,
    src = "background/background/buildings.png",

    -- Init the building
    init = function (self, x)
      self.x = x
    end,

    -- Draw the building only when it is on the screen
    draw = function (self)
      if self.x <= 1920 then
        love.graphics.draw(love.graphics.newImage(self.src), self.x, self.y)
      end
    end,

    -- Update the building position
    -- When the building is out of the screen, reset it to the right side
    update = function (self, dt)
      self.x = self.x - 60 * dt
      if self.x <= -180 then
        self.x = 1980
      end
    end
  }
end

return Building