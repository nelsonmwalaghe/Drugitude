
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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

class DictionarySearch extends SearchDelegate {
  final FetchDrug _drugList = FetchDrug();
  final drugstosearch = [
    "13C-urea","13C-urea","13C-urea","5-aminolevulinic acid hydrochloride","5-aminolevulinic acid hydrochloride","abacavir","abacavir (as sulfate) / lamivudine / zidovudine","abacavir sulfate / dolutegravir sodium / lamivudine","abacavir, lamivudine","abaloparatide","abaloparatide","abatacept","abemaciclib","abiraterone","abiraterone","abiraterone acetate","abiraterone acetate","abrocitinib","acalabrutinib","aclidinium bromide","aclidinium bromide","aclidinium bromide, formoterol","aclidinium, formoterol fumarate dihydrate","adalimumab","adalimumab","adalimumab","adalimumab","adalimumab","adalimumab","adalimumab","adalimumab","adalimumab","adalimumab","adalimumab","adalimumab","adalimumab","adalimumab","adalimumab","adalimumab","adefovir dipivoxil","adjuvanted bluetongue virus vaccine","adjuvanted inactivated vaccine against avian influenza virus type A, subtype H5","adjuvanted inactivated vaccine against avian influenza virus type A, subtype H5","adjuvanted inactivated vaccine against avian influenza virus type A, subtype H7","adjuvanted inactivated vaccine against Ornithobacterium rhinotracheale serotype A","adjuvanted inactivated vaccine against porcine circovirus","adjuvanted inactivated vaccine against porcine circovirus type 2","adjuvanted inactivated vaccine against porcine circovirus type 2 in piglets","adjuvanted inactivated vaccine for cattle against Staphylococcus aureus, coliforms and coagulase-negative staphylococci","Adjuvanted vaccine against classical swine fever","Adjuvanted vaccine against classical swine fever","adjuvanted vaccine against necrotic enteritis of chickens due to Clostridium perfringens","adjuvanted vaccine against progressive atrophic rhinitis in piglets","Adjuvanted vaccine against tetanus","afamelanotide","afatinib","aflibercept","aflibercept","aflibercept","afoxolaner","afoxolaner","afoxolaner, milbemycin oxime","agalsidase alfa","agalsidase beta","Agomelatine","Agomelatine","Agomelatine","Agomelatine","albiglutide","albutrepenonacog alfa","alectinib","alemtuzumab","alemtuzumab","alendronic acid, colecalciferol","alendronic acid, colecalciferol","alendronic acid, colecalciferol","alglucosidase alfa","alipogene tiparvovec","alirocumab","aliskiren","aliskiren","aliskiren","aliskiren","aliskiren","aliskiren hemifumarate, amlodipine besilate","aliskiren, amlodipine, hydrochlorothiazide","aliskiren, hydrochlorothiazide","aliskiren, hydrochlorothiazide","aliskiren, hydrochlorothiazide","alitretinoin","allogeneic equine adipose-derived mesenchymal stem cells","allogeneic T cells genetically modified with a retroviral vector encoding for a truncated form of the human low affinity nerve growth factor receptor (ΔLNGFR) and the herpes simplex I virus thymidine kinase (HSV-TK Mut2)","allopurinol, lesinurad","alogliptin benzoate","alogliptin, metformin","alogliptin, pioglitazone","alpelisib","alpha1-proteinase inhibitor (human)","ambrisentan","ambrisentan","amifampridine","amifampridine","amikacin","amivantamab","amlodipine","amlodipine besilate, valsartan, hydrochlorothiazide","amlodipine besilate, valsartan, hydrochlorothiazide","amlodipine, valsartan","amlodipine, valsartan","amlodipine, valsartan","amlodipine, valsartan","amlodipine, valsartan","amlodipine, valsartan, hydrochlorothiazide","amlodipine, valsartan, hydrochlorothiazide","amprenavir","anagrelide","anagrelide","anakinra","anamorelin","andexanet alfa","angiotensin II","anidulafungin","anifrolumab","anti-melanoma mab fragments","antithrombin alfa","apalutamide","apixaban","apixaban","apomorphine","apomorphine","apomorphine","apremilast","aprepitant","arcitumomab","arginine, lysine","aripiprazole","aripiprazole","aripiprazole","aripiprazole","aripiprazole","aripiprazole","arsenic trioxide","arsenic trioxide","arsenic trioxide","arsenic trioxide","artesunate","asciminib","asenapine","asfotase alfa","asparaginase","ataluren","atazanavir","atazanavir","atazanavir sulfate","atazanavir, cobicistat","atezolizumab","atogepant","atosiban","atosiban","Autologous CD34+ cells encoding ARSA gene","autologous CD34+ enriched cell fraction that contains CD34+ cells transduced with retroviral vector that encodes for the human ADA cDNA sequence","autologous peripheral-blood mononuclear cells activated with prostatic acid phosphatase granulocyte-macrophage colony-stimulating factor (sipuleucel-T)","avacopan","Avalglucosidase alfa","avanafil","avapritinib","avatrombopag","avelumab","avian infectious bronchitis virus strain D388","avian infectious bursal disease vaccine (live)","avian infectious laryngotracheitis and Marek’s disease vaccine (live)","axicabtagene ciloleucel","axitinib","azacitidine","azacitidine","azacitidine","azacitidine","azacitidine","azacitidine","azagly-nafarelin","azathioprine","azilsartan medoxomil","azilsartan medoxomil","aztreonam","baloxavir marboxil","baricitinib","basiliximab","bazedoxifene","becaplermin","becaplermin","beclometasone, formoterol","beclometasone, formoterol, glycopyrronium bromide","beclometasone, formoterol, glycopyrronium bromide","bedaquiline","bedinvetmab","belantamab mafodotin","belatacept","belimumab","bempedoic acid","bempedoic acid, ezetimibe","benazepril hydrochloride, spironolactone","benazepril, pimobendan","benralizumab","berotralstat","besilesomab","betaine anhydrous","betaine anhydrous","betibeglogene autotemcel","betrixaban","bevacizumab","bevacizumab","bevacizumab","bevacizumab","bevacizumab","bevacizumab","bevacizumab","bevacizumab","bevacizumab","bevacizumab","bevacizumab","bevacizumab","bexarotene","bezlotoxumab","bictegravir, emtricitabine, tenofovir alafenamide","bimatoprost","bimatoprost, timolol","bimekizumab","binimetinib","birch bark extract","birch bark extract","bivalirudin","blinatumomab","bluetongue virus serotype 8","Bluetongue virus vaccine (inactivated) (multistrain: 1 strain out of a set of 3)","Bluetongue virus vaccine (inactivated) (multistrain: 1-2 strains out of a set of 3)","bluetongue virus vaccine (inactivated) serotype 8","bluetongue-virus serotype-1 antigen","boceprevir","bortezomib","bortezomib","bortezomib","bortezomib","bortezomib","bosentan","bosentan monohydrate","bosutinib","botulinum toxin type a","botulinum toxin type B","bovine respiratory syncytial virus vaccine (live)","bovine viral diarrhoea vaccine (modified live)","brentuximab vedotin","brexpiprazole","Brexucabtagene autoleucel","brigatinib","brimonidine","brinzolamide","brinzolamide, brimonidine tartrate","brinzolamide, timolol","brivaracetam","brodalumab","brolucizumab","bromfenac","budesonide","budesonide","budesonide, formoterol","budesonide, formoterol","budesonide, formoterol","budesonide, formoterol","budesonide, formoterol fumarate dihydrate","budesonide, formoterol fumarate dihydrate","budesonide, salmeterol","bulevirtide","bupivacaine","bupivacaine, meloxicam","buprenorphine","buprenorphine","buprenorphine, naloxone","buprenorphine, naloxone","burosumab","busulfan","busulfan","C1 inhibitor (human)","cabazitaxel","cabazitaxel","cabazitaxel","cabergoline","cabotegravir","cabotegravir","cabozantinib","cabozantinib","caffeine","caffeine citrate","canagliflozin","canagliflozin, metformin","canakinumab","cangrelor","Canine distemper vaccine (live, attenuated) and canine parvovirus vaccine (live, recombinant)","canine distemper virus, canine adenovirus, canine parvovirus, canine parainfluenza virus","Canine herpes vaccine (inactivated subunit)","Canine leishmaniasis vaccine (recombinant protein)","Canine leptospirosis vaccine (inactivated)","Canine leptospirosis vaccine (inactivated)","canine parainfluenza virus","canine parainfluenza virus and Leptospira","canine parainfluenza virus, leptospira and rabies virus","cannabidiol","capecitabine","capecitabine","capecitabine","capecitabine","capecitabine","capecitabine","caplacizumab","capmatinib","capsaicin","carfilzomib","carglumic acid","carglumic acid","cariprazine","carmustine","casirivimab, imdevimab","caspofungin","caspofungin","catridecacog","catumaxomab","cedazuridine, decitabine","cefiderocol","cefovecin","ceftaroline fosamil","ceftazidime, avibactam","ceftiofur","ceftobiprole","ceftolozane, tazobactam","celecoxib","cemiplimab","cenegermin","cenobamate","ceritinib","cerliponase alfa","certolizumab pegol","certolizumab pegol","cetrorelix","cetuximab","characterised viable autologous cartilage cells expanded ex vivo expressing specific marker proteins","chenodeoxycholic acid","chlormethine","cholera vaccine (inactivated, oral)","cholera vaccine, oral, live","cholic acid","cholic acid","chondrogenic induced equine allogeneic peripheral blood-derived mesenchymal stem cells","choriogonadotropin alfa","ciclesonide","ciclosporin","ciclosporin","cidofovir","ciltacabtagene autoleucel","cimicoxib","cinacalcet","cinacalcet","cinacalcet","cinacalcet","cipaglucosidase alfa","cladribine","cladribine","classical swine fever vaccine (live recombinant)","clofarabine","clofarabine","Clomipramine","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel","clopidogrel, acetylsalicylic acid","clopidogrel, acetylsalicylic acid","clopidogrel, acetylsalicylic acid","clopidogrel, acetylsalicylic acid","clostridioides difficile, clostridium perfringens vaccine, inactivated","cobicistat","cobimetinib","Coccidiosis vaccine live for chickens","colesevelam","colestilan","colistimethate sodium","collagenase Clostridium histolyticum","concentrate of proteolytic enzymes enriched in bromelain","conestat alfa","copper (64Cu) chloride","corifollitropin alfa","COVID-19 mRNA vaccine, elasomeran, elasomeran / imelasomeran, elasomeran / davesomeran, andusomeran","COVID-19 vaccine (Ad26.COV2-S [recombinant])","COVID-19 Vaccine (ChAdOx1-S [recombinant])","COVID-19 vaccine (inactivated, adjuvanted, adsorbed)","COVID-19 Vaccine (recombinant, adjuvanted)","COVID-19 Vaccine (recombinant, adjuvanted)","COVID-19 Vaccine (recombinant, adjuvanted)","crisaborole","crisantaspase","crizanlizumab","crizotinib","cytarabine","dabigatran etexilate","dabigatran etexilate","dabrafenib","daclatasvir","daclizumab","daclizumab","dacomitinib","dalbavancin","damoctocog alfa pegol","dapagliflozin","dapagliflozin","dapagliflozin","dapagliflozin, metformin","dapagliflozin, metformin","daptomycin","daptomycin","daratumumab","darbepoetin alfa","darbepoetin alfa","daridorexant","darifenacin hydrobromide","darolutamide","darunavir","darunavir","darunavir","darunavir","darunavir, cobicistat","darunavir, cobicistat, emtricitabine, tenofovir alafenamide","darvadstrocel","dasabuvir","dasatinib (anhydrous)","dasatinib (anhydrous)","dasatinib (anhydrous)","dasiprotimut-t","daunorubicin, cytarabine","decitabine","defatted powder of Arachis hypogaea L., semen (peanuts)","deferasirox","deferasirox","deferasirox","deferiprone","deferiprone","defibrotide","degarelix","degarelix","delafloxacin","delamanid","dengue tetravalent vaccine (live, attenuated)","dengue tetravalent vaccine (live, attenuated)","denosumab","denosumab","depreotide","desirudin","desloratadine","desloratadine","desloratadine","desloratadine","desloratadine","desloratadine","desloratadine","desloratadine","desloratadine","desloratadine, pseudoephedrine","deslorelin acetate","desoxycortone","deucravacitinib","dexamethasone","dexamethasone","dexmedetomidine","dexmedetomidine","dexmedetomidine","dexmedetomidine","dexmedetomidine","dexmedetomidine","dexrazoxane","dextromethorphan hydrobromide, quinidine sulfate","dibotermin alfa","dibotermin alfa","difelikefalin","difloxacin","difloxacin","dimethyl fumarate","dimethyl fumarate","dimethyl fumarate","dimethyl fumarate","dimethyl fumarate","dimethyl fumarate","dimethyl fumarate","dinotefuran, permethrin, and pyriproxyfen","dinutuximab","dinutuximab beta","diphtheria (D), tetanus (T), pertussis (acellular, component) (Pa), hepatitis B (rDNA) (HBV), poliomyelitis (inactivated) (IPV) and Haemophilus influenzae type-b (Hib) conjugate vaccine (adsorbed)","diphtheria (D), tetanus (T), pertussis (acellular, component) (Pa), hepatitis B (rDNA) (HBV), poliomyelitis (inactivated) (IPV) vaccine (adsorbed)","diphtheria (D), tetanus (T), pertussis (whole cell) (Pw) and hepatitis B (rDNA) (HBV) vaccine (adsorbed)","diphtheria, tetanus and hepatitis B (rDNA) vaccine (adsorbed)","diphtheria, tetanus and pertussis (acellular, component) vaccine (adsorbed)","diphtheria, tetanus, acellular pertussis and hepatitis B recombinant, adsorbed vaccine","diphtheria, tetanus, acellular pertussis, inactivated poliomyelitis, hepatitis B (recombinant) and Haemophilus influenzae type b conjugate vaccine, adjuvanted","diphtheria, tetanus, pertussis (acellular, component), hepatitis B (rDNA), poliomyelitis (inactivated) and Haemophilus influenzae type b conjugate vaccine (adsorbed)","diphtheria, tetanus, pertussis (acellular, component), hepatitis B (rDNA), poliomyelitis (inactivated) and Haemophilus influenzae type b conjugate vaccine (adsorbed)","diphtheria, tetanus, pertussis (acellular, component), hepatitis B (rDNA), poliomyelitis (inactivated) and Haemophilus type b conjugate vaccine (adsorbed)","diphtheria, tetanus, pertussis (whole cell), hepatitis B (rDNA) and Haemophilus influenzae type B conjugate vaccine (absorbed)","dirlotapide","diroximel fumarate","docetaxel","docetaxel","docetaxel","docetaxel","docetaxel","docetaxel","docetaxel","docetaxel","docetaxel","dodecafluoropentane","dofetilide","dolutegravir","dolutegravir, lamivudine","dolutegravir, rilpivirine","doravirine","doravirine, lamivudine, tenofovir disoproxil","doripenem","dostarlimab","doxorubicin","doxorubicin","doxorubicin","doxorubicin","doxorubicin hydrochloride","Doxycycline","dronedarone","drotrecogin alfa (activated)","dulaglutide","duloxetine","duloxetine","duloxetine","duloxetine","duloxetine","duloxetine","duloxetine","duloxetine","dupilumab","durvalumab","duvelisib","E. coli verotoxoid vaccine (inactivated recombinant)","ebola vaccine (Ad26.ZEBOV-GP [recombinant])","Ebola vaccine (MVA-BN-Filo [recombinant])","Ebola Zaire Vaccine (rVSV∆G-ZEBOV-GP, live)","eculizumab","eculizumab","edotreotide","edoxaban","edoxaban","efalizumab","efavirenz","efavirenz","efavirenz","efavirenz, emtricitabine, tenofovir disoproxil","efavirenz, emtricitabine, tenofovir disoproxil","efavirenz, emtricitabine, tenofovir disoproxil","efavirenz, emtricitabine, tenofovir disoproxil","efgartigimod alfa","eflornithine","efmoroctocog alfa","eftrenonacog alfa","efungumab","eimeria acervulina, strain 003, eimeria brunetti, strain 034, eimeria maxima, strain 013, eimeria necatrix, strain 033, eimeria tenella, strain 004","elacestrant","eladocagene exuparvovec","elbasvir, grazoprevir","eliglustat","elivaldogene autotemcel","elosulfase alfa","elotuzumab","eltrombopag","eluxadoline","elvitegravir","elvitegravir, cobicistat, emtricitabine, tenofovir alafenamide","elvitegravir, cobicistat, emtricitabine, tenofovir disoproxil","emapalumab","emedastine","emicizumab","emodepside, praziquantel","emodepside, praziquantel, tigolaner","emodepside, toltrazuril","empagliflozin","empagliflozin, linagliptin","empagliflozin, metformin","emtricitabine","emtricitabine, rilpivirine, tenofovir alafenamide","emtricitabine, rilpivirine, tenofovir disoproxil","emtricitabine, tenofovir alafenamide","emtricitabine, tenofovir disoproxil","emtricitabine, tenofovir disoproxil","emtricitabine, tenofovir disoproxil","emtricitabine, tenofovir disoproxil","emtricitabine, tenofovir disoproxil","Enalapril maleate","enclomifene","encorafenib","enflicoxib","enfortumab vedotin","enfuvirtide","enoxaparin sodium","enoxaparin sodium","entacapone","entacapone","entacapone","entacapone","entecavir","entecavir","entecavir","entrectinib","enzalutamide","epcoritamab","epoetin alfa","epoetin alfa","epoetin alfa","epoetin beta","epoetin delta","epoetin theta","epoetin theta","epoetin zeta","epoetin zeta","eprinomectin","eprinomectin, fipronil, praziquantel, (S)-methoprene","eptacog alfa (activated)","Eptacog beta (activated)","eptifibatide","eptifibatide","eptinezumab","eptotermin alfa","eptotermin alfa","equine influenza (live recombinant) and tetanus vaccine","Equine influenza vaccine (live recombinant)","equine umbilical cord mesenchymal stem cells","eravacycline","erenumab","eribulin","erlotinib","ertapenem","ertapenem","ertugliflozin","ertugliflozin, metformin hydrochloride","ertugliflozin, sitagliptin","Erysipelothrix rhusiopathiae","esafoxolaner, eprinomectin, praziquantel","Escherichia coli aroA gene deleted, type O78, strain EC34195 (live)","Escherichia coli, type 08, strain K87 (live)","esketamine","eslicarbazepine acetate","eslicarbazepine acetate","esomeprazole","estetrol, drospirenone","estetrol, drospirenone","Estriol","etanercept","etanercept","etanercept","etanercept","etanercept","etelcalcetide","eteplirsen","etirinotecan pegol","etranacogene dezaparvovec","etravirine","everolimus","everolimus","evinacumab","evolocumab","ex vivo expanded autologous human corneal epithelial cells containing stem cells","exenatide","exenatide","fampridine","fampridine","faricimab","febuxostat","febuxostat","febuxostat","fedratinib","feline calicivirosis, feline viral rhinotrachieitis, feline infectious enteritis (feline panleucopenia) vaccine (live), feline leukaemia vaccine (inactivated)","feline interleukin-2 recombinant canarypox virus (vCP1338 virus)","Feline leukaemia vaccine (inactivated)","Feline leukaemia vaccine (inactivated)","fenbendazole","fenfluramine","fenofibrate, pravastatin","fenofibrate, simvastatin","fentanyl","fentanyl","fentanyl","fentanyl","fentanyl","fentanyl","ferric citrate coordination complex","ferric maltol","ferumoxytol","fesoterodine","fidaxomicin","filgotinib","filgrastim","filgrastim","filgrastim","filgrastim","filgrastim","filgrastim","filgrastim","filgrastim","filgrastim","finerenone","fingolimod","fingolimod","fingolimod","fipronil / amitraz / (S)-methoprene","firocoxib","firocoxib","florbetaben (18F)","florbetapir (18F)","florfenicol, meloxicam","florfenicol, terbinafine hydrochloride, mometasone furoate","fluciclovine (18F)","fluoxetine","fluralaner","fluralaner","fluralaner, moxidectin","flutemetamol (18F)","fluticasone furoate","fluticasone furoate","fluticasone furoate, umeclidinium, vilanterol","fluticasone furoate, umeclidinium, vilanterol","fluticasone furoate, umeclidinium, vilanterol","fluticasone furoate, vilanterol","fluticasone furoate, vilanterol","follitropin alfa","follitropin alfa","follitropin alfa","follitropin alfa, lutropin alfa","follitropin beta","follitropin beta","follitropin delta","fomivirsen","fondaparinux sodium","fondaparinux sodium","formoterol fumarate dihydrate, glycopyrronium, budesonide","formoterol, glycopyrronium bromide, budesonide","fosamprenavir","fosaprepitant","fosdenopterin","fostamatinib","fostemsavir","Fowlpox and avian infectious laryngotracheitis vaccine (live, recombinant)","fowlpox, avian infectious laryngotracheitis vaccine (live, recombinant) and avian encephalomyelitis vaccine (live)","fremanezumab","frunevetmab","fulvestrant","fulvestrant","futibatinib","gadofosveset trisodium","gadoversetamide","galcanezumab","galsulfase","gamithromycin","ganaxolone","ganciclovir","ganirelix","ganirelix","gefapixant","gefitinib","gefitinib","gemtuzumab ozogamicin","gemtuzumab ozogamicin","genetically modified Shiga-toxin-2e antigen","gilteritinib","givosiran","glasdegib","glecaprevir, pibrentasvir","glibenclamide","glofitamab","glucagon","glucagon","glucarpidase","glycerol phenylbutyrate","glycopyrronium","glycopyrronium bromide","glycopyrronium bromide","glycopyrronium bromide","glycopyrronium, formoterol fumarate dihydrate","golimumab","Gonadotropin releasing factor (GnRF) analogue-protein conjugate","gozetotide","granisetron","grapiprant","guanfacine","guselkumab","Haemoglobin glutamer-200 (bovine)","haemophilus B conjugate (meningococcal protein conjugate) and hepatitis B (recombinant) vaccine","halofuginone","halofuginone","halofuginone","hepatitis A (inactivated) and hepatitis B (rDNA) (HAB) vaccine (adsorbed)","hepatitis A (inactivated) and hepatitis B (rDNA) (HAB) vaccine (adsorbed)","hepatitis A (inactivated) and hepatitis B (rDNA) (HAB) vaccine (adsorbed)","hepatitis B (rDNA) vaccine (adjuvanted, adsorbed)","hepatitis B surface antigen","hepatitis B surface antigen","hepatitis B surface antigens recombinant (S, pre-S1, pre-S2) adsorbed on aluminium hydroxide [produced on genetically engineered murine (C127I) cells]","hepatitis B vaccine (recombinant DNA)","herpes zoster vaccine (recombinant, adjuvanted)","histamine dihydrochloride","human coagulation factor IX","human coagulation factor VIII / human von willebrand factor","human coagulation factor X","human fibrinogen, human thrombin","human fibrinogen, human thrombin","human fibrinogen, human thrombin","human fibrinogen, human thrombin","human fibrinogen, human thrombin","human hepatitis B immunoglobulin","human hepatitis B immunoglobulin","human heterologous liver cells","human IgG1 monoclonal antibody specific for human interleukin-1 alpha","human insulin (rDNA)","human normal immunoglobulin","human normal immunoglobulin","human normal immunoglobulin","human normal immunoglobulin (IVIg)","human normal immunoglobulin (SCIg)","human papillomavirus 9-valent vaccine (recombinant, adsorbed)","human papillomavirus vaccine [types 16, 18] (recombinant, adjuvanted, adsorbed)","human papillomavirus vaccine [types 6, 11, 16, 18] (recombinant, adsorbed)","human papillomavirus vaccine [types 6, 11, 16, 18] (recombinant, adsorbed)","human protein C","hydrocortisone","hydrocortisone","hydrocortisone","hydrocortisone aceponate","hydrocortisone aceponate","hydrocortisone aceponate, miconazole nitrate, gentamicin sulfate","hydroxocobalamin","hydroxycarbamide","hydroxycarbamide","ibafloxacin","ibalizumab","ibandronic acid","ibandronic acid","ibandronic acid","ibandronic acid","ibandronic acid","ibandronic acid","ibandronic acid","ibandronic acid","ibritumomab tiuxetan","ibrutinib","ibuprofen","icatibant","icatibant","icosapent ethyl","idarucizumab","idebenone","idebenone","idecabtagene vicleucel","idelalisib","idursulfase","igovomab","iloperidone","iloprost","imatinib","imatinib","imatinib","imatinib","imatinib","imatinib","imatinib","imepitoin","imidacloprid, moxidectin","imidacloprid, moxidectin","imiglucerase","imipenem, cilastatin, relebactam","imiquimod","imiquimod","imiquimod","imlifidase","inactivated adjuvanted vaccine against bluetongue virus serotype 2 and 4 infections","inactivated bluetongue serotype 1+8 vaccine","inactivated bluetongue virus, serotype 1","inactivated bluetongue virus, serotype 8","inactivated bluetongue virus, serotype 8","inactivated bluetongue virus, serotype-1","inactivated bluetongue virus, serotypes 1 and 8","inactivated chimaeric flavivirus strain YF-WN","inactivated Coxiella burnetii vaccine","inactivated feline panleukopenia virus, calicivirus, rhinotracheitis virus, leukaemia virus and Chlamydophila felis","inactivated influenza-A virus, swine","inactivated influenza-A virus, swine","inactivated porcine circovirus vaccine","Inactivated Schmallenberg virus, strain BH80/11-4","inactivated vaccine against bluetongue virus serotypes 1 and 8","inactivated vaccine against foot-and-mouth disease","inactivated vaccine to prevent progressive and non-progressive atrophic rhinitis in pigs","inclisiran","indacaterol","indacaterol","indacaterol","indacaterol, glycopyrronium bromide","indacaterol, glycopyrronium bromide","indacaterol, glycopyrronium bromide","indacaterol, glycopyrronium bromide, mometasone","indacaterol, glycopyrronium, mometasone furoate","indacaterol, mometasone","indacaterol, mometasone","indinavir","indoxacarb","indoxacarb, permethrin","inebilizumab","Infectious bovine rhinotracheitis vaccine (inactivated)","Infectious bursal disease and Marek's disease vaccine (live recombinant)","Infectious bursal disease and Marek's disease vaccine (live recombinant)","infliximab","infliximab","infliximab","infliximab","infliximab","influenza vaccine (H1N1)v (split virion, inactivated, adjuvanted)","influenza vaccine (H1N1)v (whole virion, Vero cell derived, inactivated)","influenza vaccine (live attenuated, nasal)","influenza vaccine (live attenuated, nasal)","influenza vaccine (split virion, inactivated)","influenza vaccine (split virion, inactivated)","influenza vaccine (surface antigen, inactivated, adjuvanted)","influenza vaccine (surface antigen, inactivated, prepared in cell cultures)","influenza vaccine (surface antigen, inactivated, prepared in cell cultures)","influenza vaccine H1N1v (surface antigen, inactivated, adjuvanted)","ingenol mebutate","inotersen","inotuzumab ozogamicin","insulin aspart","insulin aspart","insulin aspart","insulin aspart","insulin aspart","insulin aspart","insulin degludec","insulin degludec, insulin aspart","insulin degludec, liraglutide","insulin detemir","insulin glargine","insulin glargine","insulin glargine","insulin glargine","insulin glargine","insulin glargine, lixisenatide","insulin glulisine","insulin human","insulin human","insulin human","insulin human","insulin human","insulin human (rDNA)","insulin human (rDNA)","insulin human (rDNA)","insulin human (rDNA)","insulin human (rDNA)","insulin human (rDNA)","insulin human (rDNA)","insulin human (rDNA)","insulin lispro","insulin lispro","insulin lispro","insulin lispro","insulin lispro","interferon (omega)","interferon alfa-2a","interferon alfa-2b","interferon alfa-2b","interferon alfacon-1","interferon beta-1a","interferon beta-1a","interferon beta-1b","interferon beta-1b","iodine (131I) omburtamab","ioflupane (123I)","ioflupane (123l)","ioflupane (123l)","ipilimumab","irbesartan","irbesartan","irbesartan","irbesartan","irbesartan","irbesartan","irbesartan","irbesartan, hydrochlorothiazide","irbesartan, hydrochlorothiazide","irbesartan, hydrochlorothiazide","irbesartan, hydrochlorothiazide","irbesartan, hydrochlorothiazide","irbesartan, hydrochlorothiazide","irinotecan hydrochloride trihydrate","isatuximab","isavuconazole","istradefylline","itraconazole","ivabradine","ivabradine","ivabradine","ivabradine","ivabradine","ivabradine","ivacaftor","ivacaftor, tezacaftor, elexacaftor","ivosidenib","ixazomib","ixekizumab","Japanese encephalitis vaccine (inactivated, adsorbed)","ketoconazole","lacosamide","lacosamide","lacosamide","lacosamide","lamivudine","lamivudine","lamivudine","lamivudine","lamivudine, raltegravir potassium","lamivudine, zidovudine","lamivudine, zidovudine","lanadelumab","lapatinib","laquinimod","laronidase","laropiprant, nicotinic acid","laropiprant, nicotinic acid","laropiprant, nicotinic acid","larotrectinib","lasmiditan","lasofoxifene","latanoprost / netarsudil","Lebrikizumab","ledispavir, sofosbuvir","lefamulin","leflunomide","leflunomide","leflunomide","leflunomide","leflunomide","leflunomide","Leishmania infantum excreted secreted proteins","lenacapavir","lenalidomide","lenalidomide","lenalidomide","lenalidomide","lenalidomide","lenalidomide","lenvatinib","lenvatinib","lepirudin","lesinurad","letermovir","leuprorelin","levacetylmethadol","levetiracetam","levetiracetam","levetiracetam","levetiracetam","levetiracetam","levetiracetam","levetiracetam","levetiracetam","levetiracetam","levodopa","levodopa, carbidopa","levodopa, carbidopa, entacapone","levodopa, carbidopa, entacapone","levodopa, carbidopa, entacapone","levofloxacin","lidocaine, prilocaine","lidocaine, prilocaine","linaclotide","linagliptin","linagliptin, metformin hydrochloride","linzagolix choline","lipegfilgrastim","liraglutide","liraglutide","lisocabtagene maraleucel","live attenuated Aujeszky's disease virus","live attenuated Muscovy duck parvovirus","live attenuated vaccine against avian infectious bronchitis","live gene-deleted vaccine for intramuscular use for active immunisation of cattle against infectious bovine rhinotracheitis","live myxoma-vectored rabbit-haemorrhagic-disease virus strain 009","live vaccine against Bordetella bronchiseptica in cats","live vaccine against rabies","live vaccine against Streptococcus equi","live, attenuated Canine distemper virus, canine adenovirus, canine parvovirus, canine parainfluenza virus inactivated","live, attenuated Canine distemper virus, canine adenovirus, canine parvovirus, canine parainfluenza virus inactivated and Leptospira","lixisenatide","Locatim, oral solution for neonatal calves less than 12 hours of age","lokivetmab","lomitapide","lonafarnib","lonapegsomatropin","loncastuximab tesirine","lonoctocog alfa","lopinavir, ritonavir","lopinavir, ritonavir","lorlatinib","lotilaner","lotilaner / milbemycin oxime","loxapine","lumacaftor, ivacaftor","Lumasiran","lurasidone","luspatercept","lusutrombopag","lutetium (177 Lu) chloride","lutetium (177 Lu) chloride","lutetium (177Lu) chloride","lutetium (177Lu) oxodotreotide","lutetium (177Lu) vipivotide tetraxetan","lutropin alfa","macimorelin","macitentan","mangafodipir","mannitol","Maralixibat chloride","maraviroc","Marek's disease vaccine (live recombinant)","Marek's disease vaccine, Newcastle disease vaccine & infectious laryngotracheitis vaccine (live recombinant)","maribavir","maropitant","maropitant","masitinib","masitinib","masitinib","masitinib","masitinib mesilate","matrix-applied characterised autologous cultured chondrocytes","mavacamten","mavacoxib","measles, mumps and rubella vaccine (live)","measles, mumps, rubella and varicella vaccine (live)","mecasermin","medetomidine hydrochloride, vatinoxan hydrochloride","melatonin","melatonin","melatonin","meloxicam","meloxicam","meloxicam","meloxicam","meloxicam","meloxicam","meloxicam","meloxicam","meloxicam","meloxicam","meloxicam","meloxicam","meloxicam","meloxicam","meloxicam","meloxicam","meloxicam","meloxicam","melphalan","melphalan flufenamide","memantine","memantine","memantine","memantine","memantine","memantine","memantine","memantine","memantine hydrochloride","memantine hydrochloride, donepezil hydrochloride","memantine hydrochloride, donepezil hydrochloride","meningococcal group A, C, W-135 and Y conjugate vaccine","meningococcal group A, C, W-135 and Y conjugate vaccine","meningococcal group B Vaccine (rDNA, component, adsorbed)","meningococcal group b vaccine (recombinant, adsorbed)","meningococcal groups A, C, W-135 and Y conjugate vaccine","mepolizumab","mercaptamine","mercaptamine","mercaptamine","mercaptamine bitartrate","mercaptopurine","meropenem, vaborbactam","metaflumizone","metaflumizone, amitraz","metformin hydrochloride, saxagliptin, dapagliflozin","methotrexate","methotrexate","methoxy polyethylene glycol-epoetin beta","methylnaltrexone bromide","methylthioninium chloride","methylthioninium chloride","metreleptin","mexiletine hcl","micafungin","midazolam","midostaurin","mifamurtide","migalastat","miglustat","miglustat","miglustat","miglustat","miglustat","milnacipran","milnacipran","mipomersen sodium","mirabegron","mirikizumab","mirtazapine","mitapivat","mitotane","mitratapide","mogamulizumab","monensin","monepantel","moroctocog alfa","mosunetuzumab","moxetumomab pasudotox","mycophenolate mofetil","mycophenolate mofetil","mycophenolate mofetil","mycophenolate mofetil","Mycoplasma hyopneumoniae and porcine circovirus vaccine (inactivated, recombinant)","Mycoplasma synoviae (live)","myxomatosis and rabbit haemorrhagic viral disease vaccine (live recombinant)","naldemedine","nalmefene","naloxegol","naloxone","naltrexone, bupropion","natalizumab","natalizumab","natalizumab","nateglinide","nateglinide","necitumumab","nelarabine","nelfinavir","Neonatal piglet colibacillosis (recombinant, inactivated), Clostridium perfringens vaccine (inactivated)","Neonatal piglet colibacillosis vaccine (inactivated)","Neonatal piglet colibacillosis vaccine (recombinant, inactivated)","nepafenac","neratinib","netarsudil","netupitant, palonosetron","nevirapine","nevirapine","Newcastle disease and Marek’s disease vaccine (live recombinant)","Newcastle disease, infectious bursal disease and Marek's disease vaccine (live recombinant)","Newcastle disease, infectious bursal disease and Marek's disease vaccine (live recombinant)","nilotinib","nintedanib","nintedanib","niraparib","niraparib, abiraterone acetate","nirmatrelvir, ritonavir","nirsevimab","nitisinone","nitisinone","nitisinone","nitric oxide","nivolumab","nivolumab","nomegestrol acetate, estradiol","nomegestrol, estradiol","nonacog alfa","nonacog beta pegol","nonacog gamma","norelgestromin, ethinyl estradiol","nusinersen","obeticholic acid","obiltoxaximab","obinutuzumab","oblimersen","oclacitinib maleate","ocrelizumab","ocriplasmin","octocog alfa","octocog alfa","octocog alfa","octocog alfa","octocog alfa","octreotide","odevixibat","oestrogens conjugated, bazedoxifene","ofatumumab","ofatumumab","olanzapine","olanzapine","olanzapine","olanzapine","olanzapine","olanzapine","olanzapine","olanzapine","olanzapine","olanzapine","olanzapine","olanzapine","olanzapine","olaparib","olaratumab","olipudase alfa","olopatadine","omalizumab","ombitasvir, paritaprevir, ritonavir","onasemnogene abeparvovec","opicapone","opicapone","orbifloxacin, mometasone furoate, posaconazole","oritavancin","orlistat","orlistat","osaterone acetate","oseltamivir","oseltamivir","osilodrostat","osimertinib","ospemifene","oxalic acid dehydrate","oxalic acid dihydrate","oxalic acid dihydrate / formic acid","oxybutynin","oxygen","ozanimod","paclitaxel","paclitaxel","paclitaxel","paclitaxel","padeliporfin","palbociclib","palifermin","paliperidone","paliperidone","paliperidone","paliperidone","palivizumab","palonosetron","palonosetron","palonosetron","palovarotene","pancreas powder","pandemic influenza vaccine (H1N1) (split virion, inactivated, adjuvanted)","pandemic influenza vaccine (H1N1)v (split virion, inactivated, adjuvanted)","pandemic influenza vaccine (H5N1) (live attenuated, nasal)","pandemic influenza vaccine (H5N1) (split virion, inactivated, adjuvanted)","pandemic influenza vaccine (H5N1) (split virion, inactivated, adjuvanted)","pandemic influenza vaccine (H5N1) (surface antigen, inactivated, adjuvanted)","pandemic influenza vaccine (H5N1) (whole virion, inactivated, prepared in cell culture)","pandemic influenza vaccine (whole virion, inactivated, adjuvanted)","panitumumab","panobinostat","pantoprazole","pantoprazole","pantoprazole","pantoprazole","pantoprazole","para-aminosalicylic acid","parathyroid hormone","parathyroid hormone (rDNA)","parecoxib","parecoxib","parecoxib","pasireotide","patiromer","patisiran","pazopanib","pegaptanib","pegaspargase","Pegbovigrastim","pegcetacoplan","pegfilgrastim","pegfilgrastim","pegfilgrastim","pegfilgrastim","pegfilgrastim","pegfilgrastim","pegfilgrastim","pegfilgrastim","pegfilgrastim","pegfilgrastim","pegfilgrastim","pegfilgrastim","peginterferon alfa-2a","peginterferon alfa-2b","peginterferon alfa-2b","peginterferon beta-1a","pegloticase","pegunigalsidase alfa","pegvaliase","pegvisomant","pembrolizumab","pemetrexed","pemetrexed","pemetrexed","pemetrexed","pemetrexed","pemetrexed","pemetrexed","pemetrexed","pemetrexed","pemetrexed","pemetrexed","pemetrexed","pemigatinib","pentosan polysulfate sodium","peramivir","perampanel","perflutren","perflutren","pertuzumab","pertuzumab, trastuzumab","Pexidartinib","phentermine, topiramate","phenylephrine, ketorolac","piflufolastat (18F)","pioglitazone","pioglitazone","pioglitazone","pioglitazone","pioglitazone","pioglitazone","pioglitazone","pioglitazone","pioglitazone","pioglitazone","pioglitazone, glimepiride","pioglitazone, metformin","pioglitazone, metformin","piperaquine tetraphosphate, artenimol","pirfenidone","pirfenidone","pirfenidone","pirlimycin","pirtobrutinib","pitolisant","pitolisant","pixantrone dimaleate","plerixafor","plerixafor","pneumococcal polysaccharide conjugate vaccine (13-valent, adsorbed)","pneumococcal polysaccharide conjugate vaccine (20-valent, adsorbed)","pneumococcal polysaccharide conjugate vaccine (adsorbed)","pneumococcal polysaccharide conjugate vaccine (adsorbed)","pneumococcal saccharide conjugated vaccine, adsorbed","polatuzumab vedotin","pomalidomide","ponatinib","ponesimod","Porcine circovirus and porcine enzootic pneumonia vaccine (inactivated)","porcine circovirus type 2 ORF2 subunit antigen, Mycoplasma hyopneumoniae inactivated","porcine circovirus vaccine (inactivated, recombinant)","Porcine circovirus vaccine (inactivated)","Porcine circovirus vaccine (inactivated)","Porcine influenza vaccine (inactivated)","porcine parvovirosis vaccine (inactivated)","Porcine parvovirus and Erysipelothrix rhusiopathiae","porcine post-weaning diarrhoea vaccine (live)","porcine respiratory and reproductive syndrome virus, live","porfimer sodium","posaconazole","posaconazole","posaconazole","posaconazole","potassium citrate, potassium hydrogen carbonate","pradofloxacin","pradofloxacin","pralatrexate","pralsetinib","pramipexole","pramipexole","pramipexole","pramipexole","pramipexole","pramipexole","prasterone","prasugrel","prasugrel","Prednisolone","pregabalin","pregabalin","pregabalin","pregabalin","pregabalin","pregabalin","pregabalin","pregabalin","pregabalin","pregabalin","prepandemic influenza vaccine (H5N1) (split virion, inactivated, adjuvanted)","prepandemic influenza vaccine (H5N1) (split virion, inactivated, adjuvanted)","prepandemic influenza vaccine (H5N1) (surface antigen, inactivated, adjuvanted)","Prepandemic influenza vaccine (H5N1) (whole virion, inactivated,prepared in cell culture)","pretomanid","propranolol","prucalopride","pyriprole","pyriproxyfen, dinotefuran","Quadrivalent influenza vaccine (recombinant, prepared in cell culture)","quizartinib","quizartinib","Rabbit haemorrhagic disease vaccine (inactivated, recombinant)","Rabbit haemorrhagic disease vaccine (inactivated)","rabies recombinant canarypox virus (vCP65)","Rabies vaccine (live, oral) for foxes and raccoon dogs","radium Ra223 dichloride","raloxifene","raloxifene","raloxifene","raltegravir","ramucirumab","ranibizumab","ranibizumab","ranibizumab","ranibizumab","ranolazine","rasagiline","rasagiline","rasagiline","rasburicase","ravulizumab","recombinant human C1 inhibitor","recombinant inactivated avian influenza virus","Recombinant respiratory syncytial virus pre-fusion F protein, adjuvanted with AS01E","recombinant salmon calcitonin","regadenoson","regdanvimab","regorafenib","relatlimab / nivolumab","relugolix","relugolix, estradiol, norethisterone acetate","remdesivir","remimazolam","repaglinide","repaglinide","repaglinide","repaglinide","repaglinide","repaglinide","reslizumab","resocortol butyrate","Respiratory syncytial virus vaccine (bivalent, recombinant)","retapamulin","reteplase","reteplase","retigabine","ribavirin","ribavirin","ribavirin","ribavirin","ribavirin","ribavirin","ribociclib","rilonacept","rilpivirine","rilpivirine","riluzole","riluzole","rimegepant","rimonabant","rimonabant","riociguat","ripretinib","risankizumab","risdiplam","risperidone","ritlecitinib","ritonavir","ritonavir","rituximab","rituximab","rituximab","rituximab","rituximab","rituximab","rituximab","rituximab","rivaroxaban","rivaroxaban","rivaroxaban","rivastigmine","rivastigmine","rivastigmine","rivastigmine","rivastigmine","rivastigmine","rivastigmine","rivastigmine","rivastigmine","robenacoxib","roflumilast","roflumilast","roflumilast","rolapitant","romidepsin","romiplostim","romosozumab","ropeginterferon alfa-2b","ropinirole","rosiglitazone","rosiglitazone","rosiglitazone","rosiglitazone, glimepiride","rosiglitazone, metformin","rotavirus vaccine","rotavirus vaccine, live","rotavirus vaccine, live","rotigotine","rotigotine","roxadustat","rucaparib","rufinamide","rurioctocog alfa pegol","ruxolitinib","ruxolitinib","sacituzumab govitecan","sacubitril, valsartan","sacubitril, valsartan","safinamide","salmeterol xinafoate, fluticasone propionate","salmeterol, fluticasone propionate","salmeterol, fluticasone propionate","salmeterol, fluticasone propionate","Salmon pancreas disease vaccine (recombinant DNA plasmid)","samarium [153Sm] lexidronam pentasodium","sapropterin","sapropterin","saquinavir","saquinavir","sarilumab","sarolaner","sarolaner","sarolaner, moxidectin, pyrantel embonate","satralizumab","saxagliptin","saxagliptin, dapagliflozin","saxagliptin, metformin hydrochloride","sebelipase alfa","secukinumab","selamectin","selamectin","selamectin","selamectin, sarolaner","selamectin, sarolaner","selexipag","selinexor","selpercatinib","selumetinib","semaglutide","semaglutide","semaglutide","serelaxin","setmelanotide","sevelamer","sevelamer carbonate","sevelamer carbonate","sevelamer hydrochloride","sevoflurane","sevoflurane","shingles (herpes zoster) vaccine (live)","sildenafil","sildenafil","sildenafil","sildenafil","sildenafil","sildenafil","sildenafil","sildenafil","sildenafil","silodosin","silodosin","silodosin","siltuximab","simeprevir","simoctocog alfa","simoctocog alfa","siponimod","sirolimus","sirolimus","sitagliptin","sitagliptin","sitagliptin","sitagliptin","sitagliptin","sitagliptin fumarate","sitagliptin hydrochloride monohydrate, metformin hydrochloride","sitagliptin, metformin","sitagliptin, metformin","sitagliptin, metformin","sitagliptin, metformin hydrochloride","sitagliptin, metformin hydrochloride","sitagliptin, metformin hydrochloride","sitaxentan sodium","smallpox and monkeypox vaccine (Live Modified Vaccinia Virus Ankara)","sodium oxybate","sodium oxybate","sodium phenylbutyrate","sodium phenylbutyrate","sodium thiosulfate","sodium zirconium cyclosilicate","sofosbuvir","sofosbuvir, velpatasvir","sofosbuvir, velpatasvir, voxilaprevi","solriamfetol","somapacitan","somatrogon","somatropin","somatropin","somatropin","somatropin","sonidegib","sorafenib","sorafenib","sotagliflozin","sotorasib","sotrovimab","spesolimab","spheroids of human autologous matrix-associated chondrocytes","spinosad","spinosad, milbemycin oxime","spironolactone","spironolactone","stavudine","stiripentol","Streptococcus equi vaccine (recombinant proteins)","Streptococcus uberis vaccine (inactivated)","strontium ranelate","strontium ranelate","sucroferric oxyhydroxide","sufentanil","sufentanil","sugammadex","sugammadex","sugammadex","sugammadex","sugammadex","sugammadex","sulesomab","sulphur hexafluoride","sumatriptan","sunitinib","sunitinib","susoctocog alfa","sutimlimab","tabelecleucel","tacrolimus","tacrolimus","tacrolimus","tacrolimus","tacrolimus","tacrolimus","tadalafil","tadalafil","tadalafil","tadalafil","tadalafil","tafamidis","tafasitamab","tagraxofusp","talazoparib","taliglucerase alfa","talimogene laherparepvec","talquetamab","tanezumab","tasimelteon","tasipimidine","tasonermin","tebentafusp","teclistamab","tecovirimat monohydrate","tedizolid phosphate","teduglutide","tegafur, gimeracil, oteracil","tegaserod","telaprevir","telavancin","telbivudine","telithromycin","telithromycin","telmisartan","telmisartan","telmisartan","telmisartan","telmisartan","telmisartan","telmisartan","telmisartan","telmisartan, amlodipine","telmisartan, amlodipine","telmisartan, hydrochlorothiazide","telmisartan, hydrochlorothiazide","telmisartan, hydrochlorothiazide","telmisartan, hydrochlorothiazide","telotristat ethyl","temoporfin","temozolomide","temozolomide","temozolomide","temozolomide","temozolomide","temozolomide","temozolomide","temsirolimus","tenecteplase","tenecteplase","tenofovir alafenamide","tenofovir disoproxil","tenofovir disoproxil","tenofovir disoproxil","tepotinib","tepoxalin","terbinafine, florfenicol, betamethasone","teriflunomide","teriflunomide","teriflunomide","teriparatide","teriparatide","teriparatide","teriparatide","teriparatide","teriparatide","teriparatide","teriparatide","testosterone","testosterone","tezacaftor, ivacaftor","tezepelumab","thalidomide","thalidomide","thiotepa","thiotepa","thyrotropin alfa","ticagrelor","ticagrelor","tigecycline","tigecycline","tigilanol tiglate","tildipirosin","tildrakizumab","tilmanocept","tipranavir","tirbanibulin","tirzepatide","tisagenlecleucel","tislelizumab","tivozanib hydrochloride monohydrate","tixagevimab, cilgavimab","tobramycin","tobramycin","tobramycin","toceranib","tocilizumab","tocilizumab","tocofersolan","tofacitinib","tofacitinib","tolcapone","toltrazuril, iron (III) ion","toltrazuril, iron (III) ion","tolvaptan","tolvaptan","tolvaptan","topotecan","topotecan","topotecan","topotecan","topotecan","topotecan","topotecan","Torasemide","Torasemide","toremifene","tozinameran, riltozinameran and tozinameran, famtozinameran and tozinameran, COVID-19 mRNA Vaccine (nucleoside modified)","trabectedin","trabectedin","tralokinumab","trametinib","trastuzumab","trastuzumab","trastuzumab","trastuzumab","trastuzumab","trastuzumab","trastuzumab","trastuzumab","trastuzumab deruxtecan","trastuzumab emtansine","travoprost","travoprost","travoprost, timolol","tremelimumab","tremelimumab","treosulfan","treprostinil","trientine","trientine dihydrochloride","trifluridine, tipiracil","Triptorelin","trovafloxacin","trovafloxacin","trovafloxacin","trovafloxacin","tucatinib","tulathromycin","tulathromycin","tulathromycin","tulathromycin","tulathromycin","tulathromycin","tulathromycin","turoctocog alfa","turoctocog alfa pegol","tylvalosin","ublituximab","ulipristal","ulipristal acetate","ulipristal acetate","umeclidinium","umeclidinium bromide","umeclidinium bromide, vilanterol","umeclidinium bromide, vilanterol","upadacitinib","ustekinumab","vaccine against babesiosis in dogs","vaccine against equine influenza and tetanus in horses","vaccine against equine influenza in horses","vaccine against feline leukaemia","vaccine against feline viral rhinotracheitis and feline calicivirosis","vaccine against feline viral rhinotracheitis, calicivirosis, panleucopenia and leukaemia in cats","vaccine against feline viral rhinotracheitis, feline calicivirosis and feline Chlamydophila infections","vaccine against feline viral rhinotracheitis, feline calicivirosis and feline panleucopenia","vaccine against feline viral rhinotracheitis, feline calicivirosis, feline panleucopenia and feline Chlamydophila infections","Vaccine against feline viral rhinotracheitis, feline calicivirosis, feline panleucopenia and feline leukaemia","vaccine against feline viral rhinotracheitis, feline calicivirosis, feline panleucopenia, feline leukeamia and feline Chlamydophila infections","vaccine to aid in prevention of West Nile virus","Vaccine to prevent Leptospira infections in dogs","vaccine to provide passive immunity to the progeny against E. coli in pigs","vaccine to provide passive immunity to the progeny against Escherichia coli and Clostridium perfringens in pigs","vadadustat","valdecoxib","valdecoxib","valdecoxib","valnemulin","Valoctocogene roxaparvovec","vandetanib","vardenafil","vardenafil","varenicline","vedaprofen","vedolizumab","velaglucerase alfa","velmanase alfa","vemurafenib","venetoclax","vericiguat","vernakalant hydrochloride","verteporfin","vestronidase alfa","vigabatrin","vildagliptin","vildagliptin","vildagliptin","vildagliptin / metformin hydrochloride","vildagliptin, metformin","vildagliptin, metformin","vildagliptin, metformin","vinflunine","vismodegib","voclosporin","volanesorsen","vonicog alfa","vorapaxar","voretigene neparvovec","voriconazole","voriconazole","voriconazole","vortioxetine","vosoritide","votumumab","Voxelotor","vutrisiran","West Nile fever vaccine (live recombinant)","yttrium [90Y] chloride","yttrium [90Y] chloride","yttrium [90Y] chloride","zaleplon","zaleplon","Zanamivir","zanubrutinib","ziconotide","zinc","zoledronic acid","zoledronic acid","zoledronic acid","zoledronic acid","zoledronic acid","zoledronic acid","zoledronic acid","zoledronic acid","zoledronic acid","zoledronic acid","zonisamide","zonisamide","zoonotic influenza vaccine (H5N1) (surface antigen, inactivated, adjuvanted)","zoonotic influenza vaccine (H5N1) (surface antigen, inactivated, adjuvanted)"
  ];
  final recentdrugs = [
    "Type for example: 'K'",

  ];

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
      FutureBuilder<List<DrugList>>(
          future: _drugList.getDrugList(query),
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
                        Card(color: Colors.black,
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
                        Expanded(child: RiveAnimation.asset('assets/drugitudenodata.riv')),
                        Card(color: Colors.black,
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
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text("2. INQUIRY MISSING IN LIBRARY", style: TextStyle(color: Colors.white, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline),textAlign: TextAlign.center),
                                ),
                                Column(
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
                                                  DrugRequestPage(),
                                            ));
                                      }, child: Row(
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
                        Card(color: Colors.black,
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
                        Expanded(child: RiveAnimation.asset('assets/drugitudeError.riv')),
                        Card(color: Colors.black,
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
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text("2. AIRPLANE MODE IS ON", style: TextStyle(color: Colors.white, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline),textAlign: TextAlign.center),
                                ),
                                Column(
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
                                        Navigator.pop(context);;
                                      }, child: Row(
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
                return Card(
                    child: ListTile(
                        title: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child:
                                  Center(
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 25.0, bottom: 0, left: 8, right: 8),
                                          child: Text('Category: ${data?[index].category.name}',style: const TextStyle(color: Colors.white54, fontSize: 12),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                          child: Text('${data?[index].medicineName}',
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
                                          child: Text('${data?[index].innName}',
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                          child: Text('Active Substance: ${data?[index].activeSubstance}',
                                            overflow: TextOverflow.fade,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(color: Colors.white54, fontSize: 12),),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                          child: Text('Therapuetic Area',
                                            style: TextStyle(color: Colors.white54,fontSize: 12),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                          child: Text('${data?[index].therapeuticArea}',
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
                                          child: Text('${data?[index].humanPharmacotherapeuticGroup}',
                                              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                        ),

                                        const Padding(
                                          padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                          child: Text('Marketing Authorization Company',
                                            style: TextStyle(color: Colors.white54, fontSize: 12),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                          child: Text('${data?[index].marketingAuthorisationHolderorCompanyName}',
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
                                          child: Text('${data?[index].authorisationStatus.name}',
                                              style: const TextStyle(color: Colors.white, fontSize: 12)
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                          child: Text('Indication and Use',
                                              style: TextStyle(color: Colors.white54, fontSize: 12)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                          child: Text('${data?[index].conditionOrIndication}',
                                            overflow: TextOverflow.fade,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(fontSize: 12,
                                                color: Colors.white70,
                                                fontWeight: FontWeight.bold),),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                          child: Text('Additional information:',
                                              style: TextStyle(color: Colors.white54, fontSize: 12)
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                          child: Text('Product Number: ${data?[index].productNumber}; ATC-Code: ${data?[index].atccode}, Generic? ${data?[index].generic.name}, Biosimilar? ${data?[index].biosimilar.name}, Conditional Approval: ${data?[index].conditionalApproval.name}, Exceptional Circumstances: ${data?[index].exceptionalCircumstances.name}, Accelerated Assessment: ${data?[index].acceleratedAssessment.name}, Orphan Medicine: ${data?[index].orphanMedicine.name}, Marketing Authorization Date: ${data?[index].marketingAuthorisationDate}, Date of Opinion: ${data?[index].dateofOpinion}, Decision Date: ${data?[index].decisionDate}, First Published: ${data?[index].firstPublished}, Revision Date: ${data?[index].revisionDate}, Revision Number: ${data?[index].revisionNumber}, url: ${data?[index].url}',
                                              overflow: TextOverflow.fade,
                                              textAlign: TextAlign.start,
                                              style: const TextStyle(fontSize: 12,
                                                  color: Colors.white70,
                                                  fontWeight: FontWeight.bold)
                                          ),
                                        ),


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
                    )
                );
              },
            );
          });

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