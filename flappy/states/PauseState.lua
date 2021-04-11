

PauseState = Class{__includes = BaseState}

function PauseState:enter(params)
    self.bird = params.bird
    self.pipePairs = params.pipePairs
    self.timer = params.timer
    self.score = params.score
end

function PauseState:update(dt)
    -- transition to countdown when enter/return are pressed
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateMachine:change('play',{
            bird = self.bird,
            pipePairs = self.pipePairs,
            timer = self.timer,
            score = self.score
            })
    end
end

function PauseState:render()
    -- simple UI code
    love.graphics.setFont(flappyFont)
    love.graphics.printf('Paused', 0, 64, VIRTUAL_WIDTH, 'center')
    
end