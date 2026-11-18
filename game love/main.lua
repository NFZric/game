--variaveis globais & bibliotecas--

--===============================--
local g3d = require "g3d"

--funções--

function love.mousepressed(x,y,b)

end

--funções principais--

function love.load()
    block = g3d.newModel("models/bloco.obj", "models/grassBlock.png", {0,0,0})

    g3d.camera.lookAt(3,3,2,0,0,0)

    rotate = 0
end

function love.keypressed(k)
    if k == "l" then
        love.event.quit()
    end
end

function love.update(dt)
    rotate = rotate + dt
    block:setRotation(0,rotate,0)

    -- Permite mover a câmera livremente com WASD + Mouse (padrão do g3d)
    g3d.camera.firstPersonMovement(dt)
end

function love.mousemoved(x,y,dx,dy)
    g3d.camera.firstPersonLook(dx,dy)
end

function love.draw()
    block:draw()
end


