INSERT INTO category(description) VALUES ('Curso');
INSERT INTO category(description) VALUES ('Oficina');

INSERT INTO guest(name, email) VALUES ('José Silva', 'jose@gmail.com');
INSERT INTO guest(name, email) VALUES ('Tiago Faria', 'tiago@gmail.com');
INSERT INTO guest(name, email) VALUES ('Maria do Rosário', 'maria@gmail.com');
INSERT INTO guest(name, email) VALUES ('Teresa Silva', 'teresa@gmail.com');

INSERT INTO activity(name, description, price, category_id) VALUES ('Curso de HTML', 'Aprenda HTML de forma prática', 80.00, 1);
INSERT INTO activity(name, description, price, category_id) VALUES ('Oficina de GitHub', 'Controle de versões de seus projetos', 50.00, 2);

INSERT INTO guest_activity(guest_id, activity_id) VALUES (1, 1);
INSERT INTO guest_activity(guest_id, activity_id) VALUES (1, 2);
INSERT INTO guest_activity(guest_id, activity_id) VALUES (2, 1);
INSERT INTO guest_activity(guest_id, activity_id) VALUES (3, 1);
INSERT INTO guest_activity(guest_id, activity_id) VALUES (3, 2);
INSERT INTO guest_activity(guest_id, activity_id) VALUES (4, 2);

INSERT INTO block(start, end_instant, activity_id) VALUES ('2017-09-25 08:00:00', '2017-09-25 08:00:00', 1);
INSERT INTO block(start, end_instant, activity_id) VALUES ('2017-09-25 14:00:00', '2017-09-25 18:00:00', 2);
INSERT INTO block(start, end_instant, activity_id) VALUES ('2017-09-26 08:00:00', '2017-09-26 11:00:00', 2);