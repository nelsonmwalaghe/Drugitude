import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../controllers/local_database.dart';
import '../drugListCallModel/druglistdbmodel.dart';
import '../pages/aboutDrugitude.dart';
import '../pages/drugrequestpage.dart';

import 'package:drugitudeleviosa/controllers/local_database.dart';
import 'package:drugitudeleviosa/searchModels/offlinedictionarysearch.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../controllers/fetch_apidrugcodexdb.dart';
import '../drugListCallModel/druglistdbmodel.dart';
import '../pages/landingpage.dart';
import '../searchModels/dictionarymodeazsearch.dart';



import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../apiServiceModels/gennameapimodel.dart';
import '../drugListCallModel/drugListModel.dart';
import '../pages/drugrequestpage.dart';

// Note this is for INN Search key words to remember
// drugstosearch-innName
// recentdrugs - innName
// FetchDrug - innName
// _drugList - innName
// data - InnName

class DictionaryDBTherapueticAreaSearch extends SearchDelegate {
  final LocalDatabase latestnewtherapueticareadrug = LocalDatabase();

  final drugstosearch =[
    "alimentary tract and metabolism","drugs for peptic ulcer and gastro-oesophageal…","antiseptics and disinfectants:…","other analgesics and antipyretics","beta-lactamantibacterials: penicillins…","emergency contraceptives for systemic use","antinematodal anthelmintic agents:…","alteplase","antimalarial antiprotozoals: combinations of…","digestives including enzymes: enzyme preparations","beta-lactamantibacterials: combinations of…","antihistamines for topical use","plain potent corticosteroids (group iii) for…","sulfonamides for topical use","non-steroidal…","antibacterials for systemic use: tetracyclines","antiprotozoals agents against amoebiasis and…","antibacterials for systemic use: imidazole…","beta-lactamantibacterials:…","beta-lactamantibacterials: first-generation…","tetracyclineand derivatives antibiotics for…","plain weak corticosteroids (group i) for topical…","antihistamines for systemic use: phenothiazine…","non-opioid analgesics andantipyretics: anilides","antibacterials for systemic use: amphenicols","antibacterials for systemic use: macrolides","antibiotics antifungals for topical use","cough suppressants and expectorants combinations:…","antihistamines for systemic use: substituted…","imidazoleandtriazolederivatives antifungals for…","other drugs for peptic ulcer and…","antimalarial antiprotozoals: methanolquinolines","antiseptics and disinfectants: iodineproducts","adrenergics inhalants:…","antibacterials for systemic use: combinations of…","other ectoparasiticides including scabicides","other antifungals for topical use","combinations of antiandrogens and estrogens","antiseptics and disinfectants: phenoland…","ophthalmological decongestantsandantiallergics:…","beta-lactamantibacterials: third-generation…","immune sera","antimalarial antiprotozoals: plain artemisininand…","other intestinal adsorbents","mineral supplements: calcium combinations with…","antispasmodics in combination with analgesics:…","plain antiandrogens","drugs used inerectile dysfunction","other drugs for functional gastrointestinal…","antibacterials for systemic use: fluoroquinolones","high-ceiling diuretics: plain sulfonamides","insulins and analogues for injection…","antihistamines for systemic use: piperazine…","antibacterials for systemic use: lincosamides","drugs for functional gastrointestinal disorders:…","antithrombotic agents: platelet aggregation…","antihypertensives: methyldopa","antiemetics and antinauseants: serotonin (5-ht3)…","plain lipid modifying agents: hmg coa reductase…","non-opioid analgesics andantipyretics: salicylic…","stomatological preparations: anti-infectives and…","insulins and analogues for injection fast-acting","other drugs for obstructive airway diseases…","agents acting on the renin-angiotensin system:…","calcium channel blockers - selective calcium…","anti-inflammatory/antirheumatic agents in…","genito-urinary system: imidazole derivatives","other antibiotics for topical use","combinations of potent corticosteroids with…","hormonal contraceptives: fixed combinations of…","hormonal contraceptives: progestogens for…","insulins and analogues for injection long-acting","blood glucose lowering drugs excluding insulins:…","other blood glucose lowering drugs excluding…","retinoidsfor treatment ofpsoriasis","vitamin d and analogues","other plain vitamin preparations","vasoprotectives - agents for treatment of…","other antiemetics","other non-steroidal…","drugs for constipation: contact laxatives","antimycotics for systemic use: triazolederivatives","plain very potent corticosteroids (group iv) for…","combinations of very potent corticosteroids with…","combinations of moderately potent corticosteroids…","other hypnotics and sedatives","plain belladonna and derivatives: semisynthetic…","genito-urinary system: other anti-infectives and…","clotrimazole","anxiolytics: benzodiazepinederivatives","other antianemic preparations","combinations of oral blood glucose lowering drugs","expectorants excluding combinations with cough…","non-steroidal anti-inflammatory preparations for…","artemether","centrally acting muscle relaxants: oxazolthiazine…","antianemic preparations - iron preparations: iron…","ophthalmological antiglaucoma preparations and…","intravaginal contraceptives","other cold preparations","antianemic preparations - vitamin b12 and folic…","antibacterials for systemic use:…","antiprotozoal agents againstleishmaniasisand…","antispasmodics in combination with analgesics","antidepressants: selective serotonin reuptake…","bacterial vaccines: typhoid vaccines","ophthalmological anti-infectives: fluoroquinolones","ophthalmologicals: corticosteroids and…","other diagnostic agents: tuberculosisdiagnostics","other dermatological preparations","digestives including enzymes: acid preparations","other antiepileptics","other systemic drugs for obstructive airway…","nasal decongestants for systemic use:…","other antidepressants","antipsychotics: thioxanthenederivative","preparations withsalicylic acidderivatives for…","beta-lactamantibacterials: second-generation…","other systemic hemostatics","antiarrhythmics class ib","antihistamines for systemic use: aminoalkyl ethers","throat preparations: antiseptics","antivaricose therapy: heparins or heparinoids for…","magnesium antacids compounds","antacids with antiflatulents","other combinations of very potent corticosteroids…","beta-lactamantibacterials: fourth-generation…","beta blocking agents: selective beta blocking…","zincemollients and protectives products","propulsives","antigoutpreparations: preparations inhibitinguric…","antibacterials for systemic use: aminoglycosides","antimalarial antiprotozoals: aminoquinolines","beta blocking agents: alpha and beta blocking…","other diuretics - peripheral vasodilators: ergot…","antivertigo preparations","antigoutpreparations: preparationsincreasing uric…","antifungals for systemic use","mineral supplements: zinc","other cardiac preparations","combinations of corticosteroids for topical use…","ophthalmological and otological preparation:…","other opioid analgesics","other antihistamines for systemic use","stomatological preparations: corticosteroids for…","intestinal anti-infectives: antibiotics","hypnoticsandsedatives: benzodiazepine derivatives","other antiprotozoals agents against amoebiasis…","other cough suppressants excluding combinations…","anticestodals anthelmintic agents: salicylic…","antimycotics for systemic use:…","antipropulsives","other agents for treatment of hemorrhoids and…","antacids other combinations","intravenous solutions: solutions producing…","intravenous solutions: solutions for parenteral…","antivirals for systemic use:…","antivirals for topical use","antispasmodics in combination with psycholeptics:…","ophthalmologicals: corticosteroids…","plain ascorbic acid (vitamin c)","beta-lactamantibacterials: carbapenems","antibacterials for systemic use: streptogramins","antiepileptics: carboxamidederivatives","antimigrainepreparations: selective serotonin…","other nutrients: amino…","plain vitamin b1","antihemorrhagics - antifibrinolytics: amino acids","antivirals for systemic use: combinations of…","calcium antacid compounds","ectoparasiticides including scabicides:…","adrenergics for systemic use: non-selective…","plain vitamin b-complex","antibacterials for systemic use: long-acting…","other combinations of potent corticosteroids for…","drugs affecting bone structure and…","other antinematodal anthelmintic agents","aciclovir","combinations multivitamins: multivitamins with…","vitamins with minerals","antibacterials for systemic use: nitrofuran…","contrast media - magnetic resonance imaging:…","contrast media - iodinated x-raycontrast media:…","antibacterials for systemic use: other quinolones","plain corticosteroids for systemic use:…","ofloxacin and ornidazole","levofloxacin","combinations of vitamins","intrauterine contraceptives for topical use","antithrombotic agents: direct factor xa inhibitors","ophthalmological anti-infectives: antibiotics","contrast media - non-iodinated x-ray contrast…","antimetabolites: pyrimidineanalogues","antithrombotic agents: enzymes","mineral supplements: sodium","antacids with sodium bicarbonate","anesthetics for topical use","thiazides low-ceiling diuretics: plain thiazides","mineral supplements: calcium","other combinations of weak corticosteroids for…","other cicatrizants","aluminium antacids compounds","antidiarrheal micro-organisms","androgens: 5-androstanon-(3) derivatives","estrogens: plain natural and semisynthetic…","ophthalmologicals: anti-inflammatory agents…","progestogens: pregnen-(4) derivatives","adrenergics for systemic use: selective…","ondansetron","antithyroidpreparations: thiouracils","peripherally acting muscle relaxants:…","sythetic ovulationstimulants","antithyroidpreparations: sulphur-containing…","psychostimulants agents used foradhdand…","capillary stabilising agents: bioflavonoids","other antispasmodics in combination with…","antipsychotics:…","vitamin b1 in combination with vitamin b6 and/or…","antivirals for systemic use: non-nucleoside…","anti-infectives for topical use in acne","other immunosuppressants","other ophthalmological anti-infectives","hormone antagonists and related agents: aromatase…","local anesthetics: amides","low-ceiling diuretics excluding thiazides: plain…","other ophthalmological antiallergics","hypnoticsandsedatives: benzodiazepine related…","decongestantsand other nasal preparations for…","viral vaccines: measlesvaccines","bacterial vaccines: haemophilus influenzaeb…","bacterial vaccines: tetanus vaccines","antivirals for systemic use: protease inhibitors","other stomatological preparations for local oral…","drugs for functional gastrointestinal disorders","hypnoticsandsedatives: plain barbiturates","beta blocking agents and other diuretics: beta…","combinations and complexes of aluminium calcium…","sulfur containing products for topical use in…","plantalkaloidsand other natural products:…","combinations of bacterial and viral vaccines","viral vaccines: hepatitisvaccines","other topical products for joint and muscular pain","cough suppressants excluding combinations with…","antinematodal anthelmintic agents: piperazineand…","antipsychotics: phenothiazineswith aliphatic…","bacterial vaccines: tuberculosis vaccines","other general anesthetics","general anesthetics: plain barbiturates","plain multivitamins","other dermatological preparations:…","potassium-sparing agents: aldosterone antagonists","brinzolamide","anti-dementiadrugs: anticholinesterases","other anti-inflammatory/antirheumatic agents in…","combinations of lipid modifying agents: hmg coa…","betaxolol","other irrigating solutions","otological corticosteroids and anti-infectives in…","cyclopentolate","plantalkaloidsand other natural products: taxanes","other alkylating agents","other antineoplastic agents: platinumcompounds","antimetabolites: folic acidanalogues","emedastine","capsaicinand similar agents for topical use","other ophthalmological diagnostic agents","ophthalmologicals:…","antithrombotic agents: heparin group","dexamethasone and antiinfectives","ophthalmological mydriatics andcycloplegics:…","other drugs for disorders of the musculo-skeletal…","parasympathomimetics: anticholinesterases","electrolytes with carbohydrates: oral rehydration…","retinoids for topical use in acne","nepafenac","other ophthalmologicals","tobramycin","parathyroid hormones and analogues","oxytocics: ergotalkaloids","cardiac stimulants excluding cardiac glycosides:…","plain belladonna and derivatives: belladonna …","other vaccines","viral vaccines: rabiesvaccines","antimycobacterials: antibiotics","antimycobacterials: other drugs for treatment of…","antimycobacterials: hydrazides","opioid analgesics: natural opium alkaloids","selective immunosuppressants","adrenergics inhalants: adrenergics and other…","general anesthetics: opioidanesthetics","cytotoxic antibioticsand related substances:…","other dermatological preparations: antihidrotics","surgical aids: viscoelasticsubstances","other antineoplastic agents","alpha-adrenoreceptor antagonists used inbenign…","intestinal anti-inflammatory agents:…","anti-parkinson drugs: dopaminergicagents -…","antithrombotic agents: direct thrombin inhibitors","other antimalarial antiprotozoals","intravenous solutions: solutions affecting the…","beta blocking agents: non-selective beta blocking…","antiseptics and disinfectants: other antiseptics…","antiepileptics: barbituratesand derivatives","ophthalmological anti-infectives: antivirals","testosterone-5-alpha reductase inhibitors used…","other antineoplastic agents: protein kinase…","benzoyl peroxide","otological anti-infectives","hypothalamic hormones: somatostatin and analogues","genito-urinary system: antibiotics","oxytocics: prostaglandins","antipsychotics: phenothiazines…","antidepressants: non-selective monoamine reuptake…","intestinal anti-infectives: sulfonamides","other antipsychotics","combinations multivitamins: other multivitamins","antinematodal anthelmintic agents: avermectines","other combinations of vitamin b-complex","bile acid preparations","beta blocking agents and other antihypertensives:…","appetite stimulants","other drugs for constipation","mineral supplements: potassium","other diuretics - peripheral vasodilators: purine…","plain lipid modifying agents: fibrates","itraconazole","azithromycin","other antidiarrheals","alprazolam","combinations of antihistamines for systemic use:","normal human immunoglobulins","alkylating agents: nitrogen mustardanalogues","general anesthetics: halogenatedhydrocarbons","medicated dressings with antiinfectives","pregabalin","all other non-therapeutic veterinary products","immunologicals for domestic fowl: live viral…","antivirals for systemic use: thiosemicarbazones","other selective calcium channel blockers with…","other progestogens","sulfonamides plain and in combinations","bacterial vaccines: meningococcal vaccines","sulfamethoxazole and trimethoprim","albendazole","tramadol","paracetamol","antibacterials for systemic use","esomeprazole","cefotaxime","tizanidine","telmisartan","deflazacort","terbinafine","other veterinary immunologicals","etoricoxib","amitriptyline","combinations of several antihypertensives","selexipag","sulfadiazine and trimethoprim","saxagliptin and dapagliflozin","ipratropium bromide","budesonide","glimepiride","chlortalidone","antiinfectives/antiseptics in combination with…","combinations of penicillins","mometasone","fluconazole","azithromycin fluconazole and secnidazole","omeprazole","tretinoin","tetanus toxoid","rosuvastatin","dolutegravir","bisoprolol and thiazides","progesterone","ceftriaxone combinations","diclofenac combinations","furosemide","atorvastatin","bevacizumab","cefuroxime","cefpodoxime","latanoprost","olopatadine","antineoplastic agents","imatinib","montelukast","paromomycin","olmesartan medoxomil and diuretics","atorvastatin and amlodipine","cough suppressants and expectorants","nevirapine","leflunomide","diphenhydramine combinations","losartan","ambroxol","acetylsalicylic acid","sunitinib","all other non-therapeutic products: solventsand…","sertaconazole","erlotinib","mannitol","methylphenidate","ibuprofen","capecitabine","gemcitabine","zidovudine and lamivudine","artenimol","desmopressin","folic acid","diclofenac","quetiapine","cilnidipine","losartan and diuretics","montelukast combinations","mecobalamin","nalbuphine","dulaglutide","cefdinir","antimycotics for systemic use: antibiotics","cefprozil","amlodipine","brentuximab vedotin","heparin","antimalarials","gabapentin","tramadol combinations","cromoglicic acid","griseofulvin","carbamazepine","metformin and empagliflozin","docetaxel","deferasirox","butylscopolamine","phenylephrine","imidazoles/triazoles in combination with…","amoxicillin and enzyme inhibitor","antiinfectives for systemic use","meropenem","pantoprazole amoxicillin and clarithromycin","ferrous amino acid complex","tetanus antitoxin","adapalene combinations","salbutamol","miconazole","metronidazole","apixaban","metformin","benzathine benzylpenicillin","cough suppressants and mucolytics","rabies immunoglobulin","irbesartan","valsartan and diuretics","fusidic acid","various combinations","miconazole combinations","rituximab","levonorgestrel","olanzapine","sevelamer","temozolomide","doxylamine","paliperidone","silodosin","other vasodilators used in cardiac diseases","olmesartan medoxomil amlodipine and…","itopride","levetiracetam","sildenafil","aceclofenac","methadone","combinations","paracetamol combinations excl. psycholeptics","palbociclib","phenylephrine combinations","febuxostat","cefixime","ciclosporin","cetirizine","carvedilol","cefadroxil","enoxaparin","chloramphenicol","nifedipine","chlorzoxazone combinations excl. psycholeptics","gentamicin","dexamethasone","alfuzosin","valsartan amlodipine and hydrochlorothiazide","irbesartan and diuretics","amlodipine and diuretics","levonorgestrel and ethinylestradiol","lansoprazole clarithromycin and tinidazole","immunoglobulins normal human for intravascular…","duloxetine","tetracyclines","immunologicals for domestic fowl: inactivated…","ornidazole","systemic hormonal preparations excl. sex hormones…","clarithromycin","macrolides","topiramate","valsartan and amlodipine","amoxicillin","losartan and amlodipine","moxifloxacin","dimeticone","osimertinib","ceftriaxone","labetalol","thiopental","direct acting antivirals","sitagliptin","rabeprazole combinations","artemether and lumefantrine","varicella live attenuated","lenalidomide","antiinflammatory and antirheumatic products…","olmesartan medoxomil","perindopril and amlodipine","hydralazine","viral vaccines: influenza vaccines","letrozole","fexofenadine","ferric oxide polymaltose complexes","nebivolol","telmisartan and amlodipine","metformin and dapagliflozin","ciprofloxacin","riociguat","metformin and vildagliptin","indometacin","salmeterol and fluticasone","flucloxacillin","trastuzumab emtansine","electrolytes","carbohydrates","emicizumab","naproxen","valsartan and sacubitril","dexchlorpheniramine combinations","telmisartan and diuretics","urologicals","macrogol combinations","lacosamide","hydroxycarbamide","empagliflozin","bempedoic acid and ezetimibe","vitamin b-complex with vitamin c","candesartan","multienzymes (lipase protease etc.)","palonosetron","benzydamine","zinc sulfate","sodium chloride","semaglutide","other plain lipid modifying agents","any other antihypertensives","intestinal anti-inflammatory agents: locally…","drugs for constipation: osmotically acting…","mineral supplements: magnesium","antimalarial antiprotozoals: diaminopyrimidines","viral vaccines: papillomavirus vaccines","other local anesthetics","blood substitutes and plasma protein fractions","peritoneal dialytics: vitamins","adrenergics for systemic use: alpha- and…","other antiprotozoal agents against leishmaniasis…","liver therapy lipotropics","antiepileptics: fatty acidderivatives","other hematological products","androgens: 3-oxoandrosten-(4) derivatives","other dermatological preparations: agents…","hormones and related agents:…","other i.v. solution additives","other gynecologicals: prolactininhibitors","other peripherally acting muscle relaxants","parasympathomimetics: choline esters","other viral vaccines","antibacterials for systemic use: quinolone…","antimycobacterials: combinations of drugs for…","vasodilators used in cardiac diseases: organic…","all other non-therapeutic products: plasters","other antineoplastic agents: monoclonal antibodies","retinoids for systemic use in acne","opioid analgesics: phenylpiperidinederivatives","thiazides low-ceiling diuretics: combinations of…","intravenous solutions: salt solutions","intestinal anti-infectives: imidazole derivatives","non-opioid analgesics andantipyretics: pyrazolones","other combinations vitamins","thyroid hormones","agents acting on arteriolar smooth muscle:…","antiseptics and disinfectants: quaternary…","immunologicals for cattle: inactivated viral…","other centrally acting muscle relaxants","ebastine","other beta-lactam antibacterials","rocuronium bromide","erythropoietin","cyproheptadine","rivaroxaban","bosentan","isotretinoin","vancomycin","progestogens","doxorubicin","loperamide","antispasmodics in combination with other drugs","antibacterials for systemic use: polymyxins","tinidazole","diloxanide","misoprostol","ketamine","amikacin","adenosine","tiotropium bromide","pseudoephedrine combinations","rabeprazole","metformin and sitagliptin","carboplatin","oxytocin","quinine","cefalexin","sofosbuvir and ledipasvir","clobazam","chlorphenamine","other diagnostic radiopharmaceuticals","citicoline","rizatriptan","colecalciferol","lornoxicam","urinaryconcrementsolvents","carbocisteine","piroxicam","agents against amoebiasis and other protozoal…","lamivudine tenofovir disoproxil and efavirenz","mifamurtide","neostigmine","alimentary tract and metabolism","clindamycin","antipsoriatics for topical use","ofloxacin","pantoprazole","epinephrine","gliclazide","tamsulosin","codeine","azilsartan medoxomil","hydrocortisone","various","linagliptin and empagliflozin","tadalafil","sertraline","imiquimod","glycopyrronium bromide","ceftazidime","solifenacin","atracurium","levocetirizine","antiinflammatory and antirheumatic products","clofazimine","tapentadol","cisatracurium","organo-heparinoid","hydroquinine","aminophylline","nebivolol and thiazides","filgrastim","pilocarpine","benzylpenicillin","cisplatin","trastuzumab","cefazolin","ethambutol","oxymetazoline","zoledronic acid calcium and colecalciferol…","ibuprofen combinations","musculo-skeletal system","other products for animal euthanasia","ivermectin","almagate","other antitrematodal anthelmintic agents","valproic acid","praziquantel","fluoroquinolones","other veterinary immunologicals: other…","ampicillin","betahistine","fosfomycin","abiraterone","thiocolchicoside combinations","chlorzoxazone","naproxen and esomeprazole","vaccines","saccharated iron oxide","triamcinolone","stomatological preparations","betamethasone and antibiotics","nalidixic acid","lidocaine","analgesics","cyclophosphamide","darifenacin","etoposide","dacomitinib","antidotes","drugs for urinary frequency and incontinence","doxycycline","beclometasone and antibiotics","zoledronic acid","vonoprazan","mirabegron","meloxicam","centrally acting muscle relaxants: ethers…","antihypertensives: antiadrenergic agents…","other blood products","ironchelating agents","gonadotropins","cardiac glycosides: digitalis glycosides","adrenergics inhalants: alpha- and…","peritoneal dialytics: electrolyte solutions","other psychostimulants agents used foradhdand…","various alimentary tract and metabolism products","combinations of androgens and female sex hormones…","other alimentary tract and metabolism products:…","immunosuppressants: interleukininhibitors","antihemorrhagics - vitamin k and other…","plain moderately potent corticosteroids (group…","centrally acting muscle relaxants: carbamic…","tacrolimus","other antithrombotic agents","beta-lactamantibacterials: beta-lactamase…","other respiratory system products: lung…","other antibacterials for systemic use","antibiotics","immunologicals for goat: live and inactivated…","mefenamic acid","donepezil and memantine","other beta-lactam antibacterials combinations…","polynoxylin","paclitaxel","ivabradine","artenimol and piperaquine","ulobetasol","bisoprolol","nebivolol and other antihypertensives","ampicillin and enzyme inhibitor","prednisolone","metformin and sulfonylureas","influenza inactivated split virus or surface…","drospirenone and ethinylestradiol","enalapril and nitrendipine","all other therapeutic products","lactulose","antacids","antinematodal agents","micafungin","vardenafil","chlorhexidine combinations","ursodeoxycholic acid","ranolazine","antifungals for dermatological use","sultamicillin","lapatinib","ketoconazole","levamisole","electrolytes with carbohydrates","atropine","povidone-iodine","magaldrate and antiflatulents","sofosbuvir","glucose","rupatadine","dexchlorpheniramine","dapoxetine","other otologicals: indifferent preparations","cimetidine","epirubicin","formoterol and budesonide","butorphanol","eberconazole","lenvatinib","potassium chloride","doripenem","azacitidine","poliomyelitis trivalent inactivated whole virus","apalutamide","bupivacaine","nilotinib","cetrorelix","linezolid","timolol","tetryzoline","midazolam","tranexamic acid","ketorolac","isoniazid","other hematological agents: enzymes","cefepime","beta-lactamase sensitive penicillins","desloratadine","ordinary salt combinations and antiflatulents","torasemide","pegfilgrastim","levocarnitine","clopidogrel","artesunate","nystatin","timolol combinations","chlorhexidine","pazopanib","dapagliflozin","domperidone","chloropyramine","urologicals: acidifiers","norfloxacin","betamethasone","ordinary salt combinations","ibrutinib","nitazoxanide","doravirine","piperacillin and enzyme inhibitor","nonacog alfa","pethidine","rosuvastatin and ezetimibe","bilastine","papillomavirus (human types 16 18)","linagliptin","paricalcitol","rifaximin","magnesium sulfate","mupirocin","glibenclamide","antiseptics and disinfectants: silvercompounds","immunostimulants: colony stimulating factors","other throat preparations","genito-urinary system: triazole derivatives","salicylic acidemollients and protectives…","specificimmunoglobulins","other intestinal anti-infectives","antitrematodal anthelmintic agents:…","other beta-lactamantibacterials: other…","immunosuppressants: calcineurininhibitors","fixed combinations of progestogens and estrogens","other drugs for acid related disorders","intravenous solutions: antiinfectives","drugs for treatment…","combinations of weak corticosteroids antibiotics…","other antipruritics","other respiratory system diagnostic…","immunosuppressants: tumor necrosis factor…","other antigout preparations","other antimycotics for systemic use","artificial tears and other indifferent…","ophthalmologicals","cough and cold preparations","pleuromutilins","escitalopram","fingolimod","lansoprazole amoxicillin and levofloxacin","ticagrelor","donepezil","lamivudine and abacavir","clobetasol","eplerenone","vecuronium","levothyroxine sodium","silicones","sumatriptan","domiphen","antivirals for systemic use","metoclopramide","bisoprolol and other antihypertensives","magnesium hydroxide","ephedrine","beclometasone","trimetazidine","dutasteride","secnidazole","promethazine","sodium citrate","mifepristone combinations","chlorphenamine combinations","lamivudine abacavir and dolutegravir","secobarbital","antidiarrheals intestinal…","golimumab","secukinumab","lopinavir and ritonavir","aminoglutethimide","plastic iud with progestogen","sorbitol","lansoprazole amoxicillin and clarithromycin","polystyrene sulfonate","gefitinib","bortezomib","valaciclovir","insulin (human)","dexmedetomidine","sodium fluoride","emtricitabine and tenofovir alafenamide","glucosamine","follitropin alfa","clonazepam","methyldopa (levorotatory)","olmesartan medoxomil and amlodipine","insulin lispro","celecoxib","loratadine","entecavir","oxytetracycline","propofol","spironolactone","policresulen","paracetamol combinations with psycholeptics","valsartan","imipenem and enzyme inhibitor","multivitamins combinations","adapalene","asparaginase","erythromycin","dactinomycin","octreotide","bromhexine","posterior pituitarylobe hormones: oxytocin and…","antimycobacterials: thiocarbamidederivatives","high-ceiling diuretics: sulfonamides and…","plain vitamin a","combinations of ascorbic acid (vitamin c)","other otologicals: analgesics and anesthetics","other immunologicals for domestic fowl","antiepileptics: hydantoinderivatives","other antimigrainepreparations","bacterial vaccines: pneumococcal vaccines","antigonadotropinsand similar agents","immunologicals for sheep: inactivated bacterial…","other non-selective calcium channel blockers","anti-parkinson drugs: anticholinergicagents -…","other respiratory system products","genito-urinary system: combinations of…","progestogens: estrenderivatives","other antivirals for systemic use","metoprolol and other antihypertensives","drotaverine","brexpiprazole","dextromethorphan","oxaliplatin","blood glucose lowering drugs excl. insulins","travoprost","palonosetron combinations","vildagliptin","poliomyelitis oral bivalent live attenuated","trimethoprim","fentanyl","simvastatin","vasodilators used in cardiac diseases","fulvestrant","mebendazole","calcium carbonate","sulfur","methotrexate","drugs used in benign prostatic hypertrophy","phenytoin","pancuronium","combinations of antibacterials","medicinal charcoal","immunologicals for dog: inactivated viral vaccines","calcium dobesilate combinations","ibandronic acid","arginine hydrochloride","sulbactam","antiinflammatory/antirheumatic agents in…","sevoflurane","tofacitinib","mycophenolic acid","metformin and linagliptin","efavirenz","betamethasone and antiseptics","epinephrine and other drugs for obstructive…","clofarabine","pyrimethamine combinations","bleomycin","metformin and canagliflozin","dipeptifyl peptidase-4 inhibitors","regorafenib","clomifene","bromazepam","drugs for obstructive airway diseases","rota virus pentavalent live reassorted","pembrolizumab","ertapenem","norethisterone","cyclobenzaprine","deslanoside","etamsylate","blood plasma","tolvaptan","antiinfectives combinations","mesalazine","diazepam","pertuzumab and trastuzumab","beta blocking agents and other antihypertensives","promethazine combinations","rifampicin","prucalopride","mebeverine","phenobarbital","naloxone","fludrocortisone","antihypertensives","betamethasone and antiinfectives","tars antipsoriatics derivatives","other urologicals","antidepressants in combination with psycholeptics","detoxifying agents for antineoplastic treatment","other high-ceiling diuretics","drugs for constipation: enemas","ocularvascular disorderagents:…","drugs used in opioid dependence","stomatological preparations: caries prophylactic…","progestogens: pregnadienderivatives","ophthalmological anti-infectives: sulfonamides","other antineoplastic agents: methylhydrazines","antipsychotics: butyrophenonederivatives","immunologicals for goat: inactivated bacterial…","digoxin","theophylline","ritonavir","flupentixol","atosiban","ambrisentan","vortioxetine","ramipril","fluoxetine","anthelmintics","pemetrexed","potassium citrate","morphine","fluorometholone","leuprorelin","naltrexone","buprenorphine","tetracycline","iohexol","angiotensin ii antagonists plain","corticosteroids combinations with antibiotics","albumin","diphtheria-hemophilus influenzae…","atorvastatin and ezetimibe","tenofovir disoproxil","venlafaxine","acefylline piperazine","spectinomycin","meningococcus a purified polysaccharides antigen…","perindopril and diuretics","topical products for joint and muscular pain","darbepoetin alfa","tetracyclines combinations with other…","muscle relaxants","poliomyelitis oral monovalent live attenuated","ceftizoxime","fluorouracil","lansoprazole","daclatasvir","fluticasone","procaine benzylpenicillin","other emollients and protectives","antiseptics and disinfectants: boric acidproducts","other anti-dementia drugs","antimalarial antiprotozoals: biguanides","antiepileptics: benzodiazepinederivatives","other agents acting on the renin-angiotensin…","hormone antagonists and related agents:…","brinzolamide combinations","other drugs for drugs for bile therapy","antiepileptics: succinimidederivatives","ranitidine","hydrochlorothiazide","combinations of imidazole derivatives","bimatoprost","buserelin","etanercept","caspofungin","prednicarbate","testosterone","granisetron","xylometazoline","tamsulosin and dutasteride","ceftazidime combinations","calcium folinate","codeine combinations excl. psycholeptics","androstanolone","silver sulfadiazine","other diuretics","lymecycline","lamivudine and tenofovir disoproxil","phentermine","allopurinol","irbesartan and amlodipine","bifonazole","epoprostenol","artesunate and amodiaquine","procyclidine","tigecycline","lactitol","imidazole derivatives","contrast media","sex hormones and modulators of the genital system","iron preparations","other veterinary immunologicals: live viral…","immunologicals for domestic fowl: combinations of…","antihypertensives and diuretics in combination","viral vaccines","sodium stibogluconate","ferrous sulfate","hepatitis a inactivated whole virus","dexrabeprazole","cough suppressants and expectorants combinations","coagulation factor viii","isoflurane","ergocalciferol","luliconazole","drugs used in diabetes","otological corticosteroids","antiarrhythmics class iii","other nervous system drugs","immunologicals for cattle: live and inactivated…","antivaricose therapy: other sclerosing agents","immunologicals for dog: live and inactivated…","other gynecologicals: anti-inflammatoryproducts…","antiprogestogens","streptomycins","combinations of sulfonamides and trimethoprim…","pranlukast","insulin glargine","suxamethonium","antiepileptics","muscle relaxants peripherally acting agents","drugs for acid related disorders","atenolol","zolmitriptan","ispaghula (psylla seeds)","enalapril","guaifenesin","pituitary and hypothalamic hormones and analogues","proguanil combinations","antineoplastic and immunomodulating agents","trihexyphenidyl","antihypertensives and diuretics in combination:…","aminocaproic acid","diosmectite","carbimazole","iron multivitamins and minerals","anesthetics","pneumococcus purified polysaccharides antigen…","antihistamines for systemic use","levodopa and decarboxylase inhibitor","citalopram","ketotifen","proteolytic enzymes","tamoxifen","terbutaline combinations","dextran","dequalinium","aripiprazole","eltrombopag","almotriptan","tolterodine","clidinium and psycholeptics","other veterinary immunologicals: other live…","voglibose","covid-19 vaccines","nortriptyline","diclofenac and antiinfectives","bendamustine","beta-lactam antibacterials penicillins","diltiazem","lamivudine, tenofovir disoproxil and doravirine","ocrelizumab","talazoparib","norepinephrine","azathioprine","phytomenadione","antimetabolites: purineanalogues","other mineral products","other diuretics - peripheral vasodilators","cod-liver oil ointments cicatrizants","other gynecologicals","viral vaccines: yellow fevervaccines","viral vaccines: encephalitisvaccines","other anticestodals anthelmintic agents","other decongestantsand other nasal preparations…","viral vaccines: rotavirusdiarrhea vaccines","antiadrenal preparations: anticorticosteroids","adrenergics inhalants: non-selective…","other diuretics: vasopressin antagonists","salbutamol and ipratropium bromide","combinations of antibacterials and other…","insulin degludec and insulin aspart","thiocolchicoside","caffeine","alclofenac","cetylpyridinium","buprenorphine combinations","penicillins combinations with other antibacterials","estradiol","meloxicam combinations","azelastine","rifapentine","esomeprazole amoxicillin and clarithromycin","nizatidine","zidovudine","olaparib","sodium chlorite","metronidazole combinations","triprolidine","antiprotozoals","lisinopril and diuretics","lincomycin","axitinib","baricitinib","viral vaccines: poliomyelitis vaccines","pertuzumab","lamivudine, tenofovir disoproxil and dolutegravir","dobutamine","carbetocin","dexlansoprazole","lorazepam","propranolol","other nutrients: amino acids including…","posterior pituitarylobe hormones: vasopressin and…","combinations of weak corticosteroids with…","voriconazole","zolimidine","artesunate and pyronaridine","streptokinase","diuretics and potassium-sparing agents in…","ixazomib","cetuximab","gamolenic acid combinations","tetanus toxoid combinations with diphtheria toxoid","vilanterol and umeclidinium bromide","fluphenazine","enzalutamide","tenofovir disoproxil and emtricitabine","ascorbic acid (vit c)","gemifloxacin","cefoperazone","mineral salts in combination","chloroquine","sorafenib","dabigatran etexilate","pyrazinamide","ketoprofen","ketobemidone","methylprednisolone","hypromellose","macrogol","corticosteroids for systemic use","dasatinib","diphenhydramine","silver sulfadiazine combinations","indacaterol and glycopyrronium bromide","propyphenazone combinations excl. psycholeptics","rifampicin and isoniazid","vitamins","brimonidine","protein hydrolysates","riboflavin (vit b2)","imeglimin","zincbandages","antibacterials for systemic use: short-acting…","other nutrients:…","zidovudine lamivudine and nevirapine","directly acting muscle relaxants: dantroleneand…","mineral supplements: fluoride","other drugs used in benign prostatic hypertrophy","expectorants excl. combinations with cough…","lansoprazole combinations","alendronic acid","sensory organs","natural phospholipids","doxylamine combinations","mifepristone","cefoperazone combinations","antiglaucoma preparations and miotics","cabergoline","choline salicylate","antimigraine preparations","etodolac","minocycline","gold (198au) colloidal","antifibrinolytics","amodiaquine","lysozyme","niraparib","desvenlafaxine","formoterol and glycopyrronium bromide","hydroxyethylstarch","dexketoprofen","cyanocobalamin combinations","calcium dobesilate","estrogens: plain synthetic estrogens","drugs for constipation: softeners emollients","immunostimulants: interferons","other combinations of moderately potent…","genito-urinary system: sulfonamides","bacterial vaccines: cholera vaccines","hormonal contraceptives: sequential p reparations…","other diagnostic agents: tests…","genito-urinary system: quinoline derivatives","other therapeutic products","electrolytes in combination with other drugs","lercanidipine","vitamin b1 plain and in combination with vitamin…","hydrochlorothiazide combinations","belimumab","cyanocobalamin","amphotericin b","medroxyprogesterone","clobetasol and antibiotics","canagliflozin","gadopentetic acid","finasteride","phentolamine","apremilast","rabies inactivated whole virus","multivitamins plain","cabozantinib","zinc compounds","flurbiprofen","dapivirine","hydroxychloroquine","phenazone","retinol (vit a)","neomycin","risperidone","lisinopril and amlodipine","vitamin b-complex with minerals","immunologicals for sheep: live and inactivated…","ectoparasiticides including scabicides: sulfur…","local anesthetics: estersofaminobenzoic acid","antibacterials for systemic use: trimethoprim and…","other surgical aids","other anti-parathyroid agents","attapulgite","dorzolamide","aprepitant","phloroglucinol","valganciclovir","propacetamol","liver therapy","darunavir","ampicillin combinations","dantrolene","fat emulsions","gadoteric acid","nivolumab","vitamin b-complex incl. combinations","typhoid purified polysaccharide antigen","afatinib","undecylenic acid combinations","demeclocycline","ciprofloxacina","clindamycin combinations","doxofylline","combinations of xanthines","proxyphylline and adrenergics","bacterial vaccines: pertussis vaccines","antimycobacterials: aminosalicylic acidand…","blood and related products","antithrombotic agents: vitamin k antagonists","hemodialytics and hemofiltrates","peritoneal dialytics: amino acids","other hormone antagonists and related agents","ganglion-blocking antiadrenergic agents:…","antiobesity preparations excluding diet products:…","other combinations of nutrients","genito-urinary system: combinations of imidazole…","other hormones and related agents","insulin degludec","ifosfamide","flibanserin","tirofiban","tretinoin combinations","third-generation cephalosporins","bicalutamide","genito urinary system and sex hormones","antiemetics and antinauseants","polymyxin b","benzyl benzoate","maraviroc","snake venom antiserum","risedronic acid","haloperidol","chlortetracycline","measles combinations with rubella live attenuated","other aminoglycosides","omeprazole amoxicillin and clarithromycin","desogestrel and ethinylestradiol","alginic acid","cycloserine","adrenergics and other drugs for obstructive…","anti-parkinson drugs: dopaminergicagents - dopa…","combinations of corticosteroids for systemic use","vasodilators used in cardiac diseases: quinolone…","alkylating agents: alkyl sulfonates","bacterial vaccines: diphtheria vaccines","phenacetin combinations excl. psycholeptics","zinc gluconate","multivitamins and iron","bromfenac","combinations of antineoplastic agents","drugs used inalcohol dependence","muscle relaxants centrally acting agents","cefditoren","emtricitabine tenofovir alafenamide and…","stannous fluoride","acetylsalicylic acid combinations excl.…","flavoxate","antiseptics and disinfectants: acridinederivatives","dinoprostone","calcium gluconate","cefaclor","blood and blood forming organs","ciprofloxacin and tinidazole","antispasmodics and anticholinergics in…","sodium bicarbonate","ispaghula combinations","corticosteroids for systemic use plain","finerenone","sotagliflozin","orphenadrine combinations","nefopam","oxytocics: combinations of ergot alkaloids and…","antimycobacterials: drugs for treatment of lepra","other anxiolytics","viral vaccines: varicellazostervaccines","other antipsoriatics for topical use","other chemotherapeutics for topical use","hormones and related agents: estrogens","benfotiamine","alprostadil","opium","chorionic gonadotrophin","prasugrel","spiramycin","vedolizumab","hydroxocobalamin","ferric ammonium citrate","cytotoxic antibiotics and related substances","diosmin combinations","abacavir","other antibacterials","tenofovir alafenamide","bcg vaccine","crizotinib","lurasidone","obeticholic acid","calcium (different salts in combination)","dienogest","methocarbamol combinations excl. psycholeptics","meclozine","other centrally acting muscle relaxants"
  ];
  final recentdrugs = [
    "Search for example: 'meloxicam'"

  ];

