(define (domain bartending)
    (:requirements :adl )
    
    (:types
        bartender
        location
        glass
        customer
    )
    
    (:constants 
        Agent - bartender
        BAR - location
    )
    
    (:predicates
        (Adjacent ?y ?z)
        (At ?x ?y)
        (ContainsBeer ?g)
        (Served ?c)
        (Holding ?g))
    )
    
    (:action PICK-UP
        :parameters (?a - Agent ?y - glass ?z - room)
        :precondition (and (At ?a ?y) (At ?y ?z) (not (Holding ?y))
        :effect (and (Holding ?y) (not (At ?y ?z)))
    )
    
     (:action HAND-GLASS
        :parameters (?a - Agent ?x - glass ?y - customer ?z - room)
        :precondition (and (At ?y ?z) (At ?a ?z) (Holding ?x) (ContainsBeer ?x) (not (Served ?y))
        :effect (and (Served ?y) (not (Holding ?x)))
    )
    
    (:action POUR
        :parameters (?a - Agent ?y - glass ?z - Bar)
        :precondition (and (Holding ?y) (At ?a ?z) (not (ContainsBeer ?y)) 
        :effect (and (ContainsBeer ?y))
    )
    
    (:action MOVE
        :parameters (?a - Agent ?y - room ?z - room)
        :precondition (and (At ?a ?y) (Adjacent ?y ?z)
        :effect (and (At ?a ?z) (not (At ?a ?y)))
    )
)