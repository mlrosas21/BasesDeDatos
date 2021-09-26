CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `vi_film_artista` AS
    SELECT 
        `f`.`title` AS `title`,
        CONCAT(`a`.`last_name`, ', ', `a`.`first_name`) AS `Artista`,
        `f`.`replacement_cost` AS `replacement_cost`
    FROM
        ((`film_actor` `fa`
        JOIN `film` `f` ON ((`fa`.`film_id` = `f`.`film_id`)))
        JOIN `actor` `a` ON ((`fa`.`actor_id` = `a`.`actor_id`)))
    WHERE
        (`f`.`replacement_cost` BETWEEN 15 AND 27)
	AND 
		a.first_name LIKE '%b'
    ORDER BY `f`.`replacement_cost`