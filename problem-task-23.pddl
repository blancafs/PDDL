(define (problem bar-23) 
    (:domain bartending)
    (:objects 
        G - glass
        C - customer
        K - customer
        UF - location
        UB - location
        MF - location
        LF - location
        MB - location
        LB - location
        S - glass
        
    )
    
    (:init
        (At Agent MF)
        (not (ContainsBeer G))
        (not (ContainsBeer S))
        (At C UB)
        (At K LF)
        (At G MB)
        (At S LB)
        (not (served K))
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
    
    (:goal (and
        (Served C)
        (Served K)
        (At Agent BAR)
    )
)
)