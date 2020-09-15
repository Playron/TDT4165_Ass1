functor
import
    System
    Application(exit:Exit)
define

    fun{Length List}
        case List of H|T then
            1 + {Length T}
        else
            0
        end
    end
    {System.showInfo "Lengden av listen er: " #{Length [1 2 3 4 5]}}

    fun{Take List Count}
        if Count > {Length List} then
            List
        else
            case List of H|T then
                if Count == 1 then
                    H | nil
                else
                    H | {Take T Count-1}
                end
            end
        end
    end


    {System.showInfo "Heihei"}
    {System.show {Take [1 2 3 4 5] 4}}
    {System.showInfo "Her er Count større enn list: "}
    {System.show {Take [1 2 3 4] 5}}
    {System.showInfo " "}

    fun{Drop List Count}
        if Count > {Length List} then
            nil
        else
            case List of H|T then
                if Count == 1 then
                    T
                else
                    {Drop T Count-1}
                end
            end
        end
    end
    
    {System.show {Drop [1 2 3 4 5] 3}}
    {System.showInfo "Her er Count større enn list: "}
    {System.show {Drop [1 2 3 4] 5}}


    {Exit 0}
end
