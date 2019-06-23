(define (problem bar-22) 
    (:domain bartending)
    (:objects 
        G - glass
        C - customer
        UF - location
        UF - location
        UB - location
        MF - location
        LF - location
        MB - location
        LB - location
        
    )
    
    (:init
        (At Agent BAR)
        (not (ContainsBeer G))
        (At C UF)
        (At G BAR)
        (not (Served C))
        (Adjacent UF BAR)
        (Adjacent BAR UF)
        (Adjacent UB UF)
        (Adjacent UF UB)
        (Adjacent UF MF)
        (Adjacent MF UF)
        (Adjacent MB UB)
        (Adjacent UB MB)
        (Adjacent MF LF)
        (Adjacent LF MF)
        (Adjacent LF LB)
        (Adjacent LB LF)
        (Adjacent LB MF)
        (Adjacent MF LB)
        
    )
    
    (:goal
        (Served C)
    )
)