  String background1 = "assets/drugitudeBi1.png";
  String background2 = "assets/drugitudeBi2.png";
  String background3 = "assets/drugitudeBi3.png";
  String background4 = "assets/drugitudeBi4.png";
  String background5 = "assets/drugitudeBi5.png";
  String background6 = "assets/drugitudeBi6.png";
  String background7 = "assets/drugitudeBi7.png";
  String background8 = "assets/drugitudeBi8.png";
  String background9 = "assets/drugitudeBi9.png";
  String background10 = "assets/drugitudeBi10.png";
  String background11 = "assets/drugitudeBi11.png";
  String background12 = "assets/drugitudeBi12.png";
  String background13 = "assets/drugitudeBi13.png";
  String background14 = "assets/drugitudeBi14.png";
  String background15 = "assets/drugitudeBi15.png";
  String background16 = "assets/drugitudeBi16.png";
  String background17 = "assets/drugitudeBi17.png";
  String background18 = "assets/drugitudeBi18.png";
  String background19 = "assets/drugitudeBi19.png";
  String background20 = "assets/drugitudeBi20.png";
  String background21 = "assets/drugitudeBi21.png";
  String background22 = "assets/drugitudeBi22.png";
  String background23 = "assets/drugitudeBi23.png";
  String background24 = "assets/drugitudeBi24.png";
  String background25 = "assets/drugitudeBi25.png";
  String background26 = "assets/drugitudeBi26.png";
  String background27 = "assets/drugitudeBi27.png";
  String background28 = "assets/drugitudeBi28.png";
  String background29 = "assets/drugitudeBi29.png";
  String background30 = "assets/drugitudeBi30.png";
  String background31 = "assets/drugitudeBi31.png";
  String background32 = "assets/drugitudeBi32.png";
  String background33 = "assets/drugitudeBi33.png";
  String background34 = "assets/drugitudeBi34.png";
  String background35 = "assets/drugitudeBi35.png";
  String background36 = "assets/drugitudeBi36.png";

