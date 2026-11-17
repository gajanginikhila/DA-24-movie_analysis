use movie_analysis;
insert into directors values
(1, 'S.S. Rajamouli', 'India'),
(2, 'Sukumar', 'India'),
(3, 'Sandeep Reddy Vanga', 'India'),
(4, 'Gowtam Tinnanuri', 'India'),
(5, 'Trivikram Srinivas', 'India'),
(6, 'Nag Ashwin', 'India');
insert into genres values
(1, 'Action'),
(2, 'Drama'),
(3, 'Romance'),
(4, 'Sports Drama'),
(5, 'Comedy'),
(6, 'Biography');
insert into movies values
(101, 'Baahubali: The Beginning', 2015, 1, 1, 159, 'Telugu'),
(102, 'RRR', 2022, 1, 1, 187, 'Telugu'),
(103, 'Pushpa: The Rise', 2021, 2, 1, 179, 'Telugu'),
(104, 'Arjun Reddy', 2017, 3, 3, 182, 'Telugu'),
(105, 'Jersey', 2019, 4, 4, 160, 'Telugu'),
(106, 'Ala Vaikunthapurramuloo', 2020, 5, 5, 165, 'Telugu'),
(107, 'Mahanati', 2018, 6, 6, 176, 'Telugu');
insert into actors values
(201, 'Prabhas', 'Male', 'India'),
(202, 'Anushka Shetty', 'Female', 'India'),
(203, 'N.T. Rama Rao Jr.', 'Male', 'India'),
(204, 'Ram Charan', 'Male', 'India'),
(205, 'Allu Arjun', 'Male', 'India'),
(206, 'Rashmika Mandanna', 'Female', 'India'),
(207, 'Vijay Deverakonda', 'Male', 'India'),
(208, 'Shalini Pandey', 'Female', 'India'),
(209, 'Nani', 'Male', 'India'),
(210, 'Shraddha Srinath', 'Female', 'India'),
(211, 'Pooja Hegde', 'Female', 'India'),
(212, 'Keerthy Suresh', 'Female', 'India'),
(213, 'Dulquer Salmaan', 'Male', 'India');
insert into movie_cast values
(301, 101, 201, 'Hero'),
(302, 101, 202, 'Heroine'),
(303, 102, 203, 'Lead Actor'),
(304, 102, 204, 'Lead Actor'),
(305, 103, 205, 'Hero'),
(306, 103, 206, 'Heroine'),
(307, 104, 207, 'Hero'),
(308, 104, 208, 'Heroine'),
(309, 105, 209, 'Hero'),
(310, 105, 210, 'Heroine'),
(311, 106, 205, 'Hero'),
(312, 106, 211, 'Heroine'),
(313, 107, 212, 'Lead Actress'),
(314, 107, 213, 'Lead Actor');
insert into ratings values
(401, 101, 8.0, 12000),
(402, 102, 8.4, 25000),
(403, 103, 7.6, 18000),
(404, 104, 8.0, 15000),
(405, 105, 8.5, 14000),
(406, 106, 7.3, 11000),
(407, 107, 8.2, 13000);
insert into box_office values
(501, 101, 180, 600),
(502, 102, 550, 1300),
(503, 103, 200, 350),
(504, 104, 5, 51),
(505, 105, 25, 52),
(506, 106, 100, 280),
(507, 107, 25, 85);

show tables;
select * from directors;
select * from genres;
select * from movies;
select * from actors;
select * from movie_cast;
select * from ratings;
select * from box_office;