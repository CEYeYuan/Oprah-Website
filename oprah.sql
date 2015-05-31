----------------------------------------------------
--        Notes
--Database schema, all the atrributes are listed dicrectedly,
--no joins
--already included: slovenian1 slovenian2(note?)  slovenian3 slovenian4
---spanish catalan1
---------------------------------------------------

CREATE DATABASE if not  EXISTS oprah CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
USE oprah;

DROP TABLE IF EXISTS language CASCADE;

CREATE TABLE language (
	title varchar(200),
	name varchar(30),
	type varchar(40),
	examples varchar(3000),
	source varchar(300),
	description varchar(2000),
	derivational varchar(300),
	inflectional varchar(300),
	prefixes varchar(300),
	infixes varchar(300),
	variation varchar(300),
	frequency varchar(300),
	extent varchar(300)
)CHARACTER SET utf8;

insert into language values("R-nativization in Slovenian",'Slovenian',
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
insert into language values("W-nativization in Slovenian","Slovenian","Loanwords (English)",
"ˈwɔʃiŋktən	'Washington'		ˈʋaʃiŋkton-a	'genitive.singular'
ˈwilsən	'Wilson'		ˈʋilson-u	'dative.singular'
ˈwajlt	'Wilde'	ˈʋajld-oʋ-a	'possesive-feminine.nominative.singular'
twist	'twist'	ˈtʋist-om	'instrumental.singular'
swiŋk	'swing'	ˈsʋiŋg-a-ti	'verb-infintive'",
"Jurgec 2015, <a href=“/references”>Jurgec 2010</a>, <a href=“/references”>Toporišič 1976/2000</a>, <a href=“/references”>Tivadar 2004</a>:440",
"Slovenian variantly allows onset [w] in bare roots of recent loanwords from English. In affixed words, [w] is nativized into [ʋ]. Note that [w] is well-formed in codas.",
"","","ˈwɔʃiŋktən	'Washington'		ˈnɛ-ˈʋaʃiŋkron	'non-'
ˈwilsən	'Wilson'		ˈpɾaˈ-ʋilson	'old/grand-'
ˈwajlt	'Wilde'	supeɾ-ˈʋajlt	'super-'","no data (no infixation reported)","Regularization possible in non-derived environments",
 "unknown","unknown");
insert into language values("H-regularization in Slovenian","Slovenian","Onomatopoeia","hiˈhi	'hee hee'	xixi-ˈta	'she/he/it giggles'
hu	'hoo hoo'	ˈxu-k-a	'she/he/it hoots'
həm	'sigh'	ˈxəm-k-a	'she/he/it sighs'
heˈhɛʔ 'haha'	xeˈxɛ-t	'snickering'
haˈhaʔ 'haha'	xax-ˈlj-a	'she/he/it snickers'
hɔps 'jump'	ˈxɔps-a	'she/he/it jumps'","<a href=“/references”>Weiss 1998</a>, <a href=“/references”>Jurgec 2015</a>",
"Slovenian mimetic words can contain [h], but the sound is changed to [x] in derived words.","","","no data","no data (no infixation reported)","Regularization extremely unusual in non-derived environments",
"unknown","unknown");
insert into language values("Front vowel nativization in Slovenian","Slovenian","Loanwords (German, French, Slovenian dialects)",
"ˈmynxən	'Munich'	ˈminxen-sk-i	'adjective-masculine.nominative.singular'
ˈmyləɾ	'Müller (name)'	ˈmileɾ-jeʋ-a	'possesive-feminine.nominative.singular'
tyɾk	'Türk (name)'	ˈtiɾk-om	'instrumental.singular'
ˈmysli	'muesli'	ˈmisli-je	'accusative'
ˈnyɾəmbeɾk	'Nuremberg'	niɾembeɾg-a	'genitive.singular'
ˈgøte	'Goethe'	ˈgete-ju	'dative.singular'
ˈʃɾødəɾ	'Schröder (name)'	ˈʃɾedeɾ-ji	'nominative.plural'
ˈkœlən	'Cologne'	ˈkelen-sk-i	'adjective-masculine.nominative.singular'
ˈʦyɾix 	'Zurich'	ˈʦiɾix-a	'genitive.singular'	
","<a href=“/references”>Jurgec 2015</a>, <a href=“/references”>Jurgec 2010</a>, <a href=“/references”>Torporišič 1976/2000</a>",
"Slovenian variantly allows front round vowels in bare roots of some German or dialectal loanwords. In affixed words, round vowels are typically replaced by their unrounded counterparts. In some cases, back rounded vowels a preferred repair instead.",
"","","","no data (no infixation reported)","Regularization possible in non-derived environments","unknown","unknown");
insert into language values("Initial s-clusters in Spanish","Spanish","Loanwords (English)",
	"skajp	‘Skype’		eskajp(e)s ‘plural’
	skejt	‘skate’		eskejtar	‘to skate’","Violeta Martinez-Paricio, p.c.","sC clusters are illicit in Spanish, but can occur in recent loanwords. When the loanwords are derived, e is epenthesized, in accordance with the native phonology.",
	"","","unknown","none","Regularization possible in non-derived environments","unknown","unknown");

insert into language values("θ-nativization in Catalan","Catalan","Loanwords (Spanish)",
"θəɾəˈɣoθə	'Zaragoza' 	səɾəɣuˈsa	'adjective'
θəɾˈβantes	'Cervantes' 	səɾβanˈti	'adjective'
kəˈθaʎə	'cazalla, liquor' 	kəsəˈʎɛt	'diminutive'
θəɾˈθwelə	'zarzuella, operetta' 	səɾswəˈlat	'zarzuella-like’",
"<a href=“/references”>Mascaró 2003</a>",
"Catalan allows [θ] in some Spanish loanwords, as long as they are not derived in which case [s] surfaces instead.","Triggers","Not triggers (Francesc Torres-Tamarit, p.c.)","unknown","no data","Regularization unusual in non-derived environments (Francesc Torres-Tamarit, p.c.), but attested (Joan Mascaro, p.c.).","unknown","This is a productive process in Catalan for most speakers. Elderly speakers may have only s-forms.");