  late String image;

  String imageGet() {
    var minute = DateTime.now().minute;
    var hour = DateTime.now().hour;
    if ( minute < 0 ) {image = background2;}
    else if (minute < 2) {image = background3;}
    else if (minute < 4) {image = background4;}
    else if (minute < 6) {image = background5;}
    else if (minute < 8) {image = background6;}
    else if (minute < 10) {image = background7;}
    else if (minute < 12) {image = background8;}
    else if (minute < 14) {image = background9;}
    else if (minute < 16) {image = background10;}
    else if (minute < 18) {image = background11;}
    else if (minute < 20) {image = background12;}
    else if (minute < 22) {image = background13;}
    else if (minute < 24) {image = background14;}
    else if (minute < 26) {image = background15;}
    else if (minute < 28) {image = background16;}
    else if (minute < 30) {image = background17;}
    else if (minute < 32) {image = background18;}
    else if (minute < 34) {image = background19;}
    else if (minute < 36) {image = background20;}
    else if (minute < 38) {image = background21;}
    else if (minute < 40) {image = background22;}
    else if (minute < 42) {image = background23;}
    else if (minute < 44) {image = background24;}
    else if (minute < 46) {image = background25;}
    else if (minute < 48) {image = background26;}
    else if (minute < 50) {image = background27;}
    else if (minute < 52) {image = background28;}
    else if (minute < 54) {image = background29;}
    else if (minute < 56) {image = background30;}
    else if (minute < 58) {image = background31;}
    else if (minute < 60) {image = background32;}
    else if (hour < 02) {image = background33;}
    else if (hour < 06) {image = background34;}
    else if (hour < 08) {image = background35;}
    else if (hour < 09) {image = background36;}
    else {image = background9;}
    return image;
  }



  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            if(query.isEmpty){
              close(context, null);
            }
            query = "";
            showSuggestions(context);

          },
          icon: const Icon(Icons.close))
    ];
  }


  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () {
      Navigator.pop(context);
    },
        icon: const Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) =>
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageGet(),
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: FutureBuilder<List<Map<String,dynamic>>>(
            future: LocalDatabase.searchAllTherapueticAreaDrugsDB(query),
            builder: (context, snapshot) {
              var data = snapshot.data;
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                    child:
                    SizedBox(width: 192,
                      child: Column(
                        children: [
                          Expanded(child: RiveAnimation.asset('assets/drugiconLoading.riv')),
                          // Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
                        ],
                      ),
                    ));
              }
              // else if (snapshot.hasData) {}

              else if (snapshot.hasData && snapshot.data!.isEmpty){
                return  Center(
                  child: SizedBox(width: double.infinity,
                    child: Card(color: Colors.black,
                      child: Column(
                        children: [
                          const Card(color: Colors.black,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text("Oops...",
                                        style: TextStyle(color: Colors.white,fontSize: 25,fontStyle: FontStyle.italic, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline), textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text("We can't seem to find what you are looking for.",
                                        style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text("What could have possibly gone wrong?",
                                        style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                  ),
                                ],
                              )),
                          const Expanded(child: RiveAnimation.asset('assets/drugitudenodata.riv')),
                          const Card(color: Colors.black,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text("1. TYPO", style: TextStyle(color: Colors.white, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline),textAlign: TextAlign.center),
                                  ),
                                  Text("Happens to the best of us. Please Spell check the Inquiry in search box above and try again. If all is correct then...",
                                      style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                ],
                              )),


                          Card(color: Colors.black,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text("2. INQUIRY MISSING IN LIBRARY", style: TextStyle(color: Colors.white, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline),textAlign: TextAlign.center),
                                  ),
                                  const Column(
                                    children: [
                                      Text("Our Codex probably doesn't have the information you are looking for. ",
                                          style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                      Text("Please feel free to request for the Information you need through our Request Portal",
                                          style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                    ],
                                  ),
                                  SizedBox(width: 200, height: 30,
                                    child: ElevatedButton(
                                        onPressed: (){
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                const DrugRequestPage(),
                                              ));
                                        }, child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.mail_outline_rounded, size: 30, color: Colors.green,),
                                        Text('Request Drug', style: TextStyle(fontSize: 15, color: Colors.black))
                                      ],
                                    )),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                );
              }
              else if (snapshot.hasError){
                return Center(
                  child: SizedBox(width: double.infinity,
                    child: Card(color: Colors.black,
                      child: Column(
                        children: [
                          const Card(color: Colors.black,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text("Oops...",
                                        style: TextStyle(color: Colors.white,fontSize: 25,fontStyle: FontStyle.italic, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline), textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text("Seems like we have stumbled upon some critical error.",
                                        style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text("What could have possibly gone wrong?",
                                        style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                  ),
                                ],
                              )),
                          const Expanded(child: RiveAnimation.asset('assets/drugitudeError.riv')),
                          const Card(color: Colors.black,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text("1. NETWORK ERROR", style: TextStyle(color: Colors.white, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline),textAlign: TextAlign.center),
                                  ),
                                  Text("Please check your internet connection and try again",
                                      style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                ],
                              )),
                          Card(color: Colors.black,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text("2. AIRPLANE MODE IS ON", style: TextStyle(color: Colors.white, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline),textAlign: TextAlign.center),
                                  ),
                                  const Column(
                                    children: [
                                      Text("Please turn on your connection by turning Airplane Mode off. ",
                                          style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                      Text("If you have checked all above options and still find this error, please contact our Administrator via email: drugitude@ridcoltd.co.ke",
                                          style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                    ],
                                  ),
                                  SizedBox(width: 200, height: 30,
                                    child: ElevatedButton(
                                        onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.exit_to_app_sharp, size: 30, color: Colors.green,),
                                        Text('Close', style: TextStyle(fontSize: 15, color: Colors.black))
                                      ],
                                    )),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                );
              }
              return ListView.builder(
                itemCount: data?.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade900.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child:
                                Center(
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 25.0,
                                                bottom: 0,
                                                left: 8,
                                                right: 2),
                                            child: Text(
                                              'Category:',
                                              style: TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 12),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 25.0,
                                                bottom: 0,
                                                left: 8,
                                                right: 8),
                                            child: Text(
                                              '${data?[index]['category']}',
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 0.0,
                                            bottom: 0,
                                            left: 0,
                                            right: 8),
                                        child: Row(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding:
                                                  EdgeInsets.only(
                                                      top: 0.0,
                                                      bottom: 0,
                                                      left: 8,
                                                      right: 8),
                                                  child: Text(
                                                      'Manufacturer Verified',
                                                      style: TextStyle(
                                                          color: Colors.white54,
                                                          fontSize: 12)),
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      top: 0.0,
                                                      bottom: 0,
                                                      left: 0,
                                                      right: 0),
                                                  child: CircleAvatar(
                                                      radius: 5,
                                                      child: Image.asset(
                                                          "assets/${data?[index]['verifiedInfo']}.png")),
                                                ),
                                                IconButton(
                                                    onPressed: () => showDialog<String>(
                                                      context: context,
                                                      builder: (context) =>
                                                          SingleChildScrollView(physics: const ClampingScrollPhysics(),
                                                            child: AlertDialog(scrollable: true,
                                                              title: const Text(
                                                                  'Drug Info Source'),
                                                              content: Column(
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 0.0,
                                                                        bottom: 2,
                                                                        left: 0,
                                                                        right: 8),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                      children: [
                                                                        const Text(
                                                                            'Manufacturer Verified',
                                                                            style: TextStyle(
                                                                                color: Colors
                                                                                    .black,
                                                                                fontWeight:
                                                                                FontWeight
                                                                                    .bold,
                                                                                fontSize:
                                                                                12,
                                                                                decoration:
                                                                                TextDecoration
                                                                                    .underline)),
                                                                        Padding(
                                                                          padding:
                                                                          const EdgeInsets
                                                                              .only(
                                                                              top:
                                                                              0.0,
                                                                              bottom:
                                                                              2,
                                                                              left: 5,
                                                                              right:
                                                                              0),
                                                                          child: CircleAvatar(
                                                                              radius: 5,
                                                                              child: Image
                                                                                  .asset(
                                                                                  "assets/VERIFIED.png")),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                        top: 0.0,
                                                                        bottom: 10,
                                                                        left: 0,
                                                                        right: 8),
                                                                    child: Text(
                                                                        "This confirms that this drug's information has been sourced from, "
                                                                            "confirmed and verified by Drug Manufacturer's Medical Information (MI) department. "
                                                                            "MI departments are responsible for providing drug information to pharmacists, health care professionals and the public about the Manufacturer's products"),
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      const Text(
                                                                          'Manufacturer Verified',
                                                                          style: TextStyle(
                                                                              color: Colors
                                                                                  .black,
                                                                              fontWeight:
                                                                              FontWeight
                                                                                  .bold,
                                                                              fontSize:
                                                                              12,
                                                                              decoration:
                                                                              TextDecoration
                                                                                  .underline)),
                                                                      Padding(
                                                                        padding:
                                                                        const EdgeInsets
                                                                            .only(
                                                                            top: 0.0,
                                                                            bottom: 2,
                                                                            left: 5,
                                                                            right: 0),
                                                                        child: CircleAvatar(
                                                                            radius: 5,
                                                                            child: Image
                                                                                .asset(
                                                                                "assets/UNVERIFIED.png")),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  const Text(
                                                                      "This indicates that drug information is obtained from other sources and awaiting "
                                                                          "additional information and verification from Manufacturer. "
                                                                          "Information from other sources include drug literature, which is usually used to cover the basics of the drug,"
                                                                          " and their resources are referenced in additional information tile."),
                                                                  const Row(
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                            top: 8,
                                                                            bottom: 2,
                                                                            left: 0,
                                                                            right: 5),
                                                                        child: Text(
                                                                            'Please Note',
                                                                            style: TextStyle(
                                                                                color: Colors
                                                                                    .black,
                                                                                fontWeight:
                                                                                FontWeight
                                                                                    .bold,
                                                                                fontSize:
                                                                                12,
                                                                                decoration:
                                                                                TextDecoration
                                                                                    .underline)),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .security_sharp,
                                                                        size: 15,
                                                                        color:
                                                                        Colors.blue,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  const Text(
                                                                      "Unverified information is not detailed and we strongly advice practitioner or user to utilize in practice, only drug information verified by manufacturers"),
                                                                ],
                                                              ),
                                                              actions: <Widget>[
                                                                TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            context,
                                                                            'Cancel'),
                                                                    child: const Text('Ok'))
                                                              ],
                                                            ),
                                                          ),
                                                    ),
                                                    icon: const Icon(Icons.help_outline_outlined, size: 16, color: Colors.grey,)
                                                )
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                        child: Text('${data?[index]['medicineName']}',
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                        child: Text('Active Ingredient',
                                          style: TextStyle(color: Colors.white54, fontSize: 12),),
                                      ),
                                      // Text('(International Non Proprietary Name)', style: TextStyle(color: Colors.white54))
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                        child: Text('${data?[index]['inn_name']}',
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                                      ),
                                      Card(color: Colors.black.withOpacity(0.6),
                                        child: ExpansionTile(
                                          title: const Text('More..',
                                            style: TextStyle(color: Colors.white54, fontSize: 12),),
                                          children: [
                                            Image.network(
                                                data![index]['productImageUrl'],

                                                frameBuilder: (context, child, frame, wasSynchronouslyLoaded)
                                                {
                                                  return child;
                                                },
                                                loadingBuilder: (context, child, loadingProgress) {
                                                  if (loadingProgress == null)
                                                  {
                                                    return child;
                                                  } else {
                                                    return const Center( child:
                                                    SizedBox(width: 192, height: 192,
                                                      child: Column(
                                                        children: [
                                                          Expanded(
                                                            child: RiveAnimation.asset('assets/drugiconLoading.riv'),),
                                                          // Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
                                                        ],
                                                      ),
                                                    ),);
                                                  }
                                                }
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                              child: Text('Active Substance',
                                                overflow: TextOverflow.fade,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(color: Colors.white54, fontSize: 12),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                              child: Text(data[index]['activeSubstance'],
                                                overflow: TextOverflow.fade,
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(color: Colors.white, fontSize: 12),),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                              child: Text('Therapuetic Area',
                                                style: TextStyle(color: Colors.white54,fontSize: 12),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                              child: Text(data[index]['therapeuticArea'],
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold),),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                              child: Text('Pharmacotherpuetic Group',
                                                  style: TextStyle(color: Colors.white54, fontSize: 12)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                              child: Text(data[index]['humanPharmacotherapeuticGroup'],
                                                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                              child: Text('Approx Retail Price',
                                                  style: TextStyle(color: Colors.white54, fontSize: 12)),
                                            ),
                                            Text(data[index]['approxRetailPrice'],
                                                style: const TextStyle(
                                                    color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                            const Padding(
                                              padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                              child: Text('Marketing Authorization Company',
                                                style: TextStyle(color: Colors.white54, fontSize: 12),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                              child: Text(data[index]['marketingAuthorisationHolderorCompanyName'],
                                                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                              child: Text('Authorization Status',
                                                  style: TextStyle(color: Colors.white54, fontSize: 12)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                              child: Text(data[index]['authorisationStatus'],
                                                  style: const TextStyle(color: Colors.white, fontSize: 12)
                                              ),
                                            ),
                                            ExpansionTile(
                                              title: const Text('Indication and Use',
                                                style: TextStyle(color: Colors.white54, fontSize: 12),),
                                              children: [

                                                const Padding(
                                                  padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('Indication and Use',
                                                      style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                  child: Text(data[index]['conditionOrIndication'],
                                                    overflow: TextOverflow.fade,
                                                    textAlign: TextAlign.start,
                                                    style: const TextStyle(fontSize: 12,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold),),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('Contraindications, Warnings & Precautions',
                                                      style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                  child: Text(data[index]['contraindicationOrWarningsOrPrecautions'],
                                                    overflow: TextOverflow.fade,
                                                    textAlign: TextAlign.start,
                                                    style: const TextStyle(fontSize: 12,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold),),
                                                ),

                                                const Padding(
                                                  padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('Mechanism of Action',
                                                      style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                  child: Text(data[index]['moaPhamacology'],
                                                    overflow: TextOverflow.fade,
                                                    textAlign: TextAlign.start,
                                                    style: const TextStyle(fontSize: 12,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold),),
                                                ),

                                                const Padding(
                                                  padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('Excipients List',
                                                      style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                  child: Text(data[index]['excipientsList'],
                                                    overflow: TextOverflow.fade,
                                                    textAlign: TextAlign.start,
                                                    style: const TextStyle(fontSize: 12,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold),),
                                                ),


                                                ExpansionTile(
                                                  title: const Text('Additional Information',
                                                      style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                  children: [
                                                    const Padding(
                                                      padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                      child: Text('Additional information:',
                                                          style: TextStyle(color: Colors.white54, fontSize: 12)
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                      child: Text('ATC-Code: ${data[index]['atccode']}, url: ${data[index]['url']}',
                                                          overflow: TextOverflow.fade,
                                                          textAlign: TextAlign.start,
                                                          style: const TextStyle(fontSize: 12,
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.bold)
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                      //   child: Text('Active Substance: ${data?[index].activeSubstance}',
                                      //     overflow: TextOverflow.fade,
                                      //     textAlign: TextAlign.start,
                                      //     style: const TextStyle(color: Colors.white54, fontSize: 12),),
                                      // ),
                                      // const Padding(
                                      //   padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                      //   child: Text('Therapuetic Area',
                                      //     style: TextStyle(color: Colors.white54,fontSize: 12),),
                                      // ),
                                      // Padding(
                                      //   padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                      //   child: Text('${data?[index].therapeuticArea}',
                                      //     textAlign: TextAlign.start,
                                      //     style: const TextStyle(
                                      //         color: Colors.white,
                                      //         fontWeight: FontWeight.bold),),
                                      // ),
                                      // const Padding(
                                      //   padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                      //   child: Text('Pharmacotherpuetic Group',
                                      //       style: TextStyle(color: Colors.white54, fontSize: 12)),
                                      // ),
                                      // Padding(
                                      //   padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                      //   child: Text('${data?[index].humanPharmacotherapeuticGroup}',
                                      //       style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                      // ),
                                      //
                                      // const Padding(
                                      //   padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                      //   child: Text('Marketing Authorization Company',
                                      //     style: TextStyle(color: Colors.white54, fontSize: 12),),
                                      // ),
                                      // Padding(
                                      //   padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                      //   child: Text('${data?[index].marketingAuthorisationHolderorCompanyName}',
                                      //       style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                      //   ),
                                      // ),
                                      // const Padding(
                                      //   padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                      //   child: Text('Authorization Status',
                                      //       style: TextStyle(color: Colors.white54, fontSize: 12)),
                                      // ),
                                      // Padding(
                                      //   padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                      //   child: Text('${data?[index].authorisationStatus}',
                                      //       style: const TextStyle(color: Colors.white, fontSize: 12)
                                      //   ),
                                      // ),
                                      // const Padding(
                                      //   padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                      //   child: Text('Indication and Use',
                                      //       style: TextStyle(color: Colors.white54, fontSize: 12)),
                                      // ),
                                      // Padding(
                                      //   padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                      //   child: Text('${data?[index].conditionOrIndication}',
                                      //     overflow: TextOverflow.fade,
                                      //     textAlign: TextAlign.start,
                                      //     style: const TextStyle(fontSize: 12,
                                      //         color: Colors.white70,
                                      //         fontWeight: FontWeight.bold),),
                                      // ),
                                      // const Padding(
                                      //   padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                      //   child: Text('Additional information:',
                                      //       style: TextStyle(color: Colors.white54, fontSize: 12)
                                      //   ),
                                      // ),
                                      // Padding(
                                      //   padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                      //   child: Text('Product Number: ${data?[index].productNumber}; ATC-Code: ${data?[index].atccode}, Generic? ${data?[index].generic}, Biosimilar? ${data?[index].biosimilar}, Conditional Approval: ${data?[index].conditionalApproval}, Exceptional Circumstances: ${data?[index].exceptionalCircumstances}, Accelerated Assessment: ${data?[index].acceleratedAssessment}, Orphan Medicine: ${data?[index].orphanMedicine}, Marketing Authorization Date: ${data?[index].marketingAuthorisationDate}, Date of Opinion: ${data?[index].dateofOpinion}, Decision Date: ${data?[index].decisionDate}, First Published: ${data?[index].firstPublished}, Revision Date: ${data?[index].revisionDate}, Revision Number: ${data?[index].revisionNumber}, url: ${data?[index].url}',
                                      //       overflow: TextOverflow.fade,
                                      //       textAlign: TextAlign.start,
                                      //       style: const TextStyle(fontSize: 12,
                                      //           color: Colors.white70,
                                      //           fontWeight: FontWeight.bold)
                                      //   ),
                                      // ),


                                    ],
                                  ),

                                  // child: Padding(
                                  //     padding: EdgeInsets.only(top: 100.0),
                                  //     child: Center(
                                  //       child: Column(
                                  //           crossAxisAlignment: CrossAxisAlignment.center,
                                  //           children: [
                                  //             Text(
                                  //               'Drug of the day',
                                  //               style: TextStyle(
                                  //                   decorationThickness:
                                  //                       BouncingScrollSimulation
                                  //                           .maxSpringTransferVelocity,
                                  //                   fontSize: 20,
                                  //                   color: Colors.white38),
                                  //             ),
                                  //             Text('${data_DayDrug?[index].medicineName}',
                                  //                 style: TextStyle(
                                  //                     color: Colors.white,
                                  //                     fontSize: 70,
                                  //                     fontWeight: FontWeight.bold)),
                                  //             Column(
                                  //               children: [
                                  //                 Text(
                                  //                   'Active Ingredient',
                                  //                   style: TextStyle(color: Colors.white54),
                                  //                 ),
                                  //                 // Text('(International Non Proprietary Name)', style: TextStyle(color: Colors.white54))
                                  //               ],
                                  //             ),
                                  //             Padding(
                                  //               padding: EdgeInsets.only(bottom: 8.0),
                                  //               child: Text(
                                  //                 'Melatonin',
                                  //                 style: TextStyle(
                                  //                     color: Colors.white,
                                  //                     fontSize: 20,
                                  //                     fontWeight: FontWeight.bold),
                                  //               ),
                                  //             ),
                                  //             Text(
                                  //               'Therapuetic Area',
                                  //               style: TextStyle(color: Colors.white54),
                                  //             ),
                                  //             Text(
                                  //               'Sleep Initiation and Maintenance Disorders;  Autistic Disorder',
                                  //               style: TextStyle(
                                  //                   color: Colors.white,
                                  //                   fontWeight: FontWeight.bold),
                                  //             ),
                                  //             Padding(
                                  //               padding: EdgeInsets.only(top: 10.0),
                                  //               child: Column(
                                  //                 children: [
                                  //                   Text('Pharmacotherpuetic Group',
                                  //                       style: TextStyle(
                                  //                           color: Colors.white54)),
                                  //                   Text('Psycholeptics',
                                  //                       style: TextStyle(
                                  //                           color: Colors.white,
                                  //                           fontWeight: FontWeight.bold)),
                                  //                 ],
                                  //               ),
                                  //             ),
                                  //             Padding(
                                  //               padding: EdgeInsets.only(top: 5.0),
                                  //               child: Column(
                                  //                 children: [
                                  //                   Text('Authorization Status',
                                  //                       style: TextStyle(
                                  //                           color: Colors.white54)),
                                  //                   Text('Authorized',
                                  //                       style: TextStyle(
                                  //                           color: Colors.white,
                                  //                           fontWeight: FontWeight.bold)),
                                  //                 ],
                                  //               ),
                                  //             ),
                                  //             Padding(
                                  //               padding: EdgeInsets.only(top: 10.0),
                                  //               child: Text('Indication and Use',
                                  //                   style:
                                  //                       TextStyle(color: Colors.white54)),
                                  //             ),
                                  //             Expanded(
                                  //               child: Padding(
                                  //                 padding: EdgeInsets.only(
                                  //                     left: 8.0, right: 8.0, bottom: 1.0),
                                  //                 child: Text(
                                  //                   'Slenyto is indicated for the treatment of insomnia in children and adolescents aged 2-18 with Autism Spectrum Disorder (ASD) and / or Smith-Magenis syndrome, where sleep hygiene measures have been insufficient.',
                                  //                   overflow: TextOverflow.fade,
                                  //                   textAlign: TextAlign.center,
                                  //                   style: TextStyle(
                                  //                       color: Colors.white,
                                  //                       fontWeight: FontWeight.bold),
                                  //                 ),
                                  //               ),
                                  //             ),
                                  //           ]),
                                  //     ),
                                  //               ),
                                ),),
                            )
                          ]
                      )
                  );
                },
              );
            }),
      );

  // Widget buildResults(BuildContext context)
  // {
  //   return Container(
  //     child: FutureBuilder<List<DrugList>>(
  //         future: _drugList.getDrugList(query),
  //         builder: (context, snapshot) {
  //           var data = snapshot.data;
  //           if (!snapshot.hasData) {
  //             return Center(
  //               child: CircularProgressIndicator(),
  //             );
  //           }
  //           return ListView.builder(
  //             itemCount: data?.length,
  //             itemBuilder: (context, index) {
  //               return Card(
  //                 child: ListTile(
  //                     title: Row(
  //                       children: [
  //                         Container(
  //                           height: 80,
  //                           width: 80,
  //                           decoration: BoxDecoration(
  //                             color: Colors.black,
  //                             borderRadius: BorderRadius.circular(10),
  //                           ),
  //                           child: Center(
  //                             child: Text(
  //                               '${data?[index].category.name}',
  //                               style: TextStyle(
  //                                   color: Colors.white,
  //                                   fontWeight: FontWeight.bold),
  //                             ),
  //                           ),
  //                         ),
  //                         SizedBox(width: 10),
  //                         Column(
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //                             Row(
  //                               mainAxisAlignment: MainAxisAlignment.start,
  //                               children: [
  //                                 Text(
  //                                   '${data?[index].medicineName}',
  //                                   style: TextStyle(color: Colors.black),
  //                                 ),
  //                               ],
  //                             ),
  //                             Row(
  //                               mainAxisAlignment: MainAxisAlignment.start,
  //                               children: [
  //                                 Text('${data?[index].innName}',
  //                                     style: TextStyle(color: Colors.black)),
  //                               ],
  //                             ),
  //                           ],
  //                         )
  //                       ],
  //                     )),
  //               );
  //             },
  //           );
  //         }),
  //   );
  // }

  @override
  Widget buildSuggestions(BuildContext context)
  //     FutureBuilder<List<DrugList>>(
  // future: _drugList.getDrugList(query),
  // builder: (context, snapshot) {
  //   switch (snapshot.connectionState) {
  //     case ConnectionState.waiting:
  //       return Center(
  //           child: CircularProgressIndicator());
  //     default:
  //     return buildSuggestionSuccess(_drugList as List<String>);
  //   }
  // }
  // );
  {
    final suggestions = query.isEmpty
        ? recentdrugs
        : drugstosearch.where((drugtosearch) {
      final drugtosearchLower = drugtosearch.toLowerCase();
      final queryLower = query.toLowerCase();

      return drugtosearchLower.startsWith(queryLower);
    }).toList();

    return buildSuggestionSuccess(suggestions);
  }
  Widget buildSuggestionSuccess(List<String> suggestions) => ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        final queryText = suggestion.substring(0, query.length);
        final remainingText = suggestion.substring(query.length);

        return ListTile(
          onTap: () {
            query = suggestion;

            showResults(context);
            // close(context, suggestion);

            // Navigator.push(context, MaterialPageRoute(builder: (context) => (exampleResultsPage(suggestion)),),
            // );


          },
          leading: const Icon(Icons.medication_outlined),
          // title: Text(suggestion),
          title: RichText(
            text: TextSpan(text: queryText,
                style: const TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold, fontSize: 18,
                ),

                children: [
                  TextSpan(
                    text: remainingText,
                    style: const TextStyle(color: Colors.grey,
                      fontWeight: FontWeight.bold, fontSize: 18,
                    ),

                  )
                ]
            ),
          ),
        );
      }
  );

}



