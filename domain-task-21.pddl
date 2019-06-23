(define (domain bartending)
    (:requirements :adl )
    
    (:types
        bartender
        location
        glass
        customer
        object
    )
    
    (:constants 
        Agent - bartender
        BAR - location
    )
    
    (:predicates
        (Adjacent ?y - location ?z - location)
        (At ?x - object ?y - location)
        (ContainsBeer ?g - glass)
        (Served ?c - customer)
        (Holding ?g - glass)
    )
    
    (:action PICK-UP
        :parameters (?y - glass ?z -location)
        :precondition (and (At Agent ?z) (At ?y ?z) (not (Holding ?y)) (not (ContainsBeer ?y)))
        :effect (and (Holding ?y) (not (At ?y ?z)))
    )
    
     (:action HAND-GLASS
        :parameters (?x - glass ?y - customer ?z - location)
        :precondition (and (At ?y ?z) (At Agent ?z) (Holding ?x) (ContainsBeer ?x) (not (Served ?y)))
        :effect (and (Served ?y) (not (Holding ?x)))
    )
    
    (:action POUR
        :parameters (?y - glass)
        :precondition (and (Holding ?y) (At Agent BAR) (not (ContainsBeer ?y))) 
        :effect (and (ContainsBeer ?y))
    )
    
    (:action MOVE
        :parameters (?y - location ?z - location)
        :precondition (and (At Agent ?y) (Adjacent ?y ?z))
        :effect (and (At Agent ?z) (not (At Agent ?y)))
    )
)