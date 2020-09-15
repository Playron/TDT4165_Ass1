functor
import
    System
    Application(exit:Exit)
define
    local
        Pi A D C
    in
        proc{Circle R}
            Pi = 355.0/113.0
            A = Pi * R * R 
            D = 2.0 * R
            C = Pi * D
            {System.showInfo Pi}
            {System.showInfo A}
            {System.showInfo D}
            {System.showInfo C}
        end
    end
    {Circle 5.0}
    {Exit 0}
end