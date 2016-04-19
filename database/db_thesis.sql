-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Apr 20, 2016 at 01:31 AM
-- Server version: 5.5.34
-- PHP Version: 5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: 'db_thesis'
--

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_academic'
--

CREATE TABLE tbl_academic (
  academic_id smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  academic_name varchar(125) NOT NULL,
  PRIMARY KEY (academic_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_academic'
--

INSERT INTO tbl_academic (academic_id, academic_name) VALUES
(1, 'School of Contemporary'),
(2, 'School of Design'),
(3, 'School of Information Technology'),
(4, 'School of Nursing'),
(5, 'School of Language and Liberal Studies'),
(6, 'School of Health Sciences'),
(7, 'School of Aviation Technology');

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_calendar'
--

CREATE TABLE tbl_calendar (
  calendar_id mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  calendar_date date NOT NULL,
  calendar_desc varchar(150) NOT NULL,
  PRIMARY KEY (calendar_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_calendar'
--

INSERT INTO tbl_calendar (calendar_id, calendar_date, calendar_desc) VALUES
(1, '2016-01-15', 'Thesis Document'),
(2, '2016-03-19', 'Checkpoint 1'),
(3, '2016-03-21', 'Star Wars API'),
(4, '2016-03-26', 'Chat App 1'),
(5, '2016-03-26', 'Checkpoint 2'),
(6, '2016-02-01', 'Assignment 1'),
(7, '2016-02-02', 'Chat App 2'),
(8, '2016-02-04', 'Angular Ionic App'),
(9, '2016-02-05', 'PHP File Uploading'),
(10, '2016-02-09', 'JSON'),
(11, '2016-02-11', 'Package Phone Gap'),
(12, '2016-02-15', 'Assignment 2'),
(13, '2016-02-28', 'Thesis Site'),
(14, '2016-03-03', 'MEAN Stack App'),
(15, '2016-03-28', 'Assignment 3'),
(16, '2016-03-29', 'Game Website');

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_calendarlink'
--

CREATE TABLE tbl_calendarlink (
  calendarlink_id mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  user_id smallint(4) NOT NULL,
  calendar_id mediumint(6) NOT NULL,
  programcourselink_id mediumint(6) NOT NULL,
  PRIMARY KEY (calendarlink_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_calendarlink'
--

INSERT INTO tbl_calendarlink (calendarlink_id, user_id, calendar_id, programcourselink_id) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_classlist'
--

CREATE TABLE tbl_classlist (
  classlist_id smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  classlist_active varchar(25) NOT NULL,
  PRIMARY KEY (classlist_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_classlist'
--

INSERT INTO tbl_classlist (classlist_id, classlist_active) VALUES
(1, 'Online'),
(2, 'Offline');

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_classlistlink'
--

CREATE TABLE tbl_classlistlink (
  classlistlink_id mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  user_id smallint(4) NOT NULL,
  profile_id mediumint(6) NOT NULL,
  messmap_id mediumint(6) NOT NULL,
  PRIMARY KEY (classlistlink_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_classlistlink'
--

INSERT INTO tbl_classlistlink (classlistlink_id, user_id, profile_id, messmap_id) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_code'
--

CREATE TABLE tbl_code (
  code_id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  code_name varchar(20) NOT NULL,
  PRIMARY KEY (code_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_code'
--

INSERT INTO tbl_code (code_id, code_name) VALUES
(1, 'IMS1'),
(2, 'IDP3'),
(3, 'GRD1'),
(4, 'VEE1'),
(5, 'VGD1'),
(6, 'PHS1'),
(7, 'ITD1');

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_content'
--

CREATE TABLE tbl_content (
  content_id smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  content_file varchar(100) NOT NULL,
  content_name varchar(75) NOT NULL,
  content_type varchar(75) NOT NULL,
  content_folder varchar(75) NOT NULL,
  PRIMARY KEY (content_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_coursecolour'
--

CREATE TABLE tbl_coursecolour (
  coursecolour_id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  coursecolour_colour varchar(50) NOT NULL,
  PRIMARY KEY (coursecolour_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_coursecolour'
--

INSERT INTO tbl_coursecolour (coursecolour_id, coursecolour_colour) VALUES
(1, 'Blue'),
(2, 'Yellow'),
(3, 'Orange'),
(4, 'Purple'),
(5, 'Green');

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_courses'
--

CREATE TABLE tbl_courses (
  courses_id mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  courses_name varchar(110) NOT NULL,
  courses_codename varchar(100) NOT NULL,
  courses_desc text NOT NULL,
  courses_code tinyint(3) NOT NULL,
  courses_year tinyint(3) NOT NULL,
  courses_semesterterm tinyint(3) NOT NULL,
  courses_program tinyint(3) NOT NULL,
  courses_coursecolour tinyint(3) NOT NULL,
  PRIMARY KEY (courses_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_courses'
--

INSERT INTO tbl_courses (courses_id, courses_name, courses_codename, courses_desc, courses_code, courses_year, courses_semesterterm, courses_program, courses_coursecolour) VALUES
(1, 'Advanced Web Technologies 2', 'IMS12 - MMED - 6007 - 16W', 'Extending topics introduced in MMED 6001, this course covers more advanced topics in the technologies for developing dynamic Web applications, and facilitates the development of student thesis projects. The course is a combination of lecture/presentation and seminar sessions to facilitate the discussion and development of year-end projects. Topics and projects from MMED 6006 will also be integrated into the content for this course.', 1, 1, 2, 1, 1),
(2, 'Advanced Multimedia Technologies 2', 'IMS12 - MMED - 6009 - 16W', 'This course will further explore the use of Adobe Air in the development of Desktop and Mobile applications and the student will be expected to have an application published by the end of the semester.', 1, 1, 2, 1, 5),
(3, 'Advanced Streaming Technologies 2', 'IMS12 - MMED - 6006 - 16W', 'Extending topics introduced in MMED 6005, this course covers more advanced topics in Flash-based technologies for developing dynamic Web applications, and facilitates the development of individuals students'' thesis projects. The course is a combination of lecture/presentation and seminar sessions to facilitate the discussion and development of year-end projects. Topics and projects from MMED 6007 will also be integrated into the content for this course.', 1, 1, 2, 1, 3),
(4, 'Visual Communications 2', 'IMS12 - MMED - 6008 - 16W', 'Continuation of Visual Communications 1. This course consists of a greater integration with other areas of the MMDP Post program with a focus on a self directed project with advisor.', 1, 1, 2, 1, 4),
(5, 'Interactive Story & Concept 2', 'IMS12 - MMED - 6003 - 16W', 'This course is based on the tracking of the design document created in the previous course as part of the Thesis Project.', 1, 1, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_credentials'
--

CREATE TABLE tbl_credentials (
  credentials_id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  credentials_name varchar(100) NOT NULL,
  PRIMARY KEY (credentials_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_credentials'
--

INSERT INTO tbl_credentials (credentials_id, credentials_name) VALUES
(1, 'Ontario College Diploma'),
(2, 'Ontario College Graduate Certificate'),
(3, 'Ontario College Advanced Diploma'),
(4, 'Degree');

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_deliveryterm'
--

CREATE TABLE tbl_deliveryterm (
  deliveryterm_id smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  deliveryterm_name varchar(75) NOT NULL,
  PRIMARY KEY (deliveryterm_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_deliveryterm'
--

INSERT INTO tbl_deliveryterm (deliveryterm_id, deliveryterm_name) VALUES
(1, 'Full Time'),
(2, 'Day Time'),
(3, 'Co-op'),
(4, 'Apprenticeship'),
(5, 'Online'),
(6, 'Weekend');

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_discussions'
--

CREATE TABLE tbl_discussions (
  discussions_id mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  discussions_topic varchar(75) NOT NULL,
  discussions_desc text NOT NULL,
  discussions_user smallint(4) NOT NULL,
  discussions_writetitle varchar(75) NOT NULL,
  discussions_writedesc text NOT NULL,
  PRIMARY KEY (discussions_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_grades'
--

CREATE TABLE tbl_grades (
  grades_id mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  grades_item varchar(100) NOT NULL,
  grades_mark varchar(25) NOT NULL,
  grades_weight varchar(15) NOT NULL,
  grades_desc text NOT NULL,
  PRIMARY KEY (grades_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_grades'
--

INSERT INTO tbl_grades (grades_id, grades_item, grades_mark, grades_weight, grades_desc) VALUES
(1, 'Thesis Document', '60', '6/10', 'Individual Feedback:\r\n\r\nDocument is quite nicely designed and has a very professional look to it. Nice to see a table of contents included.  Please make sure you use a spell checking/grammar checking service.\r\n\r\nThe concept was not very clearly explained. The background gave me somewhat of a better idea of the purpose of the app. I feel like you still need to hammer down exactly what the purpose of this app is and what it will do. Rob had talked to about creating a "helper" app that could be used to aid students in navigating through FOL giving point and tips. I feel this may be a better direction for you to take.\r\n\r\nI didn''t see a competitive analysis. Usually you specifically list who your competitors are and discuss ways that your app is different/better.\r\n\r\nThe technology breakdown was thorough in the sense you listed many technologies you plan on using but I would also like to see an explanation as to what they do and why you are using them.\r\n\r\nAt the beginning of the doc and in the middle, you start to get into app specific functionality but I feel it could be broken down even more.\r\n\r\nGood effort, Brit.'),
(2, 'Project 1 - Star Wars API', '57', '8.5/15', 'Individual Feedback:\r\n\r\nValid HTML. Valid CSS. The document outline contains some untitled elements. The design is fairly basic but looks good. It''s somewhat responsive but has issues at mobile size. The first AJAX call is being made correctly and the list is populating. It looks like you were getting close to being able to make the second call. You needed to add a click event to the actor tag if that is the route you planned on taking. Hopefully in the class review helped. Good effort Brit.'),
(3, 'Project 2 - Mobile App', '75', '11.25/15', '	\r\nIndividual Feedback:\r\n\r\nValid HTML. Valid CSS. Even if you''re using CSS three @font-face it''s always a good idea to have additional fonts in the font stack. The document outline does not contain any untitled elements. The JavaScript is fairly similar to what we covered in class although you have changed it to fit the needs of your application. Factories were not use however you have use the proper syntax for minification. I''m pleased to see that you''ve made some effort to customize the app rather than just depending on the default ionic styles. Your primary page is functional and displays all of the country artist. Your secondary page also displays some information but other parts of the information are not functional. Your call to retrieve images is not set up correctly you are not digging down into the artist object correctly. It would have been nice to of seen the loading module that we covered in class included in your app. Solid effort Brit!'),
(4, 'Project 3 - Package Mobile App', '60', '6/10', 'Individual Feedback:\r\n\r\nImage provided to show compiling. Icon not present in phone gap screen but description is. Splash screen and icon present on mobile device. App itself does not load content though.'),
(5, 'Project 4 - MEAN Stack App', '65', '6.5/10', 'Individual Feedback:\nThe design is fairly basic but like like the typeface you selected. As a whole the design feels empty. I feel like the icons of the curling stones could look more professional. Doing a google search for "curling stone icon" brings up some nice examples. I think having a logo an initial generic curling photo would help to liven up the design. Also a brief write up as to what the list is for/does. For the most party the doc outline looks good, although you could use more meaningful titles. CSS is valid. Your HTML looks good for the most part but don''t forget to include alt text attributes for your images. The site scales fairly well from mobile to desktop, but the view team buttons are a bit wonky at mobile size. \n\nIn terms of implementation you followed what we did in class fairly closely but adapted it to your own needs. Your primary page shows a list of information and your secondary page shows detailed information about the selected list item. You have made use of the ui-router, but I did not see ngAnimate or a factory implemented. It does like you implemented animations via CSS3 which is a nice touch. Solid effort Brit, keep plugging away.'),
(6, 'Project 5 - Thesis Site', '80', '8/10', 'Individual Feedback:\r\n\r\nThe site appears to scale quite nicely from mobile to desktop. I''m pleased to see you have implemented a mobile specific menu. \r\n\r\nHTML is valid, though I''d like to see you using more semantic tagging. The document outline is well structured and does not contain any untied elements. Try to use more meaningful naming where possible, rather than saying "Desktop HD Iphone" over and over, say something like "settings screenshot." 1 CSS validator error due to misspelling if transform. \r\n\r\nYour overall design is well executed. You have made strong choices in colour, typography and imagery. Your spacing and alignment is well executed as well. I''m pleased to see you leveraging SVG''s. \r\n\r\nI have to question whether Angular is overkill for this assignment. The content could have easily been hard coded into a JS file or alternatively you could have created a single page scrolling site and used for the scrolling. It''s important to pick the right tool for the job.\r\n\r\nWell done Brit.');

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_lang'
--

CREATE TABLE tbl_lang (
  lang_id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  lang_name varchar(50) NOT NULL,
  PRIMARY KEY (lang_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_lang'
--

INSERT INTO tbl_lang (lang_id, lang_name) VALUES
(1, 'English'),
(2, 'French'),
(3, 'German'),
(4, 'Deutch'),
(5, 'Chinese'),
(6, 'Japanese');

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_location'
--

CREATE TABLE tbl_location (
  location_id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  location_name varchar(75) NOT NULL,
  PRIMARY KEY (location_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_location'
--

INSERT INTO tbl_location (location_id, location_name) VALUES
(1, 'Clinton'),
(2, 'Goderich'),
(3, 'London'),
(4, 'London - Airport'),
(5, 'London - Downtown'),
(6, 'London - Online'),
(7, 'Simcoe'),
(8, 'St.Thomas'),
(9, 'Woodstock');

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_messages'
--

CREATE TABLE tbl_messages (
  messages_id mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  messages_subject varchar(75) NOT NULL,
  messages_body text NOT NULL,
  messages_date datetime NOT NULL,
  messages_author smallint(4) NOT NULL,
  PRIMARY KEY (messages_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_messmap'
--

CREATE TABLE tbl_messmap (
  messmap_id mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  message_id mediumint(6) NOT NULL,
  user_id smallint(4) NOT NULL,
  messplaceholder_id smallint(4) NOT NULL,
  messmap_read varchar(15) NOT NULL,
  messmap_starred varchar(15) NOT NULL,
  PRIMARY KEY (messmap_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_messplaceholder'
--

CREATE TABLE tbl_messplaceholder (
  messplaceholder_id smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  messplaceholder_list varchar(50) NOT NULL,
  PRIMARY KEY (messplaceholder_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_news'
--

CREATE TABLE tbl_news (
  news_id smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  news_links varchar(75) NOT NULL,
  news_date datetime NOT NULL,
  news_body text NOT NULL,
  news_bodyTwo text NOT NULL,
  news_bodyThree text NOT NULL,
  news_bodyFour text NOT NULL,
  news_heading varchar(75) NOT NULL,
  PRIMARY KEY (news_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_news'
--

INSERT INTO tbl_news (news_id, news_links, news_date, news_body, news_bodyTwo, news_bodyThree, news_bodyFour, news_heading) VALUES
(1, 'www.mygradphotosfanshawe.com', '2016-04-18 09:59:00', 'The last day for graduation photos is May 6th.  Book your appointment online at', '', '', '', 'Last Chance for Grad Photos'),
(2, '', '2016-03-29 08:30:00', 'For information about Online Course Selection for Post-Secondary students see the Course Selection link.', '• Registration for General Arts and Science students opens April 5th', '• Registration for General Education electives opens April 8th', 'Access Online Course Registration tools on WebAdvisor.', '2016 Summer Online Course Selection'),
(3, '', '2016-03-16 04:30:00', 'The exam schedule for the 16 Winter Term at London''s main campus has now been published. You can view your exam schedule using My Class Schedule in WebAdvisor.', 'To see when the exam schedule was last updated and to view the current exam schedule, click on the following link: Exam Schedule Information.', 'Attention students with disabilities: Planning to write your final exam in the Test Centre? You can book your exams online by clicking “Schedule a final exam” in the Online Test Booking Wizard from the Accessibility Online Services page.  Final exams are those that occur between April 9, 11-15 (15 wk), and April 18-22 (16 wk). For all other tests/exams, click “Schedule a test, midterm or quiz” in the Wizard. Visit us on myFanshawe for more details.', '', 'Winter 2016 Exam Schedule'),
(4, 'www.mygradphotosfanshawe.com', '2016-01-18 08:30:00', 'Grad Photos - SUB 1016 - January 25 - February 19, 2016.\n\nBook your appointment online at', '', '', '', 'Grad Photos - SUB 1016 - Jan. 25 - Feb. 19, 2016'),
(5, '', '2015-12-08 10:00:00', 'For information about Online Course Selection for Post-Secondary students see Course Selection.', '•	Registration for General Arts and Science students opens November 18th', '•	Registration for School of Design and School of Contemporary Media students (including Gen Ed electives) opens November 19th\n', '	•	Registration for General Education electives (for all other Schools) opens November 20th?\nAccess Online Course Registration tools on WebAdvisor.', 'Online Course Selection for Post- Secondary Students');

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_notifications'
--

CREATE TABLE tbl_notifications (
  notifications_id smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  notifications_name varchar(100) NOT NULL,
  notifications_type varchar(100) NOT NULL,
  PRIMARY KEY (notifications_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_profile'
--

CREATE TABLE tbl_profile (
  profile_id mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  profile_image varchar(75) NOT NULL DEFAULT 'profile.jpg',
  profile_hometown varchar(50) NOT NULL,
  profile_facebook varchar(100) NOT NULL,
  profile_twitter varchar(100) NOT NULL,
  profile_linkedin varchar(100) NOT NULL,
  profile_email varchar(75) NOT NULL,
  profile_hobbies text NOT NULL,
  profile_books text NOT NULL,
  profile_website varchar(100) NOT NULL,
  profile_learnexper text NOT NULL,
  profile_address varchar(75) NOT NULL,
  profile_city varchar(75) NOT NULL,
  profile_province varchar(75) NOT NULL,
  profile_country varchar(75) NOT NULL,
  profile_highschool varchar(75) NOT NULL,
  profile_employers varchar(75) NOT NULL,
  profile_position varchar(75) NOT NULL,
  profile_college varchar(75) NOT NULL,
  profile_university varchar(75) NOT NULL,
  profile_tagline text NOT NULL,
  profile_music text NOT NULL,
  profile_tvshows text NOT NULL,
  profile_movies text NOT NULL,
  profile_quotes text NOT NULL,
  profile_goals text NOT NULL,
  PRIMARY KEY (profile_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_profile'
--

INSERT INTO tbl_profile (profile_id, profile_image, profile_hometown, profile_facebook, profile_twitter, profile_linkedin, profile_email, profile_hobbies, profile_books, profile_website, profile_learnexper, profile_address, profile_city, profile_province, profile_country, profile_highschool, profile_employers, profile_position, profile_college, profile_university, profile_tagline, profile_music, profile_tvshows, profile_movies, profile_quotes, profile_goals) VALUES
(1, 'profile.jpg', 'Stratford, Ontario', '', 'http://twitter.com/britneycore7', 'https://www.linkedin.com/in/britney-core', 'britney.core7@gmail.com', 'Web Development, Web Design, Mobile Development, iOS Software/ Development, Curling, Gaming, Camping, Photography, Watching Movies', 'Hunger Games Series, Divergent Series', 'www.britneycore.ca', '', '', '', '', '', 'Stratford Central Secondary School', '', '', 'Fanshawe College', '', '', 'Pop, Country, Dance, Metal, R&B', 'Heartland, Dance Moms, Chrisley Knows Best, Hockey, Baseball, Curling, Dragon Den', 'Catching Fire, Mocking Jay, Divergent,', '"Don''t cry because it''s over, smile because it happened."- Dr. Seuss\n\n"Sometimes the questions are complicated and the answers are simple." - Dr. Seuss\n\nDon''t give up on something you can go a day thinking about!', 'Web Design, Web Development, iOS App Developer'),
(2, 'profile.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_program'
--

CREATE TABLE tbl_program (
  program_id mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  program_name varchar(200) NOT NULL,
  program_deliveryterm tinyint(3) NOT NULL,
  program_code tinyint(3) NOT NULL,
  program_academic tinyint(3) NOT NULL,
  program_credentials tinyint(3) NOT NULL,
  program_locations tinyint(3) NOT NULL,
  program_year tinyint(3) NOT NULL,
  program_desc text NOT NULL,
  PRIMARY KEY (program_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_program'
--

INSERT INTO tbl_program (program_id, program_name, program_deliveryterm, program_code, program_academic, program_credentials, program_locations, program_year, program_desc) VALUES
(1, 'Interactive Media Specialist', 1, 1, 1, 2, 5, 1, 'If you understand the power and potential of a career in the new media landscape and are looking to take your technical, design, and marketing skills to a higher level, the Interactive Media Specialist program will give you the boost necessary to ensure your dreams come true.\r\nThe Interactive Media Specialist program will prepare you for an evolving job market, providing intensive training in new media technologies with an emphasis on web application design, interactive media and emerging technologies. The curriculum will combine courses in design, marketing and media management while incorporating industry-standard technology from companies such as Adobe, Discreet, etc. When you graduate, you’ll have a dynamic and diverse set of skills that will match the dynamic world of digital media. As well, the program will expose you to every major aspect of the multimedia production cycle including ''front-end'' concept and branding, layout and design, content creation as well as ''back-end'' coding, database implementation and integration of audio-video streaming technologies.\r\nThe new media landscape is always evolving. With the Interactive Media Specialist program, you’ll have the chance to evolve, too, alongside the dynamic and changing new world of entertainment.'),
(2, 'Interactive Media Design', 1, 2, 1, 1, 5, 2, 'There’s never been a better time to be an artist. The new media landscape is ripe with endless career opportunities that will test the limits of your imagination, while providing a powerful and meaningful entertainment experience to consumers. If you’re looking for a career creating magic, the Interactive Media Design program will give you the skills to bring your creativity to life.\r\nYou’ll polish your skills in computer-based web design and programming, 3-D, special effects, animation, game design, effects for film and video and design for print. You’ll take courses in design, coding, marketing and media management and incorporate industry-standard tools from companies such as Adobe, Maxon, etc., as well as open-source technologies for Web application development. You’ll be a dynamically trained artist with the technological know-how to embark on an exciting career. You''ll also get hands on, practical training from industry professionals, and have the freedom to create your own visual and audio masterpieces.\r\nAs well, because we know that creativity can come in bursts at all times of the day, you’ll have access to the multimedia production lab with PCs and Macs available to you 24/7. Design your future career today, and be prepared to have your ideas come to life.'),
(3, 'Graphic Design', 1, 3, 2, 3, 3, 3, 'Driven. Artistic. Creative. Forward-thinking. If these words describe you, a Fanshawe’s Graphic Design program can help you find an exciting career that will bring out the best in you.\r\nAs a student in one of Canada’s most well-respected graphic design programs, you’ll develop a knock-out portfolio, rub shoulders with industry professionals, and build your connections to find employment upon graduation. You’ll learn illustration, graphic design communication, typography, interactive web design, design theory, graphic design history so that you have the marketable skills that companies are looking for.\r\nTo be the best, you have to learn with the best, and Fanshawe’s program gives you access to current industry standard software with the latest Mac equipment. Also, you’ll learn from the talented instructors – many of whom are industry veterans – who will push you to achieve your best in and out of the classroom.\r\nUpon graduation, you’ll be ready to hit the ground running. You’ll be able to find work in advertising agencies, design studios, direct mail agencies, environment/signage companies, printing companies, on-line graphics, and multimedia companies, among others. Most importantly, Fanshawe’s Graphic Design advanced diploma gives you the knowledge that whatever career you choose, you’ll be more than prepared.'),
(4, 'Video Game Design and Development', 1, 5, 1, 3, 5, 3, 'It’s a vibrant and growing industry that’s not just about playing games. It’s about harnessing creativity and building entire worlds for players to express themselves. There are few professions as in-demand as video game designers, and London, Ontario is at the centre of this vibrant and growing industry.\r\nIn the Video Game Design and Development program, you’ll study at the new, state-of-the-art Centre for Digital and Performance Arts in Downtown London, surrounded by leading gaming and tech industry firms. These innovators will mentor you and critique you. They’ll show you how to get in and how to get ahead. This intensive three-year advanced diploma will focus on the tools and techniques you’ll need to find an entry-level position as a concept artist, animator, level and game designer.\r\nYou’ll develop your 2D and 3D skills by studying art and design theory, modelling, animation, texturing, anatomy and drawing. You’ll then build on these basics for an understanding of the video game as a whole. At every step of the way, designers, animators, producers and art directors in the video game industry will make sure you know how your skills will be used in the real world.');

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_programcourselink'
--

CREATE TABLE tbl_programcourselink (
  programcourselink_id mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  programlink_id mediumint(6) NOT NULL,
  courses_id mediumint(6) NOT NULL,
  discussions_id mediumint(6) NOT NULL,
  grades_id mediumint(6) NOT NULL,
  news_id smallint(4) NOT NULL,
  user_id smallint(4) NOT NULL,
  classlist_id smallint(4) NOT NULL,
  content_id smallint(4) NOT NULL,
  messmap_id mediumint(6) NOT NULL,
  profile_id mediumint(6) NOT NULL,
  calendar_id mediumint(6) NOT NULL,
  classlistlink_id mediumint(6) NOT NULL,
  messages_id mediumint(6) NOT NULL,
  messplaceholder_id smallint(4) NOT NULL,
  PRIMARY KEY (programcourselink_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_programcourselink'
--

INSERT INTO tbl_programcourselink (programcourselink_id, programlink_id, courses_id, discussions_id, grades_id, news_id, user_id, classlist_id, content_id, messmap_id, profile_id, calendar_id, classlistlink_id, messages_id, messplaceholder_id) VALUES
(1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
(3, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3),
(4, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_programlink'
--

CREATE TABLE tbl_programlink (
  programlink_id mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  program_id mediumint(6) NOT NULL,
  deliveryterm_id smallint(4) NOT NULL,
  academic_id smallint(4) NOT NULL,
  location_id tinyint(3) NOT NULL,
  year_id tinyint(3) NOT NULL,
  semterm_id tinyint(3) NOT NULL,
  code_id tinyint(3) NOT NULL,
  credentials_id tinyint(3) NOT NULL,
  PRIMARY KEY (programlink_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_programlink'
--

INSERT INTO tbl_programlink (programlink_id, program_id, deliveryterm_id, academic_id, location_id, year_id, semterm_id, code_id, credentials_id) VALUES
(1, 1, 1, 1, 5, 1, 1, 1, 2),
(2, 1, 1, 1, 5, 1, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_semterm'
--

CREATE TABLE tbl_semterm (
  semterm_id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  semterm_term varchar(15) NOT NULL,
  PRIMARY KEY (semterm_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_semterm'
--

INSERT INTO tbl_semterm (semterm_id, semterm_term) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10');

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_settingslink'
--

CREATE TABLE tbl_settingslink (
  settingslink_id mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  notifications_id smallint(4) NOT NULL,
  calendar_id mediumint(6) NOT NULL,
  messmap_id mediumint(6) NOT NULL,
  grades_id mediumint(6) NOT NULL,
  courses_id mediumint(6) NOT NULL,
  news_id smallint(4) NOT NULL,
  discussions_id mediumint(6) NOT NULL,
  content_id smallint(4) NOT NULL,
  PRIMARY KEY (settingslink_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_testbooking'
--

CREATE TABLE tbl_testbooking (
  testbooking_id smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  testbooking_date date NOT NULL,
  testbooking_time time NOT NULL,
  testbooking_accom text NOT NULL,
  testbooking_testtime time NOT NULL,
  PRIMARY KEY (testbooking_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_testlink'
--

CREATE TABLE tbl_testlink (
  testlink_id mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  testbooking_id smallint(4) NOT NULL,
  user_id smallint(4) NOT NULL,
  programcourselink_id smallint(4) NOT NULL,
  programlink_id smallint(4) NOT NULL,
  PRIMARY KEY (testlink_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_textbooks'
--

CREATE TABLE tbl_textbooks (
  textbooks_id smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  textbooks_program tinyint(3) NOT NULL,
  textbooks_code tinyint(3) NOT NULL,
  textbooks_year tinyint(3) NOT NULL,
  textbooks_semterm tinyint(3) NOT NULL,
  textbooks_name varchar(100) NOT NULL,
  textbooks_location tinyint(3) NOT NULL,
  PRIMARY KEY (textbooks_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_tutorials'
--

CREATE TABLE tbl_tutorials (
  tutorials_id smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  tutorials_titles varchar(75) NOT NULL,
  tutorials_desc text NOT NULL,
  tutorials_type varchar(100) NOT NULL,
  PRIMARY KEY (tutorials_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_user'
--

CREATE TABLE tbl_user (
  user_id smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  user_first varchar(100) NOT NULL,
  user_last varchar(100) NOT NULL,
  user_email varchar(75) NOT NULL,
  user_username varchar(75) NOT NULL,
  user_password varchar(75) NOT NULL,
  user_confirmpass varchar(75) NOT NULL,
  user_studentnum varchar(10) NOT NULL,
  user_image varchar(150) NOT NULL DEFAULT 'user.png',
  user_city varchar(50) NOT NULL,
  user_role varchar(25) NOT NULL,
  PRIMARY KEY (user_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_user'
--

INSERT INTO tbl_user (user_id, user_first, user_last, user_email, user_username, user_password, user_confirmpass, user_studentnum, user_image, user_city, user_role) VALUES
(1, 'Britney', 'Core', 'b_core2@myfol.ca', 'b_core2', 'curling', 'curling', '0123456', 'user168.png', 'Stratford, Ontario', 'Student'),
(2, 'Tanner', 'Fisher', 't_fisher26@myfol.ca', 't_fisher26', 'cats', 'cats', '0234567', 'user168.png', 'London, Ontario', 'Student'),
(3, 'Jason', 'Day', 'j_day3@myfol.ca', 'j_day3', 'metal', 'metal', '0345678', 'user168.png', 'London, Ontario', 'Student'),
(4, 'Michel', 'Beaubien', 'm_beaubien2@myfol.ca', 'm_beaubien2', 'coder', 'coder', '0456789', 'user168.png', 'London, Ontario', 'Student'),
(5, 'Diana', 'Chavez Avila', 'd_chavezavila@myfol.ca', 'd_chavezavila', 'roses', 'roses', '0567891', 'user168.png', 'London, Ontario', 'Student'),
(6, 'Dylan', 'Copland', 'd_copland2@myfol.ca', 'd_copland2', 'mario', 'mario', '0789123', 'user168.png', 'London, Ontario', 'Student'),
(7, 'Marco', 'Deluca', 'm_deluca2@myfol.ca', 'm_deluca3', 'teacher', 'teacher', '0000000', 'user168.png', 'London, Ontario', 'Professor'),
(8, 'Jonathan', 'Ferreira', 'j_ferreira26@myfol.ca', 'j_ferreira26', 'dog', 'dog', '0891234', 'user168.png', 'London, Ontario', 'Student'),
(9, 'Robert', 'Haaf', 'rhaaf@myfol.ca', 'rhaaf', 'monkey', 'monkey', '1111111', 'user168.png', 'London, Ontario', 'Professor'),
(10, 'Caitlyn', 'O''Driscoll', 'c_odriscoll@myfol.ca', 'c_odriscoll', 'lion', 'lion', '0178912', 'user168.png', 'London, Ontario', 'Student'),
(11, 'Randy', 'Phalla', 'r_phalla@myfol.ca', 'r_phalla', 'unicorn', 'unicorn', '0145890', 'user168.png', 'London, Ontario', 'Student'),
(12, 'Christopher', 'Robins', 'c_robins3@myfol.ca', 'c_robins3', 'bird', 'bird', '0989898', 'user168.png', 'London, Ontario', 'Student'),
(13, 'Vanessa', 'Rusu', 'v_rusu@myfol.ca', 'v_rusu', 'design', 'design', '0943697', 'user168.png', 'Kitchener, Ontario', 'Student'),
(14, 'Alexander', 'Stegmann', 'a_stegmann@myfol.ca', 'a_stegmann', 'fish', 'fish', '0321455', 'user168.png', 'London, Ontario', 'Student'),
(15, 'Tatiana', 'Uspenskaia', 't_uspenskaia@myfol.ca', 't_uspenskaia', 'train', 'train', '0865878', 'user168.png', 'London, Ontario', 'Student'),
(16, 'Matthew', 'Walcher', 'm_walcher@myfol.ca', 'm_walcher', 'tiger', 'tiger', '0876546', 'user168.png', 'London, Ontario', 'Student'),
(17, 'Boxuan', 'Zhang', 'b_zhang23@myfol.ca', 'b_zhang23', 'panda', 'panda', '0987765', 'user168.png', 'London, Ontario', 'Student'),
(18, 'Justin', 'Brunner', 'jbrunner@myfol.ca', 'jbrunner', 'fanshawe', 'fanshawe', '2222222', 'user168.png', 'London, Ontario', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table 'tbl_year'
--

CREATE TABLE tbl_year (
  year_id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  year_name varchar(75) NOT NULL,
  PRIMARY KEY (year_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'tbl_year'
--

INSERT INTO tbl_year (year_id, year_name) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
