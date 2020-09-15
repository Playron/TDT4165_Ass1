functor
import
    Application(exit:Exit)
    System
define
    proc{Circle R}
        local
            Pi = 355.0/113.0
            A = Pi * R * R
            D = 2.0 * R
            C = Pi * D
        in
            {System.showInfo Pi}
            {System.showInfo A}
            {System.showInfo D}
            {System.showInfo C}
        end
    end
    {Circle 5.0}
    {Exit 0}
end