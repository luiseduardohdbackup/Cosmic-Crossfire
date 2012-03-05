--BALLOON CLASS
 
local Triangle = {}
 
function Triangle.new()
        
        -- Draw a triangle
                local triangle = display.newLine(100,100, 300,100);
                triangle:append(200,0, 100,100);
                triangle.width = 8;
                triangle:setColor(100,255,100,255);
        
                -- Add a custom physics body shape based on the triangle shape
                triShape = {0,0, 100,-100, 200,0}
                physics.addBody( triangle, { density=3.0, friction=0.8, bounce=0.3, shape = triShape } )
                triangle.id = "triangle"
                triangle.x = 968;
                triangle.y = 550;
                triangle.isSleepingAllowed = false
                triangle.isBullet = true;
                triangle.linearDamping = 1
                triangle.angularDamping = 1;
        
        
        
      
        
        function triangle:destroy()
        print("triangle gone");
                triangle:removeSelf()
                triangle = nil
        end
        
        function triangle:fadeOut()
        print("fading out")
            local function goAway()
            print("...and going away");
            triangle:removeSelf()
                triangle = nil
            end
        transition.to( triangle, {delay=1, time=3000, alpha=0.0, onComplete=goAway} )
        end
        
                
        return triangle
        
end
 
return Triangle