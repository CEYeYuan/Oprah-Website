----------------------------------------------------
--        Notes
--Database schema, all the atrributes are listed dicrectedly,
--no joins
--already included: slovenian1 slovenian2(note?)  slovenian3 slovenian4
---spanish catalan1 catalan2 dutch french hungarian(column?) tagalog
---------------------------------------------------

CREATE DATABASE if not  EXISTS oprah CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
USE oprah;

DROP TABLE IF EXISTS language CASCADE;
SET auto_increment_increment=1;

CREATE TABLE language (
	id integer auto_increment primary key,
	title varchar(200),
	name varchar(300),
	type varchar(200),
	examples varchar(3000),
	source varchar(300),
	description varchar(2000),
	dtrigger varchar(300),
	derivational varchar(300),
	itrigger varchar(300),
	inflectional varchar(300),
	ptrigger varchar(300),
	prefixes varchar(300),
	infixes varchar(300),
	variation varchar(300),
	frequency varchar(300),
	extent varchar(300)
)CHARACTER SET utf8;

insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent)
 values("R-nativization in Slovenian","Slovenian",
"Loanwords (English)","ɹɔk	'rock'	ˈɾok-oma	'instrumental.dual'
ˈɹɔbin	'Robin'	ˈɾobin-u	'locative.singular'
ˈɹɛgan	'Reagan'	ˈɾegan-i	'nominative.plural'
foɹt	'Ford'	ˈfoɾd-iʧ	'diminutive'
maɹk	'Marc'	ˈmaɾk-ow	'possesive'","<a onclick='f1(this);' href=“/references”>Jurgec 2010</a><a onclick='f1(this);' href=“/references”>Jurgec 2015</a>, <a onclick='f1(this);' href=“/references”>Torporišič 1976/2000</a>"
,'Slovenian variantly allows [ɹ] in bare roots of recent loanwords from English. In affixed words, [ɹ] is nativized into [ɾ] (or another native rhotic). ',"Triggers",
"ˈɹɔbin	'Robin'	ɾobiˈn-ux	'pejorative'
ˈɹɛgan	'Reagan'	ˈɾegan-ʧək	'diminutive'
ˈbaɹak	'Barack'	ˈbaɾak-əʦ	'diminutive'
ɹɔn	'Ron'		ɾoˈn-ist	'-like'
maɹk	'Marc'	ˈmaɾk-əʦ	'diminutive'","Triggers","ˈɹɔbin	'Robin'	ˈɾobin-u	'locative.singular'
ˈɹɛgan	'Reagan'	ˈɾegan-i	'nominative.plural'
ˈbaɹak	'Barack'	ˈbaɾak-a	'genitive.singular'
ɹɔn	'Ron'		ˈɾon-oma	'dative.dual'
maɹk	'Marc'	ˈmaɾk-ix	'locative.plural'
","Triggers","ɹɔk	'rock'		ˈanti-ˈɾok	'anti-'
ˈɹɔbin	'Robin'	ˈpɔd-ˈɾɔbin		'sub-'
ˈɹɛgan	'Reagan'	ˈnʌdˈ-ɾɛgan	'uber-'",'No data (no infixation reported)',"Regularization possible in non-derived environments.",'Unknown','Unknown');

insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values("W-nativization in Slovenian","Slovenian","Loanwords (English)",
"ˈwɔʃiŋktən	'Washington'		ˈʋaʃiŋkton-a	'genitive.singular'
ˈwilsən	'Wilson'		ˈʋilson-u	'dative.singular'
ˈwajlt	'Wilde'	ˈʋajld-oʋ-a	'possesive-feminine.nominative.singular'
twist	'twist'	ˈtʋist-om	'instrumental.singular'
swiŋk	'swing'	ˈsʋiŋg-a-ti	'verb-infintive'",
"Jurgec 2015, <a onclick='f1(this);' href=“/references”>Jurgec 2010</a>, <a onclick='f1(this);' href=“/references”>Toporišič 1976/2000</a>, <a onclick='f1(this);' href=“/references”>Tivadar 2004:440</a>",
"Slovenian variantly allows onset [w] in bare roots of recent loanwords from English. In affixed words, [w] is nativized into [ʋ]. Note that the distribution of v-allophones is complex in Slovenian; [w] is well-formed in codas.",
"Triggers","","Triggers","","Triggers","ˈwɔʃiŋktən	'Washington'		ˈnɛ-ˈʋaʃiŋkron	'non-'
ˈwilsən	'Wilson'		ˈpɾaˈ-ʋilson	'old/grand-'
ˈwajlt	'Wilde'	supeɾ-ˈʋajlt	'super-'"," No data (no infixation reported)","Regularization possible in non-derived environments",
 "Unknown","Unknown");

insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values("H-regularization in Slovenian","Slovenian","Onomatopoeia","hiˈhi	'hee hee'	xixi-ˈta	'she/he/it giggles'
hu	'hoo hoo'	ˈxu-k-a	'she/he/it hoots'
həm	'sigh'	ˈxəm-k-a	'she/he/it sighs'
heˈhɛʔ 'haha'	xeˈxɛ-t	'snickering'
haˈhaʔ 'haha'	xax-ˈlj-a	'she/he/it snickers'
hɔps 'jump'	ˈxɔps-a	'she/he/it jumps'","<a onclick='f1(this);' href=“/references”>Weiss 1998</a>, <a onclick='f1(this);' href=“/references”>Jurgec 2015</a>",
"Slovenian mimetic words can contain [h], but the sound is changed to [x] in derived words.","Triggers","","No data","","No data","","No data (no infixation reported)","Regularization extremely unusual in non-derived environments",
"Unknown","Unknown");

insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values("Front vowel nativization in Slovenian","Slovenian","Loanwords (German, French, Slovenian dialects)",
"ˈmynxən	'Munich'	ˈminxen-sk-i	'adjective-masculine.nominative.singular'
ˈmyləɾ	'Müller (name)'	ˈmileɾ-jeʋ-a	'possesive-feminine.nominative.singular'
tyɾk	'Türk (name)'	ˈtiɾk-om	'instrumental.singular'
ˈmysli	'muesli'	ˈmisli-je	'accusative'
ˈnyɾəmbeɾk	'Nuremberg'	niɾembeɾg-a	'genitive.singular'
ˈgøte	'Goethe'	ˈgete-ju	'dative.singular'
ˈʃɾødəɾ	'Schröder (name)'	ˈʃɾedeɾ-ji	'nominative.plural'
ˈkœlən	'Cologne'	ˈkelen-sk-i	'adjective-masculine.nominative.singular'
ˈʦyɾix 	'Zurich'	ˈʦiɾix-a	'genitive.singular'	
","<a onclick='f1(this);' href=“/references”>Jurgec 2015</a>, <a onclick='f1(this);' href=“/references”>Jurgec 2010</a>, <a onclick='f1(this);' href=“/references”>Torporišič 1976/2000</a>",
"Slovenian variantly allows front round vowels in bare roots of some German or dialectal loanwords. In affixed words, round vowels are typically replaced by their unrounded counterparts. In some cases, back rounded vowels a preferred repair instead.",
"Triggers","","Triggers","","Triggers","","No data (no infixation reported)","Regularization possible in non-derived environments","Unknown","Unknown");

insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values("Initial s-clusters in Spanish","Spanish","Loanwords (English)",
	"skajp	‘Skype’		eskajp(e)s ‘plural’
	skejt	‘skate’		eskejtar	‘to skate’","Violeta Martinez-Paricio, p.c.","sC clusters are illicit in Spanish, but can occur in recent loanwords. When the loanwords are derived, e is epenthesized, in accordance with the native phonology.",
	"Triggers","","Triggers","","Unknown","","None","Regularization possible in non-derived environments","Unknown","Unknown");


insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values("θ-nativization in Catalan","Catalan","Loanwords (Spanish)",
"θəɾəˈɣoθə	'Zaragoza' 	səɾəɣuˈsa	'adjective'
θəɾˈβantes	'Cervantes' 	səɾβanˈti	'adjective'
kəˈθaʎə	'cazalla, liquor' 	kəsəˈʎɛt	'diminutive'
θəɾˈθwelə	'zarzuella, operetta' 	səɾswəˈlat	'zarzuella-like’",
"<a onclick='f1(this);' href=“/references”>Mascaró 2003</a>",
"Catalan allows [θ] in some Spanish loanwords, as long as they are not derived in which case [s] surfaces instead.","Triggers","","Not triggers (Francesc Torres-Tamarit, p.c.)","","Unknown","","No data","Regularization unusual in non-derived environments (Francesc Torres-Tamarit, p.c.), but attested (Joan Mascaro, p.c.).","Unknown","This is a productive process in Catalan for most speakers. Elderly speakers may have only s-forms.");


insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values(
"Mid vowels in Catalan","Catalan","Loanwords","ˈboston	'Boston'	bustunˈja	'Bostonian'",
"<a onclick='f1(this);' href=“/references”>Mascaró 1978</a>","Catalan allows mid vowels {e, ɛ, o, ɔ} in unstressed positions only in some loanwords. When derived, some of these words show regularization in which the vowels must map to licit unstressed vowels. Not all words regularize (e.g. hoˈmeɾ 'Homer' ~ homɛɾ-ik 'Homeric').",
"Triggers","", "Unknown","","Unknown","","No data","Regularization impossible in non-derived environments. Some words do not show regularization.","Unknown","Unknown");

insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values(
	"R-nativization in Dutch","Dutch","Loanwords (English)",
"Op[ɹ]ah	'Oprah'	Op[ʀ]ah-tje	'diminutive'
Ba[ɹ]ack	'Barack'	Ba[ʀ]ack-se	'adjective'
[ɹ]eading	'Reading (town)'	[ʀ]eading-je	'diminutive'
Flo[ɹ]ida	'Florida'	Flo[ʀ]ida-tje	'diminutive'","<a onclick='f1(this);' href=“/references”>Jurgec 2014</a>, Marc van Oostendorp, p.c., Eefje Boef, p.c.",
"In those Dutch dialects that do not allow [ɹ], this sound is possible in some English loanwords. When derived, [ɹ] is nativized into [ʀ] (or another native rhotic).",
"Triggers:See main data","","Not triggers","Op[ɹ]ah	'Oprah'	Op[ɹ]ah-[s]	'plural'
Ba[ɹ]ack	'Barack'	Ba[ɹ]ack-[s]	'plural'	
[ɹ]ex	'Rex' [ɹ]ex-en	'plural'
Flo[ɹ]ida	'Florida'	Flo[ɹ]ida-[s]	'plural'","Not triggers","Op[ɹ]ah	'Oprah'	Hoofd-op[ɹ]ah	'main, true'
Ba[ɹ]ack	'Barack'	Quasi-Ba[ɹ]ack	'Quasi-'	
Flo[ɹ]ida	'Florida'	Wan-flo[ɹ]ida	'bad'	
[ɹ]eading	'Reading (town)'	Hoofd-[ɹ]eading	 'main, true'",
"no data","Regularization possible in non-derived environments","Unknown","Unknown"
);

insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values(
"H-aspiré regularization in French","French","Native and Loanwords",
"lə eʁo 'the hero'	l eʁo-in	'the heroine'
lə pəti itlɛʁ 'the little Hitler'	œ̃ pətit itleʁjɛ̃	'a little follower of Hitler'",
"<a onclick='f1(this);' href=“/references”>Kiparsky 1973</a>:89, <a onclick='f1(this);' href=“/references”>Kiparsky 1993</a>",
"French h-aspiré words begin with a phonetic vowel, they pattern with words that begin with a consonant, allowing the preceding words to end in a vowel. There is a tendency for h-aspiré behavior to be lost in derived words.",
"Triggers","", "Unknown","","Unknown","","no data","No variation","Unknown","few words"
);

insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values("r-nativization in Hungarian","Hungarian","Loanwords (English)",
"bɒɹɑk	‘Barack’	bɒrɑk-nɒk	‘dative’
ɹɛdfoɹd	‘Redford’ 	rɛdford-ok	‘plural’
ɹobɛɹʦ	‘Roberts’	robɛrʦ:-ɛl	‘comitative’
kɛɹol	‘Carol’ 	kɛrol-ok	‘plural’
ɹiki	‘Ricky’ 	riki-nɛk	‘dative’",
"Andrea Márkus, p.c.","Some Hungarian speakers allow the English [ɹ] in some foreign roots. When derived, the rhotic must nativize.","Triggers","","No data","","No data","","Only some speakers show the pattern.","Unknown","Only recent loanwords (Éva Dékány, p.c.)","");

insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values("f-nativization in Tagalog","Tagalog","Loanwords (Spanish)",
"filipino	‘Filipino’	pilipino-ŋ	‘definite’
fiesta	‘feast’ 	pista-han	‘instrumental’",
"<a onclick='f1(this);' href=“/references”>Zuraw 2006</a>, p.c., <a onclick='f1(this);' href=“/references”>Jurgec 2014</a>",
"Tagalog allows labiodental fricatives {f, v} in certain (old) loanwords from Spanish, as long as they are not derived in which case labial stops {p, b} are preferred.","Triggers","","Likely not triggers (further data needed)",
"filipino	‘Filipino’	filipina	’feminine’","filipino	‘Filipino’	mag-pilipino	‘language’
fiesta	‘feast’ 	pam-pista	‘festival’
","Data unclear (no forms with infixes only)",
"fiesta	‘feast’ 	p<in>ag-pista-han","Affixed words are variant, but non-affixed words are not.","Corpus data available. 
filipino 20,074		pilipino 12,011	
affix+filipino 86	affix+pilipino 1,117
fiesta 952	pista 416	
affix+fiesta 27 ~ affix+pista 607
F-variants are about twice as frequent as p-variants in the non-affixed words. F-variants are rare in affixed words.","It is unclear how many other words also exhibit the pattern. Loanwords of this kind may not have sufficient frequency in the corpus. (Kie Zuraw p.c.)");
