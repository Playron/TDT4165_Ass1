functor

import
    System
    Application(exit:Exit)
define
    fun {Maximum Num1 Num2}
        if Num1 < Num2 then
            Num2
        else
            Num1
        end
    end
    {System.showInfo {Maximum 100 98}}
    {Exit 0}
end