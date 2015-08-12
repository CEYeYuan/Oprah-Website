
CREATE DATABASE if not  EXISTS jurgecne_oprah CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
USE jurgecne_oprah;

DROP TABLE IF EXISTS language CASCADE;
SET auto_increment_increment=1;

CREATE TABLE language (
	id integer auto_increment primary key,
	title varchar(200),
	name varchar(300),
	type varchar(200),
	examples varchar(2000),
	source varchar(1500),
	description varchar(2000),
	dtrigger varchar(300),
	derivational varchar(1500),
	itrigger varchar(300),
	inflectional varchar(1500),
	ptrigger varchar(300),
	prefixes varchar(1500),
	infixes varchar(1500),
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
maɹk	'Marc'	ˈmaɾk-ow	'possesive'","<a onclick='f1(this);' href=“/references”>Jurgec 2010</a>, <a onclick='f1(this);' href=“/references”>Jurgec 2015</a>, <a onclick='f1(this);' href=“/references”>Torporišič 1976/2000</a>"
,'Slovenian variantly allows [ɹ] in bare roots of some recent loanwords from English. In affixed words, [ɹ] is nativized into [ɾ] (or another native rhotic). ',"Triggers",
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
"<a onclick='f1(this);' href=“/references”>Jurgec 2015</a>, <a onclick='f1(this);' href=“/references”>Jurgec 2010</a>, <a onclick='f1(this);' href=“/references”>Toporišič 1976/2000</a>, <a onclick='f1(this);' href=“/references”>Tivadar 2004:440</a>",
"Slovenian variantly allows onset [w] in bare roots of recent loanwords from English. In affixed words, [w] is nativized into [ʋ]. Note that the distribution of v-allophones is complex in Slovenian; [w] is well-formed in codas.",
"Triggers","","Triggers","","Triggers","ˈwɔʃiŋktən	'Washington'		 ˌnɛ-ˈʋaʃiŋkron	'non-'
ˈwilsən	'Wilson'		ˌpɾaˈ-ʋilson	'old/grand-'
ˈwajlt	'Wilde'	ˌsupeɾ-ˈʋajlt	'super-'"," No data (no infixation reported)","Regularization possible in non-derived environments",
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
"Slovenian variantly allows front round vowels in bare roots of some German or dialectal loanwords. In affixed words, round vowels are typically replaced by their unrounded counterparts. In some cases, back rounded vowels are the preferred repair instead.",
"Triggers","","Triggers","","Triggers","","No data (no infixation reported)","Regularization possible in non-derived environments","Unknown","Unknown");

insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values("Initial sC-clusters in Spanish","Spanish","Loanwords (English)",
	"skajp	‘Skype’		eskajp-s ‘plural’
	skejt	‘skate’		eskat-er	‘to skate’","Violeta Martinez-Paricio, p.c.","sC clusters are illicit in Spanish, but can occur in recent loanwords. When the loanwords are derived, [e] is epenthesized, in accordance with the native phonology.",
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
"<a onclick='f1(this);' href=“/references”>Mascaró 1978</a>, <a onclick='f1(this);' href=“/references”>Kiparsky 1993</a>","Catalan allows mid vowels {e, ɛ, o, ɔ} in unstressed positions only in some loanwords. When derived, some of these words show regularization in which the vowels must map to licit unstressed vowels. Not all words regularize (e.g. hoˈmeɾ 'Homer' ~ homɛɾ-ik 'Homeric').",
"Triggers","", "Unknown","","Unknown","","No data","Regularization impossible in non-derived environments. Some words do not show regularization.","Unknown","Unknown");

insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values(
	"R-nativization in Dutch","Dutch","Loanwords (English)",
"Op[ɹ]ah	'Oprah'	Op[ʀ]ah-tje	'diminutive'
Ba[ɹ]ack	'Barack'	Ba[ʀ]ack-se	'adjective'
[ɹ]eading	'Reading (town)'	[ʀ]eading-je	'diminutive'
Flo[ɹ]ida	'Florida'	Flo[ʀ]ida-tje	'diminutive'","<a onclick='f1(this);' href=“/references”>Jurgec 2014</a>, Marc van Oostendorp, p.c., Eefje Boef, p.c.",
"In those Dutch dialects that do not allow [ɹ], this sound is possible in some English loanwords. When derived, [ɹ] is nativized into [ʀ] (or another native rhotic).",
"Triggers (see main dataset)","","Not triggers","Op[ɹ]ah	'Oprah'	Op[ɹ]ah-[s]	'plural'
Ba[ɹ]ack	'Barack'	Ba[ɹ]ack-[s]	'plural'	
[ɹ]ex	'Rex' [ɹ]ex-en	'plural'
Flo[ɹ]ida	'Florida'	Flo[ɹ]ida-[s]	'plural'","Not triggers","Op[ɹ]ah	'Oprah'	Hoofd-op[ɹ]ah	'main, true'
Ba[ɹ]ack	'Barack'	Quasi-Ba[ɹ]ack	'Quasi-'	
Flo[ɹ]ida	'Florida'	Wan-flo[ɹ]ida	'bad'	
[ɹ]eading	'Reading (town)'	Hoofd-[ɹ]eading	 'main, true'",
"No data","Regularization possible in non-derived environments","Unknown","Unknown"
);

insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values(
"H-aspiré regularization in French","French","Native and Loanwords",
"lə eʁo 'the hero'	l eʁo-in	'the heroine'
lə pəti itlɛʁ 'the little Hitler'	œ̃ pətit itleʁjɛ̃	'a little follower of Hitler'",
"<a onclick='f1(this);' href=“/references”>Kiparsky 1973:89</a>, <a onclick='f1(this);' href=“/references”>Kiparsky 1993</a>",
"French h-aspiré words begin with a phonetic vowel, and they pattern with words that begin with a consonant, allowing the preceding words to end in a vowel. There is a tendency for h-aspiré behavior to be lost in derived words.",
"Triggers","", "Unknown","","Unknown","","No data","No variation","Unknown","Few words"
);

insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values("R-nativization in Hungarian","Hungarian","Loanwords (English)",
"bɒɹɑk	‘Barack’	bɒrɑk-nɒk	‘dative’
ɹɛdfoɹd	‘Redford’ 	rɛdford-ok	‘plural’
ɹobɛɹʦ	‘Roberts’	robɛrʦ:-ɛl	‘comitative’
kɛɹol	‘Carol’ 	kɛrol-ok	‘plural’
ɹiki	‘Ricky’ 	riki-nɛk	‘dative’",
"Andrea Márkus, p.c.","Some Hungarian speakers allow the English [ɹ] in some foreign roots. When derived, the rhotic must nativize.","Triggers","","Triggers","","No data","","No data","Unknown","Unknown","Only recent loanwords (Éva Dékány, p.c.)");

insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values("F-nativization in Tagalog","Tagalog","Loanwords (Spanish)",
"filipino	‘Filipino’	pilipino-ŋ	‘definite’
fiesta	‘feast’ 	pista-han	‘instrumental’",
"<a onclick='f1(this);' href=“/references”>Zuraw 2006</a>, p.c., <a onclick='f1(this);' href=“/references”>Jurgec 2014</a>",
"Tagalog allows labiodental fricatives {f, v} in certain (old) loanwords from Spanish, as long as they are not derived in which case labial stops {p, b} are preferred.","Triggers","","Likely not triggers (further data needed)",
"filipino	‘Filipino’	filipina	’feminine’","Triggers",
"filipino	‘Filipino’	mag-pilipino	‘language’
fiesta	‘feast’ 	pam-pista	‘festival’  ","Data unclear (no forms with infixes only)","Affixed words are variant, but non-affixed words are not.","Corpus data available. 
filipino 20,074		pilipino 12,011	
affix+filipino 86	affix+pilipino 1,117
fiesta 952	pista 416	
affix+fiesta 27 affix+pista 607
F-variants are about twice as frequent as p-variants in the non-affixed words. F-variants are rare in affixed words.","It is unclear how many other words also exhibit the pattern. Loanwords of this kind may not have sufficient frequency in the corpus. (Kie Zuraw p.c.)");

insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values("Initial r in Basque","Basque","Loanwords",
"rugbi	‘rugby’	erugbi-a	‘absolutive.definite.singular’
rusia	‘Russia’	erusia-ra	‘denonym’",
"Varun de Castro-Arrazola, p.c.",
"Initial r is illicit in Basque, but can occur in recent loanwords. When the loanwords are suffixed, e is epenthesized, in accordance with the native phonology.",
"Triggers","","Triggers","","Unknown","","No data (no infixation reported)","Regularization possible in non-derived environments.","Unknown","Unknown");
insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values(
	"æ-nativization in Polish","Polish","Loanwords (English)",
"ʤæs	‘jazz’	ʤaz-ovy	‘adjective’","Piotr Pisarek, p.c.",
"Polish speakers can pronounce [æ] in English loanwords, but replace the sound with the native [a] in suffixed words.",
"Triggers","","Triggers","","Unknown","","Unknown (no infixes reported)","Unknown","Unknown","Unknown");
/* data omittted  last item*/
insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values (
	"Trisyllabic shortenining in English","English","Latinate words",
"náːture   <span></span>	nátur-al	<span></span>
defáːme	 <span></span> dèfam-á:tion  <span></span>
artículàːte	  <span></span> artículat-òry  <span></span>
oblíːge  <span></span>	oblíg-atòry  <span></span>
álternàːte	‘verb’	álternate	‘adjective’
aspíːre	<span></span> áspir-ant	<span></span>
géneràːte	<span></span>   génerat-ive   <span></span>","<a onclick='f1(this);' href=“/references”>Burzio 1993</a>, <a onclick='f1(this);' href=“/references”>Burzio 1994</a>, <a onclick='f1(this);' href=“/references”>Burzio 2000</a>, <a onclick='f1(this);' href=“/references”>Burzio 2011</a>",
"Latinate roots in English can have a long vowel which shortens in derived words.","Triggers","","Not triggers","","Not triggers","","Not triggers",
"No variation. Underived words have no variation. Some words exhibit the opposite set of facts.","Frequenty","Latinate roots only");
insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values (
	"Prosodification in English","English","Loanwords (Spanish)",
"kihoʊti	‘Quixote’	kwɪkzɑɾ-ɪk	‘Quixotic’",
"<a onclick='f1(this);' href=“/references”>McCarthy 2003</a>, <a onclick='f1(this);' href=“/references”>Wolf 2008</a>",
"English speakers can pronounce some loanwords with the foreign prosodification.","Triggers","","Not triggers",
"kihoʊti	‘Quixote’	kihoʊti-z	‘plural’","Not triggers","","Triggers (must be non-initial)","Unknown","Unknown","Only one lexical item reported in the literature.");
insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values(
	"R-nativization in Canadian English","Canadian English","Loanwords (English)",
"film nwɑʀ	‘film noir’	nuwɑɹ-ɪst	‘noirist’
kʀetjɛ̃	‘Chretién (name)’	kɹeɪtʃjɛn-z	‘possesive’
menaʒ a tʀwɑ	ménage á trois’	meɪnɑʒ ɑ tɹwɑ-z	‘plural’
o pɛʀ	‘au pair’	oʊpɛəɹ-z 	‘plural’
mɔ̃ʀeal	‘Montreal’	mʌntɹiɑl-əɹ	‘Montrealer’",
"<a onclick='f1(this);' href=“/references”>McCarthy 2003</a>, <a onclick='f1(this);' href=“/references”>Wolf 2008</a>",
"Canadian English speakers (and some American English speakers) can pronounce the French rhotic in certain loanwords, typically from Quebec French, as long as no suffix follows.",
"Triggers",
"kʀetjɛ̃	‘Chretién (name)’	kɹeɪtʃjɛn-ɪzəm	‘Chretiénism’
mɔ̃ʀeal	‘Montreal’	mʌntɹiɑl-əɹ	‘Montrealer’","Triggers",	
"kʀetjɛ̃	‘Chretién (name)’	kɹeɪtʃjɛn-z	‘plural’
mɔ̃ʀeal	‘Montreal’	mʌntɹiɑl-z	‘plural’","Not triggers",
"kʀetjɛ̃	‘Chretién (name)’	æntaɪ-kʀetjɛ̃	‘anti-’
mɔ̃ʀeal	‘Montreal’	nɒn-mɔ̃ʀeal	‘non-’","Triggers (must be non-initial) kʀetjɛ̃	‘Chretién (name)’	kɹeɪ<fʌkɪŋ>tʃjɛn	‘Chretién + expletive’	æntaɪ-fʌkɪŋ-kʀetjɛ̃	‘anti-Chretién + expletive’
mɔ̃ʀeal	‘Montreal’	mʌntɹi<fʌkɪŋ>ɑl	‘Montreal + expletive’	nɒn-fʌkɪŋ—mɔ̃ʀeal	‘non-Montreal + expletive’",
"Regularization possible in non-derived environments.","Rare words","Uknown");
/*deleted one "Unknown"*/

insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values(
	"Schwa fronting in Slovenian","Slovenian","Native and Loanwords (English)",
"dəʃ	‘rain’	deʒ-nik	‘umbrella’
mənix	‘monk’	menix-aɾ	‘pejorative’
kəs	‘regret’	kes-a	's/he regrets'
təm-a	‘dark-nominative.singular’	tem-nina	‘darkness’
mɛseʧusəʦ	‘Massachusetts’	meseʧuse-ʧan	‘denonym’
tɛnəsi	'Tennessee’	tenesi-sk-i	‘adjective-masculine.nominative.singular’
wiskɔnsən	‘Wisconsin’	ʋiskonsen-ʧan	‘denonum’
dətɹɔjt	‘Detroit’	detɾojt-ʧan	‘denonym’","<a onclick='f1(this);' href=“/references”>Jurgec 2014</a>, <a onclick='f1(this);' href=“/references”>Jurgec 2015</a>,<a onclick='f1(this);' href=“/references”>Šeruga Prek and Antončič 2003:71</a>",
"Schwa can appear in bare roots but is fronted in words with derivational suffixes.","Triggers(see the main dataset)",
"","Not triggers",
"dəʃ	‘rain’	dəʒ-ja	‘genetive.singular’
mənix	‘monk’	mənix-i	‘nominative.plural’
bət	’stem’	bət-u	‘dative.singular’
kəs	‘regret’	kəs-a	‘nominative.dual’
təʃʧ	‘fast’	təʃʧ-e	‘nomative.singular.neuter’
mɛseʧusəʦ	‘Massachusetts’	meseʧusəʦ-a	‘genitive.singular’
tɛnəsi	’Tennessee’	tenəsi-ju	‘locative.singular’
dətɹɔjt	‘Detroit’	dətɾojt-a	‘genitive.singular’","Not triggers",
"dəʃ	‘rain’	nɛ-dəʃ	‘non-’
mənix	‘monk’	pɾa-mənix	‘grand-’
kəs	‘regret’	s-kəs	’perfective-’
təʃʧ	‘fast.adjective’	nɛ-təʃʧ	‘non-’
mɛseʧusəʦ	‘Massachusetts’	nɛ-mɛseʧusəʦ	‘non-’
tɛnəsi	’Tennessee’	supeɾ-tɛnəsi	‘super-’
dətɹɔjt	‘Detroit’	anti-dətɹojt	‘anti-’",
"No data (no infixation reported)",
"Regularization possible in non-derived environments, but rarely in native words.","Unknown","Schwa is rare in native roots.");
insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values(
	"Vowel tensing Slovenian","Slovenian","Native",
"ʧlɛn	'part, paragraph'	ˈʧlen-a	‘genitive.singular’
mɛt	‘throw’	ˈmet-ək	‘bullet’
ɾɛk	‘idiom’	ˈɾek-u	‘locative.singular’
smɛx	‘laughter’	ˈsmex-om	’instrumental.singular’
ˈmɛdʋet	‘bear’	medˈʋed-ji	‘adjective.masculine.nominative.singular’
ˈjɛzik	‘language’	jeˈzik-i	‘nomative.plural’
ˈjɛlen	‘deer’	jeˈlen-ʧək	‘diminutive’
ˈʒɛlot	‘acorn’	ʒeˈlod-oma	‘dative.dual’"
,"<a onclick='f1(this);' href=“/references”>Jurgec 2015</a>, <a onclick='f1(this);' href=“/references”>Toporišič 1976/2000</a>",
"Some roots can have stressed lax mid vowels {ɛ ɔ} when not followed by a suffix. When suffixed, the lax vowels are avoided. Vowels become tense {e o} in monosyllabic roots. Disyllabic or longer roots instead exhibit stress shift to the following root vowel, which is never lax. The resulting unstressed vowel is no longer lax, as unstressed vowels do not contrast in ATR.",
"Triggers","","Triggers","","Not triggers",
"ʧlɛn	'part, paragraph'	ˌpɔt-ˈʧlɛn	‘sub-’
mɛt	‘throw’	do-ˈmɛt	‘reach’
ɾɛk	‘idiom’	na-ˈɾɛk	‘dictation’
smɛx	‘laughter’	na-ˈsmɛx	’smile’
ˈmɛdʋet	‘bear’	ˌpɾa-ˈmɛdʋet	‘ancestor-’
ˈjɛzik	‘language’	ˌpɾa-ˈjɛzik	‘ancestor-’
ˈjɛlen	‘deer’	ˌnɛ-ˈjɛlen	‘non-’
ˈʒɛlot	‘acorn’	ˌnɛ-ˈʒɛlot	‘non-’
peˈtɛlin	‘rooster’	ˌnɛ-peˈtɛlin	‘non-‘",
"No data (no infixation reported)",
"Slovenian native roots fall into three groups with respect to their stressed vowels: (i) non-alternating, always tense, (ii) non-alternating, always lax, and (iii) alternating, tense when not suffixed, lax when suffixed. Many roots fall in more than one of the above categories. The fourth possibility (alternating, lax when not suffixed, tense when suffixed) is not attested.","See above","The always lax paradigm is about 10 times rarer than the alternating paradigm.");
insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values(
	"Vowel tensing Slovenian","Slovenian","Loanwords (English)",
"flɛʃ	‘flash’	fleʃ-u	‘dative.singular’
mɛʧ	‘match’	meʧ-i	‘nominative.plural’
tɛk	‘tech’	tek-a	‘genitive.singular’
ɛkstazi	‘extasy’	ekstazi-ja	‘genitive.singular’
mɛseʧusəʦ	‘Massachusetts’	meseʧuseʦ-a	‘genitive.singular’
tɛnəsi	’Tennessee’	tenesi-sk-i	‘adjective-masculine.nominative.singular’
wiskɔnsən	‘Wisconsin’	ʋiskonsen-ʧan	‘denonum’
dətɹɔjt	‘Detroit’	detɾojt-ʧan	‘denonym’",
"<a onclick='f1(this);' href=“/references”>Jurgec 2010</a>,<a onclick='f1(this);' href=“/references”>Jurgec 2015</a>, <a onclick='f1(this);' href=“/references”>Toporišič 1976/2000:52</a>",
"Some loanword roots can have stressed lax mid vowels {ɛ ɔ} when not followed by a suffix. When suffixed, the vowels are typically replaced by tense vowels {e o}.","Triggers","",
"Triggers","","Not triggers",
"mɛseʧusəʦ	‘Massachusetts’	nɛ-mɛseʧusəʦ	‘non-’
tɛnəsi	’Tennessee’	supeɾ-tɛnəsi	‘super-’
dətɹɔjt	‘Detroit’	anti-dətɹojt	‘anti-’
flɛʃ	‘flash’	anti-flɛʃ	‘anti-’
mɛʧ	‘match’	ɾe-mɛʧ	‘re-’
tɛk	‘tech’	neo-tek	‘neo-’
ɛkstazi	‘extasy’	nɛ-ʔɛkstazi	‘non-’",
"No data (no infixation reported)",
"Regularization possible in non-derived environments. Native roots exhibit the same avoidance of lax vowels, but have different repairs.","Unknown","Unknown");
insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values(
	"Deletion in Russian","Russian","Native",
"sə<span>&nbsp<span>dvaróm	'with the yard'	z<span>&nbsp<span>dvaróvɨm 	'with the yard-adjective'
kə<span>&nbsp<span>kristú	'to the cross'	k<span>&nbsp<span>kréstiku	'to the cross-diminutive'
sa<span>&nbsp<span>mnóg-imi	'with many'	s<span>&nbsp<span>mnóʐəstvəm	'with a multitude'
sə<span>&nbsp<span>ftarɨ́m	'with second-adjective'	s<span>&nbsp<span>ftər-a-gód-niʧistv-əm	'with repeating a grade'"
,"<a onclick='f1(this);' href=“/references”>Gouskova and Linzen to appear</a>",
"Deletion is blocked before certain roots, but deletion applies in derived environments.","Triggers","",
"Not triggers (mostly)","","Unknown","","No data (no infixation reported)","Variation in derived an non-derived environments. Deletion rates are higher in derived environments.","Frequency for selected roots provided in the source.","Only certain roots undergo this process. Other roots never have deletion or always have it.");
insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values (
	"Word minimum in Turkish","Turkish","Native",
"ham	‘unripe’	ek	‘affix’	
fa-dan	'fa (note)-ablative'	*fa-n	‘fa-2.singular.possesive’
be-ler	'b (letter)-plural'	*be-n	‘b-2.singular.possesive’"
,"<a onclick='f1(this);' href=“/references”>Inkelas and Orgun 1995</a>",
"Turkish has a disyllabic minimum. Non-derived words can be monosyllabic and are thus exempt from the disyllabic word minimum.",
"Triggers","","Triggers","","Unknown","",
"Unknown",
"Speakers fall into several groups, only some of which show the disyllabic restriction.","Unknown","Unknown");
insert into language (title,name,type,examples,source,description,dtrigger,derivational,itrigger,
	inflectional,ptrigger,prefixes,infixes,variation,frequency,extent) values ("Word minimum in Japanese","Japanese","Native",
"su 	'vinegar'  	choko 'chocolate'","<a onclick='f1(this);' href=“/references”>Itô 1990</a>, <a onclick='f1(this);' href=“/references”>Kiparsky 1993</a>",
"Japanese has a bimoraic word minimum. Non-derived words can be monomoraic and are thus exempt from the bimoraic word minimum.","Triggers","",
"Triggers","","Unknown","",
"Unknown",
"Unknown","Unknown","Unknown");

