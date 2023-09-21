local love = require("love")

function MainMenu()
  return {

    -- Init main menu/draw buttons
    init = function (self, window, buttons)
      buttons.exit:draw(window.width - 300, window.height + 250)
      buttons.play:draw(window.width - 300, window.height - 350)
    end
  }
end

return MainMenu