SELECT person.id, person.name, task.content
FROM person LEFT JOIN task ON person.id = task.person_id
ORDER BY person.id;

