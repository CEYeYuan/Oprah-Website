----------------------------------------------------
--        Notes
--Database schema, all the atrributes are listed dicrectedly,
--no joins
---------------------------------------------------

CREATE DATABASE if not  EXISTS oprah CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
USE oprah;

DROP TABLE IF EXISTS language CASCADE;

CREATE TABLE language (
	name varchar(30) primary key,
	type varchar(40),
	examples varchar(300),
	source varchar(300),
	description varchar(300),
	derivational varchar(300),
	inflectional varchar(300),
	prefixes varchar(300),
	infixes varchar(300),
	variation varchar(300),
	frequency varchar(300),
	extent varchar(300)
)CHARACTER SET utf8;

insert into language values('Slovenian',
'Loanwords (English)',"ɹɔk	'rock'		ˈɾok-oma	'instrumental.dual'
ˈɹɔbin	'Robin'	ˈɾobin-u	'locative.singular'
ˈɹɛgan	'Reagan'	ˈɾegan-i	'nominative.plural'
foɹt	'Ford'	ˈfoɾd-iʧ	'diminutive'
maɹk	'Marc'	ˈmaɾk-ʦ-a	'diminutive-genitive.singular'",'Jurgec 2015, Torporišič 1976/2000'
,'Slovenian variantly allows [ɹ] in bare roots of recent loanwords from English. In affixed words, [ɹ] is nativized into [ɾ] (or another native rhotic). ',
"ˈɹɔbin	'Robin'	ˈɾobin-ux	'pejorative'
ˈɹɛgan	'Reagan'	ˈɾegan-ʧək	'diminutive'
ˈbaɹak	'Barack'	ˈbaɾak-əʦ	'diminutive'
ɹɔn	'Ron'		ɾoˈn-ist	'-like'
maɹk	'Marc'	ˈmaɾk-əʦ	'diminutive'
","ˈɹɔbin	'Robin'	ˈɾobin-u	'locative.singular'
ˈɹɛgan	'Reagan'	ˈɾegan-i	'nominative.plural'
ˈbaɹak	'Barack'	ˈbaɾak-a	'genitive.singular'
ɹɔn	'Ron'		ˈɾon-oma	'dative.dual'
maɹk	'Marc'	ˈmaɾk-ix	'locative.plural'
","ɹɔk	'rock'		ˈanti-ˈɾok	'anti-'
ˈɹɔbin	'Robin'	ˈpOd-ˈɾɔbin		'sub-'
ˈɹɛgan	'Reagan'	ˈnʌdˈ-ɾɛgan	'uber-'",'',"Regularization possible in non-derived environments.",'','');