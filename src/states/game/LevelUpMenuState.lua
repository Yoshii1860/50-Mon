--[[
    GD50
    Pokemon

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

LevelUpMenuState = Class{__includes = BaseState}

function LevelUpMenuState:init(hp, hpi, attack, attacki, defense, defensei, speed, speedi)
    
    self.levelUpMenu = Menu {
        x = VIRTUAL_WIDTH - 192,
        y = VIRTUAL_HEIGHT - 128,
        width = 192,
        height = 128,
        selector = false,
        items = {
            {
                text = 'HP: ' .. hp .. ' + ' .. hpi .. ' = ' .. hp + hpi,
                onSelect = function() 
                    gStateStack:push(FadeInState({
                        r = 1, g = 1, b = 1
                    }, 1, 
                    function()
                        -- pop off levelup menu
                        gStateStack:pop()

                        -- resume field music
                        gSounds['victory-music']:stop()
                        gSounds['field-music']:play()
                        
                        -- pop off the battle state
                        gStateStack:pop()
                        gStateStack:push(FadeOutState({
                            r = 1, g = 1, b = 1
                        }, 1, function() end))
                    end))
                end
            },
            {
                text = 'Attack: ' .. attack .. ' + ' .. attacki .. ' = ' .. attack + attacki,
            },
            {
                text = 'Defense: ' .. defense .. ' + ' .. defensei .. ' = ' .. defense + defensei,
            },
            {
                text = 'Speed: ' .. speed .. ' + ' .. speedi .. ' = ' .. speed + speedi,
            }
        }
    }

    self.levelUpMenu.selection.selector = false
end

function LevelUpMenuState:update(dt)
    self.levelUpMenu:update(dt)
end

function LevelUpMenuState:render()
    self.levelUpMenu:render()
end