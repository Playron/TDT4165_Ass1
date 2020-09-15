functor
import
    System
    Application(exit:Exit)
define
    proc {PrintGreater Num1 Num2}
        if Num1 > Num2 then
            {System.showInfo Num1}
        else
            {System.showInfo Num2}
        end
        end
    {PrintGreater 100 99}
    {Exit 0}
end

