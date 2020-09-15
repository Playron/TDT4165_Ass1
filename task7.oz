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

    fun{Append List1 List2}
        if List1 == nil then
            List2
        else
            List1.1|{Append List1.2 List2}
        end
    end
    {System.showInfo "Slår sammen lista [1 2 4] og [3 4 8 9]"}
    {System.show {Append [1 2 4] [3 4 8 9]}}

    fun{Member List Element}
        case List of H|T then
            if H == Element then
                true
            else
                {Member T Element}
            end
        else
            false
        end
    end
    {System.show{Member [1 2 3] 3}}
    {System.show{Member [1 2 3] 4}}

    fun{Position List Element}
        case List of H|T then
            if H == Element then
                1
            else
                {Position T Element} + 1
            end
        end
    end

    {System.show{Position [1 2 3 3 4] 4}}
    {Exit 0}
end
