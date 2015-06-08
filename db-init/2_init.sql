--------------------------------------------------------
--  File created - пятница-Май-23-2014   
--------------------------------------------------------
-- DROP TABLE "NEWSFEED2"."T_CATEGORY" cascade constraints;
--------------------------------------------------------
--  DDL for Table T_CATEGORY
--------------------------------------------------------

  CREATE TABLE "NEWSFEED2"."T_CATEGORY" 
   (	"F_ID" NUMBER(10,0), 
	"F_NAME" VARCHAR2(30 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into NEWSFEED2.T_CATEGORY
SET DEFINE OFF;
Insert into NEWSFEED2.T_CATEGORY (F_ID,F_NAME) values (1,'Экономика');
Insert into NEWSFEED2.T_CATEGORY (F_ID,F_NAME) values (2,'Спорт');
Insert into NEWSFEED2.T_CATEGORY (F_ID,F_NAME) values (3,'Политика');
Insert into NEWSFEED2.T_CATEGORY (F_ID,F_NAME) values (4,'IT технологии');
Insert into NEWSFEED2.T_CATEGORY (F_ID,F_NAME) values (5,'Автомобили');
--------------------------------------------------------
--  Constraints for Table T_CATEGORY
--------------------------------------------------------

  ALTER TABLE "NEWSFEED2"."T_CATEGORY" MODIFY ("F_ID" NOT NULL ENABLE);
  
--======================================================================

--------------------------------------------------------
--  File created - суббота-Май-24-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table T_NEWS
--------------------------------------------------------

  CREATE TABLE "NEWSFEED2"."T_NEWS" 
   (	"F_ID" NUMBER(10,0), 
	"F_CAT_ID" NUMBER(10,0), 
	"F_NAME" VARCHAR2(255 CHAR), 
	"F_USER_ID" NUMBER, 
	"F_DATE" VARCHAR2(10 BYTE), 
	"F_TIME" VARCHAR2(5 BYTE), 
	"F_ANNOTATION" CLOB, 
	"F_MAINTEXT" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("F_ANNOTATION") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("F_MAINTEXT") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
REM INSERTING into NEWSFEED2.T_NEWS
SET DEFINE OFF;
Insert into NEWSFEED2.T_NEWS (F_ID,F_CAT_ID,F_NAME,F_USER_ID,F_DATE,F_TIME,F_ANNOTATION, F_MAINTEXT) values (0,1,'Новость_тест2',2,'16.04.2014','20:52','тест2','<p>Проверка после переименования в базе и в DAO</p>');
Insert into NEWSFEED2.T_NEWS (F_ID,F_CAT_ID,F_NAME,F_USER_ID,F_DATE,F_TIME,F_ANNOTATION, F_MAINTEXT) values (1,4,'Java JD1 Final',2,'23.03.2014','17:11','Подходит к концу обучение на курса Java JD1','<p>Подходит к концу обучение на курса Java JD1. <br /> Выпускники готовят итоговую работу.</p>');
Insert into NEWSFEED2.T_NEWS (F_ID,F_CAT_ID,F_NAME,F_USER_ID,F_DATE,F_TIME,F_ANNOTATION, F_MAINTEXT) values (2,5,'Утилизационный сбор',2,'23.03.2014','17:11','Был введен утилизационный сбор на автомобили','"<p>Недавно был введен утилизационный сбор на автомобили. <br /> Теперь придется немного раскошелиться</p><ol><li>редактирование тест</li></ol>"');
Insert into NEWSFEED2.T_NEWS (F_ID,F_CAT_ID,F_NAME,F_USER_ID,F_DATE,F_TIME,F_ANNOTATION, F_MAINTEXT) values (3,1,'Экономическая грамотность',2,'06.04.2014','10:56','Что мы понимаем в экономике','"<p>Иногда мы в экономике не понимаем <strong>вообще ничего</strong>!</p><h3 style="text-align: center;">Ну вот как-то так</h3>"');
Insert into NEWSFEED2.T_NEWS (F_ID,F_CAT_ID,F_NAME,F_USER_ID,F_DATE,F_TIME,F_ANNOTATION, F_MAINTEXT) values (4,1,'Тестовая новость',2,'22.03.2014','17:29','Аннотация к тестовой новости','"<p>Эта новость совсем тестовая</p><p><strong>Ничего тут нет</strong></p><p>Список:</p><ol><li>edit</li></ol>"');
Insert into NEWSFEED2.T_NEWS (F_ID,F_CAT_ID,F_NAME,F_USER_ID,F_DATE,F_TIME,F_ANNOTATION, F_MAINTEXT) values (5,2,'Тестовая новость о спорте',1,'23.03.2014','19:09','Краткое описание Краткое описание Краткое описание Краткое описание Краткое описание Краткое описание Краткое описание Краткое описание Краткое описание Краткое описание Краткое описание Краткое описание Краткое описание Краткое описание Краткое описание ','<p>Это тестовая новость о спорте</p>');
Insert into NEWSFEED2.T_NEWS (F_ID,F_CAT_ID,F_NAME,F_USER_ID,F_DATE,F_TIME,F_ANNOTATION, F_MAINTEXT) values (6,4,'Мобильные приложения для туристов, приезжающих в Минск',1,'25.03.2014','8:43 ',
	'В конце прошлой недели белорусский министр спорта Александр Шамко поручил разработать новые мобильные программы для приезжающих в страну. По словам чиновника, в настоящее время приложений, которые бы могли стать для туристов проводниками по местным достопримечательностям, отчаянно не хватает.',
	'');
	DECLARE S CLOB;
	BEGIN
		S:=	'"<h2 style="text-align: left;">&nbsp;</h2><h2 style="text-align: left;"><a href="http://tech.onliner.by/2014/03/20/apps-2/">Встречаем туристов: мобильные приложения для знакомства с Минском</a></h2><p>&nbsp;</p><p><img style="margin-right: auto; margin-left: auto; display: block;" src="http://content.onliner.by/news/2014/03/default/02ca4bda7e3aeafba7edc121c45a8296.jpg" alt="Встречаем туристов: мобильные приложения для знакомства с Минском" width="710" /></p><p>В конце прошлой недели белорусский министр спорта Александр Шамко <a href="http://tech.onliner.by/2014/03/14/apps/">поручил</a> разработать новые мобильные программы для приезжающих в страну. По словам чиновника, в настоящее время приложений, которые бы могли стать для туристов проводниками по местным достопримечательностям, отчаянно не хватает.</p><p>Шамко обратил внимание, что программы становятся все более востребованным продуктом на туристическом рынке и привел в качестве примера мобильные приложения для болельщиков на Олимпийских играх в Сочи.</p><p>Мы решили проверить, насколько верны слова министра спорта, и попытались найти &laquo;туристические&raquo; программы в Google Play и App Store, отдав предпочтение бесплатным решениям. Платформа Windows Phone, к сожалению, традиционно не смогла ничем порадовать: единственный вариант, подходящий по описанию, оказался платным, однако обновлялся последний раз чуть менее двух лет назад.</p><p>Приложения перечисляются по степени информативности, однако стоит отметить, что отличия между ними минимальны: в каждом мы нашли примерно одинаковый набор возможностей и функций. Предпочтение было отдано программам для посещающих Минск.</p><p>&nbsp;</p><p><strong>&laquo;Минск &mdash;&nbsp;городской гид&raquo;</strong></p><p>&nbsp;</p><p>Программа от TingBY Team в первую очередь предлагает узнать, где поблизости находятся бесплатные точки доступа Wi-Fi. В основном это адреса кафе, ресторанов и иных питейных заведений. С учетом белорусских реалий, бесплатная точка не означает свободный доступ к ней. Информация нужная, но вряд ли окажется полезной.</p><p><img class="alignnone size-large wp-image-123956" style="margin-right: auto; margin-left: auto; display: block;" src="http://content.onliner.by/news/2014/03/default/6e720db1be3e064e3caaa5f1266fd9f1.jpg" alt="" /></p><p>В целом мы видим достаточно эффективный и привлекательный с точки зрения туриста справочник.&nbsp;Однако есть одно &laquo;но&raquo;. Информации для путешественников, которые хотели бы ознакомиться с достопримечательностями города, практически нет: вкладка &laquo;Туризм&raquo; предлагает лишь список гостиниц, посольств и хостелов. В то же время к плюсам можно отнести карту туалетов &mdash; а это известная проблема для Минска.</p><p>Эта же команда разработчиков предлагает аналогичные приложения для Гомеля, Гродно, Витебска, Бреста и Могилева. Есть также <a href="https://play.google.com/store/apps/details?id=org.tingby.en" target="_blank">Minsk &mdash;&nbsp;city guide</a> на английском языке (платная).</p><p>Доступна <a href="https://play.google.com/store/apps/details?id=org.ting" target="_blank">Android-версия</a>.</p><p><strong>&laquo;Минск &mdash;&nbsp;Minsk&raquo;</strong></p><p><em>&laquo;Путеводитель для туристов с информацией о достопримечательностях, экскурсиях и полезными советами&raquo;,</em> &mdash;&nbsp;так рассказывают о приложении разработчики. Кроме того, внимание привлекает уведомление о том, что в программе имеется раздел, посвященный чемпионату мира по хоккею &mdash;&nbsp;2014.</p><p style="text-align: center;"><img class="alignnone size-large wp-image-123965" src="http://content.onliner.by/news/2014/03/default/8d2acc91b0d4c3fd3b2b0fe9ffb9cada_1395255410.jpg" alt="" /></p><p>Это еще один обширный справочник. Правда, в отличие от &laquo;Минск &mdash; городской гид&raquo;, для получения информации требуется подключение к интернету, загрузка контента иногда происходит некомфортно долго даже при использовании ШПД. Пользователь может изучить многочисленные меню приложения, получить более подробную информацию об интересующих заведениях. К минусам можно отнести то, что прокладывать маршрут программа не умеет, указывая лишь текущее месторасположение пользователя и точку интереса.</p><p>Раздел &laquo;Туризм&raquo; богат на информацию: здесь можно найти ответы на вопросы, где расположены дома отдыха, кемпинги, бюро переводов, туркомпании и т.&nbsp;д. Однако ориентирован он, судя по всему, на жителей Беларуси, а не на иностранцев.</p><p>В то же время есть отдельный раздел &laquo;Путеводитель&raquo;. Здесь представлены белорусские достопримечательности: при сортировке по расстоянию можно найти ближайшие, имеется краткое описание и фотографии. Желающим побывать в Могилеве или Гродно придется свыкнуться с мыслью о том, что эти города находятся в 6,5 тыс. км от Минска. Некоторые разделы оказались не заполнены, часть же дублирует те, которые можно найти в &laquo;Каталоге&raquo;. Пользователь также может выбрать другие белорусские города для поиска информации о них.</p>"';
		UPDATE NEWSFEED2.T_NEWS SET F_MAINTEXT = S WHERE F_ID = 6;
		COMMIT;
	END;
	

Insert into NEWSFEED2.T_NEWS (F_ID,F_CAT_ID,F_NAME,F_USER_ID,F_DATE,F_TIME,F_ANNOTATION, F_MAINTEXT) values (7,1,'экономика 1',1,'24.03.2014','14:24','экономика1','"<p>ппрпрпрпрпhhjjh</p><ol><li>hh</li><li>gg</li><li>jj</li><li></li></ol>"');
Insert into NEWSFEED2.T_NEWS (F_ID,F_CAT_ID,F_NAME,F_USER_ID,F_DATE,F_TIME,F_ANNOTATION, F_MAINTEXT) values (8,1,'валидность кода HTML',1,'23.03.2014','20:37','При помощи чего можно проверять валидность кода HTML','');
	DECLARE S CLOB;
	BEGIN
		S:=	'"<p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><strong><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">При помощи чего можно проверять валидность кода HTML&nbsp;</span></strong><strong><span style="color: #c43b1d; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">*</span></strong></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&gt;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Браузером</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Редактором HTML</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Веб-сервером</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&gt;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Сервисы Web</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Текстовым процессором</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><strong><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&nbsp;</span></strong></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><strong><span lang="EN-US" style="color: black; mso-ansi-language: EN-US;"><span style="font-family: Times New Roman; font-size: medium;">&nbsp;</span></span></strong></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><strong><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&nbsp;</span></strong></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><strong><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Укажите правильный порядок загрузки страницы после щелчка мыши по сслыке :&nbsp;</span></strong><strong><span style="color: #c43b1d; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">*</span></strong></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">отправка запроса серверу -&gt; обработка сервером -&gt; запрос из кэша браузера страницы -&gt; ответ сервера</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">оправка запроса серверу -&gt; запрос из кэша браузера страницы -&gt; &nbsp;обработка сервером -&gt; ответ срервера</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&gt;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">запрос из кэша браузера страницы -&gt; оправка запроса серверу -&gt; &nbsp;обработка сервером -&gt; ответ срервера</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">запрос из кэша браузера страницы -&gt;обработка сервером &nbsp;-&gt; оправка запроса &nbsp;-&gt; ответ срервера</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><strong><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&nbsp;</span></strong></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><strong><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Определите, какие атрибуты может имеет тег &lt;TITLE&gt;:&nbsp;</span></strong><strong><span style="color: #c43b1d; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">*</span></strong></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">align</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">id</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">class</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&gt;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">нет у него атрибутов</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><strong><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&nbsp;</span></strong></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><strong><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">За что отвечает &lt;!DOCTYPE html&gt;?&nbsp;</span></strong><strong><span style="color: #c43b1d; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">*</span></strong></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Комментарий</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Тег html</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&gt;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Декларация html 5</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Декларация html</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><strong><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&nbsp;</span></strong></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><strong><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Для каких наборов символов используется кодировка UTF-8&nbsp;</span></strong><strong><span style="color: #c43b1d; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">*</span></strong></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Только латиница</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Латиница и кириллицы</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Латиница и арабские символы</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&gt;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Для любых</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><strong><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&nbsp;</span></strong></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><strong><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Внутри тега &lt;title&gt; могут присутствовать следующие конструкции:&nbsp;</span></strong><strong><span style="color: #c43b1d; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">*</span></strong></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&nbsp;</span><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&lt;b&gt;&lt;/b&gt;</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&nbsp;</span><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&lt;media&gt;</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&nbsp;</span><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&lt;img&gt;</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&gt;</span><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&nbsp;</span><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&amp;copy;</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><strong><span lang="EN-US" style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt; mso-ansi-language: EN-US;">&nbsp;</span></strong></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><strong><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Пробелы внутри тегов могут присутствовать в случае:&nbsp;</span></strong><strong><span style="color: #c43b1d; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">*</span></strong></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Между &ldquo;&lt;&rdquo; и названием тега</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&gt;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Между названием тега и его атрибутами</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">В любом месте</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">&nbsp;</span><span style="color: black; font-family: ''Arial'',''sans-serif''; font-size: 10pt;">Между атрибутом и его значением</span></p><p>&nbsp;</p><p style="margin: 0cm 0cm 0pt;"><span lang="EN-US" style="font-size: 10pt; mso-ansi-language: EN-US;"><span style="font-family: Times New Roman;">&nbsp;</span></span></p><p>&nbsp;</p>"';
		UPDATE NEWSFEED2.T_NEWS SET F_MAINTEXT = S WHERE F_ID = 8;
		COMMIT;
	END;
	
	
Insert into NEWSFEED2.T_NEWS (F_ID,F_CAT_ID,F_NAME,F_USER_ID,F_DATE,F_TIME,F_ANNOTATION, F_MAINTEXT) values (9,4,'Модуль 1 JD2',1,'12.04.2014','11:30','Модуль 1','"<p>213143423</p><p>&nbsp;</p><ol><li>dfg</li></ol>"');
--------------------------------------------------------
--  Constraints for Table T_NEWS
--------------------------------------------------------

  ALTER TABLE "NEWSFEED2"."T_NEWS" MODIFY ("F_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table T_NEWS
--------------------------------------------------------

  ALTER TABLE "NEWSFEED2"."T_NEWS" ADD CONSTRAINT "FK_25KR1K263WT904RMQU5NY3LRB" FOREIGN KEY ("F_USER_ID")
	  REFERENCES "NEWSFEED2"."T_USER" ("F_ID") ENABLE;

--=================================================================================================

--------------------------------------------------------
--  File created - пятница-Май-23-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table T_ROLE
--------------------------------------------------------

  CREATE TABLE "NEWSFEED2"."T_ROLE" 
   (	"F_ID" NUMBER(10,0), 
	"F_NAME" VARCHAR2(255 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into NEWSFEED2.T_ROLE
SET DEFINE OFF;
Insert into NEWSFEED2.T_ROLE (F_ID,F_NAME) values (1,'author');
Insert into NEWSFEED2.T_ROLE (F_ID,F_NAME) values (2,'user');
Insert into NEWSFEED2.T_ROLE (F_ID,F_NAME) values (3,'admin');
--------------------------------------------------------
--  DDL for Index SYS_C007979
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEWSFEED2"."SYS_C007979" ON "NEWSFEED2"."T_ROLE" ("F_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table T_ROLE
--------------------------------------------------------

  ALTER TABLE "NEWSFEED2"."T_ROLE" ADD PRIMARY KEY ("F_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NEWSFEED2"."T_ROLE" MODIFY ("F_ID" NOT NULL ENABLE);

--=======================================================================================

--------------------------------------------------------
--  File created - пятница-Май-23-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table T_USER
--------------------------------------------------------

  CREATE TABLE "NEWSFEED2"."T_USER" 
   (	"F_ID" NUMBER(10,0), 
	"F_EMAIL" VARCHAR2(255 CHAR), 
	"F_PASS" VARCHAR2(255 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into NEWSFEED2.T_USER
SET DEFINE OFF;
Insert into NEWSFEED2.T_USER (F_ID,F_EMAIL,F_PASS) values (1,'user1@mail.com','user1');
Insert into NEWSFEED2.T_USER (F_ID,F_EMAIL,F_PASS) values (2,'user2@mail.com','user2');
--------------------------------------------------------
--  DDL for Index SYS_C007981
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEWSFEED2"."SYS_C007981" ON "NEWSFEED2"."T_USER" ("F_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table T_USER
--------------------------------------------------------

  ALTER TABLE "NEWSFEED2"."T_USER" ADD PRIMARY KEY ("F_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NEWSFEED2"."T_USER" MODIFY ("F_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Trigger T_USER_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NEWSFEED2"."T_USER_TRG" 
BEFORE INSERT ON T_USER 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "NEWSFEED2"."T_USER_TRG" ENABLE;

--====================================================================================

--------------------------------------------------------
--  File created - пятница-Май-23-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table T_USER_ROLE
--------------------------------------------------------

  CREATE TABLE "NEWSFEED2"."T_USER_ROLE" 
   (	"F_USER_ID" NUMBER(10,0), 
	"F_ROLE_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into NEWSFEED2.T_USER_ROLE
SET DEFINE OFF;
Insert into NEWSFEED2.T_USER_ROLE (F_USER_ID,F_ROLE_ID) values (1,1);
Insert into NEWSFEED2.T_USER_ROLE (F_USER_ID,F_ROLE_ID) values (1,2);
Insert into NEWSFEED2.T_USER_ROLE (F_USER_ID,F_ROLE_ID) values (2,2);
Insert into NEWSFEED2.T_USER_ROLE (F_USER_ID,F_ROLE_ID) values (2,3);
--------------------------------------------------------
--  DDL for Index SYS_C007984
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEWSFEED2"."SYS_C007984" ON "NEWSFEED2"."T_USER_ROLE" ("F_USER_ID", "F_ROLE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table T_USER_ROLE
--------------------------------------------------------

  ALTER TABLE "NEWSFEED2"."T_USER_ROLE" ADD PRIMARY KEY ("F_USER_ID", "F_ROLE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NEWSFEED2"."T_USER_ROLE" MODIFY ("F_ROLE_ID" NOT NULL ENABLE);
  ALTER TABLE "NEWSFEED2"."T_USER_ROLE" MODIFY ("F_USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table T_USER_ROLE
--------------------------------------------------------

  ALTER TABLE "NEWSFEED2"."T_USER_ROLE" ADD CONSTRAINT "FK_AL2SRVOO49WQHMVJVI7SBMPIM" FOREIGN KEY ("F_USER_ID")
	  REFERENCES "NEWSFEED2"."T_USER" ("F_ID") ENABLE;
  ALTER TABLE "NEWSFEED2"."T_USER_ROLE" ADD CONSTRAINT "FK_BDQS55O29G43L60UOBVXTI9MV" FOREIGN KEY ("F_ROLE_ID")
	  REFERENCES "NEWSFEED2"."T_ROLE" ("F_ID") ENABLE;

--============================================================================================================

--------------------------------------------------------
--  File created - пятница-Май-23-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table T_USERINFO
--------------------------------------------------------

  CREATE TABLE "NEWSFEED2"."T_USERINFO" 
   (	"F_ID" NUMBER(10,0), 
	"F_NAME" VARCHAR2(255 CHAR), 
	"F_SURNAME" VARCHAR2(255 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into NEWSFEED2.T_USERINFO
SET DEFINE OFF;
Insert into NEWSFEED2.T_USERINFO (F_ID,F_NAME,F_SURNAME) values (1,'Иван','Иванов');
Insert into NEWSFEED2.T_USERINFO (F_ID,F_NAME,F_SURNAME) values (2,'Петр','Петров');
--------------------------------------------------------
--  DDL for Index SYS_C008018
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEWSFEED2"."SYS_C008018" ON "NEWSFEED2"."T_USERINFO" ("F_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table T_USERINFO
--------------------------------------------------------

  ALTER TABLE "NEWSFEED2"."T_USERINFO" ADD PRIMARY KEY ("F_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NEWSFEED2"."T_USERINFO" MODIFY ("F_NAME" NOT NULL ENABLE);
  ALTER TABLE "NEWSFEED2"."T_USERINFO" MODIFY ("F_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table T_USERINFO
--------------------------------------------------------

  ALTER TABLE "NEWSFEED2"."T_USERINFO" ADD CONSTRAINT "FK_D53NV9T18IXSUC22VSAMXKWSR" FOREIGN KEY ("F_ID")
	  REFERENCES "NEWSFEED2"."T_USER" ("F_ID") ENABLE;

