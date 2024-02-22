
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../apiServiceModels/brandnameapiModel.dart';

import '../drugListCallModel/drugListbrandNamemodel.dart';

// Note this is for INN Search key words to remember
// drugstosearch-innName
// recentdrugs - innName
// FetchDrug - innName
// _drugList - innName
// data - InnName

class SearchDrugBrandName extends SearchDelegate {
  final FetchDrugbrandName _drugListbrandName = FetchDrugbrandName();
  final drugstosearchbrandName = [
    "Abasaglar (previously Abasria)","Abecma","Abevmy","Abilify","Abilify Maintena","Abiraterone Accord","Abiraterone Krka ","Abiraterone Mylan","Ablavar (previously Vasovist)","Abraxane","Abrysvo","Abseamed","Accofil","Aclasta","Acomplia","Acrescent","Actelsar HCT","Acticam","Activyl","Activyl Tick Plus","Actos","Actraphane","Actrapid","Adakveo","Adasuve","Adcetris","Adcirca (previously Tadalafil Lilly)","Adempas","Adenuric","Adjupanrix (previously Pandemic influenza vaccine (H5N1) (split virion, inactivated, adjuvanted) GlaxoSmithKline Biologicals)","Adlumiz","Adrovance","Adtralza","Advagraf","Advasure","Advate","Advocate","Adynovi","Aerinaze","Aerius","Aerivio Spiromax","Afinitor","Aflunov","Afstyla","Aftovaxpur DOE","Agenerase","Aimovig","Airexar Spiromax","Aivlosin","Ajovy","Akeega","Akynzeo","Aldara","Aldurazyme","Alecensa","Alimta","Alisade","Alkindi","Allex","Alli (previously Orlistat GSK)","Alofisel","Aloxi","Alpheon","Alpivab","Alprolix","Alsitek","Altargo","Alunbrig","Alymsys","Ambirix","Ambrisentan Mylan","Ameluz","Amgevita","Amglidia","Amifampridine SERB","Amlodipine  / Valsartan Mylan ","Ammonaps","Amsparity","Amversio","Amvuttra","Amyvid","Anagrelide Mylan","Angiox","Anoro Ellipta (previously Anoro)","Apealea","Apexxnar","Apidra","Apixaban Accord","Aplidin","Apoquel","Apretude","Aprovel","Aptivus","Aquipta","Aqumeldi","Aranesp","Arava","Arepanrix","Arexvy","Ariclaim","Arikayce liposomal","Aripiprazole Accord","Aripiprazole Mylan Pharma (previously Aripiprazole Pharmathen)","Aripiprazole Sandoz","Aripiprazole Zentiva","Arixtra","Armisarte (previously Pemetrexed Actavis)","Arsenic trioxide Accord","Arsenic trioxide medac","Arsenic trioxide Mylan","Artesunate Amivas","Arti-Cell Forte","Arzerra","Aservo EquiHaler","Aspaveli","Atazanavir Krka","Atazanavir Mylan","Atectura Breezhaler","Atosiban SUN","Atriance","Atripla","ATryn","Aubagio","Avaglim","Avamys","Avandamet","Avandia","Avastin","Avonex","Axumin","Axura","Aybintio","Ayvakyt","Azacitidine Accord","Azacitidine betapharm","Azacitidine Celgene","Azacitidine Mylan","Azarga","Azilect","Azomyr","Azopt","Balaxur","Baqsimi","Baraclude","Bavencio","Baycox Iron","Bekemv","Bemfola","Bemrist Breezhaler","BeneFIX","Benepali","Benlysta","Beovu","Beromun","Besponsa","Besremi","Betaferon","Betmiga","Bevespi Aerosphere","Bexsero","Bextra","Beyfortus","Biktarvy","Bimervax","Bimzelx","BindRen","Binocrit","Biograstim","Biopoin","BiResp Spiromax","Blenrep","Blincyto","Blitzima","Bluevac BTV (previously known as Bluevac BTV8)","Bondenza (previously Ibandronic Acid Roche)","Bondronat","Bonqat","Bonviva","Bortezomib Accord","Bortezomib Fresenius Kabi","Bortezomib Hospira","Bortezomib Sun","Bosulif","Bovalto Ibraxion","Bovela","Bovilis Blue-8","Bovilis BTV8","Braftovi","Bravecto","Bravecto Plus","Bretaris Genuair","Breyanzi","Bridion","Brilique","Brimica Genuair","Brinavess","Brineura","Brintellix","Briumvi","Briviact (in Italy: Nubriveo)","Broadline","Bronchitol","BroPair Spiromax","Brukinsa","BTVPUR","BTVPUR AlSap 1","BTVPUR AlSap 2-4","BTVPUR Alsap 8","Buccolam","Budesonide/Formoterol Teva","Budesonide/Formoterol Teva Pharma B.V.","Budesonide/Formoterol Teva Pharma B.V.","Busilvex","Busulfan Fresenius Kabi","Buvidal","Byannli (previously Paliperidone Janssen-Cilag International)","Bydureon","Byetta","Byfavo","Bylvay","Byooviz","Cabazitaxel Accord","Cabazitaxel Teva","Cablivi","Cabometyx ","Caelyx pegylated liposomal","Calquence","Camcevi","Camzyos","Cancidas (previously Caspofungin MSD)","Canigen L4","CaniLeish","Capecitabine Accord","Capecitabine Medac","Capecitabine SUN","Capecitabine Teva","Caprelsa","Carbaglu","Cardalis","Carmustine medac (previously Carmustine Obvius)","Carvykti","Caspofungin Accord","Cayston","CEA-Scan","Cegfila (previously Pegfilgrastim Mundipharma)","Celdoxome pegylated liposomal","CellCept","Celsentri","Celsunax","Celvapan","Cepedex","Ceplene","Ceprotin","Cerdelga","Cerenia","Cerezyme","Certifect","Cervarix","Cetrotide","Cevenfacta","Champix","Chanhold","Chenodeoxycholic acid Leadiant (previously known as Chenodeoxycholic acid sigma-tau)","Cholestagel","Cholib","ChondroCelect","Cialis","Ciambra","Cibinqo","Cimalgex","Cimzia","Cimzia","Cinacalcet Accordpharma","Cinacalcet Mylan","Cinqaero","Cinryze","Circadin","CircoMax Myco","Circovac","Clevor","Clomicalm","Clopidogrel / Acetylsalicylic acid Mylan","Clopidogrel 1A Pharma","Clopidogrel Acino","Clopidogrel Acino Pharma","Clopidogrel Acino Pharma GmbH","Clopidogrel BGR (previously Zylagren)","Clopidogrel BMS","Clopidogrel DURA","Clopidogrel HCS","Clopidogrel Hexal","Clopidogrel Krka","Clopidogrel Krka d.d. (previously Zopya)","Clopidogrel Qualimed","Clopidogrel ratiopharm","Clopidogrel ratiopharm","Clopidogrel ratiopharm GmbH","Clopidogrel Sandoz","Clopidogrel TAD","Clopidogrel Taw Pharma (previously Clopidogrel Mylan)","Clopidogrel Teva (hydrogen sulphate)","Clopidogrel Teva Generics B.V.","Clopidogrel Teva Pharma (previously Clopidogrel HCS)","Clopidogrel Teva Pharma B.V.","Clopidogrel Viatris (previously Clopidogrel Taw Pharma)","Clopidogrel Zentiva (previously Clopidogrel Winthrop)","Clopidogrel/Acetylsalicylic acid Teva","Clopidogrel/Acetylsalicylic acid Zentiva (previously DuoCover)","Clynav","Coagadex","CoAprovel","Coliprotec F4","Coliprotec F4/F18","Colobreathe","Columvi","Combivir","Cometriq","Comfortis","Comirnaty","Competact","Comtan","Comtess","Conbriza","Constella","Contacera","Controloc Control","Convenia","Copalia","Copalia HCT","Copiktra","Corbilta (previously Levodopa/Carbidopa/Entacapone Sandoz)","Corlentor","Cortavance","Cosentyx","Cotellic","Cotronak","COVID-19 Vaccine (inactivated, adjuvanted) Valneva","Coxevac","Credelio","Credelio Plus","Cresemba","Crixivan","Crysvita","Cubicin","Cufence","Cuprior","Cuprymina","Cyanokit","Cyltezo","Cymbalta","Cyramza","Cystadane","Cystadrops","Cystagon","Cytopoint","Dabigatran Etexilate Accord","Dacogen","Dafiro","Dafiro HCT","Daklinza","Daliresp","Dany's BienenWohl","Dapagliflozin Viatris","Daptomycin Hospira","Daquiran","Daronrix","Darunavir Krka","Darunavir Krka d.d.","Darunavir Mylan","Darzalex","Dasatinib Accord","Dasatinib Accordpharma","Dasselta","DaTSCAN","Daurismo","Daxas","Daxocox","Dectova","Deferasirox Accord","Deferasirox Mylan","Deferiprone Lipomed","Defitelio","Degarelix Accord","Delstrigo","Deltyba","Dengvaxia","DepoCyte","Descovy","Desloratadine Actavis","Desloratadine ratiopharm","Desloratadine Teva","Destara","Dexdomitor","Dexdor","Dexmedetomidine Accord","Dexxience","Diacomit","Dicural","Dificlir","Dimethyl fumarate Accord","Dimethyl fumarate Mylan","Dimethyl fumarate Neuraxpharm","Dimethyl fumarate Polpharma","Dimethyl fumarate Teva","Docefrez","Docetaxel Accord","Docetaxel Kabi","Docetaxel Mylan","Docetaxel Teva","Docetaxel Teva Pharma","Docetaxel Zentiva (previously Docetaxel Winthrop)","Doptelet","Doribax","Dovato","Dovprela (previously Pretomanid FGK)","Doxirobe","Doxolipad","Draxxin","Dropcys","Drovelis","Duaklir Genuair","Duavive","Dukoral","Duloxetine Boehringer Ingelheim","Duloxetine Lilly","Duloxetine Mylan","Duloxetine Zentiva","DuoPlavin","DuoResp Spiromax","DuoTrav","Dupixent","Dutrebis","Duzallo","Dynastat","Dynepo","Dzuveo","Easotic","Ebglyss","Ebilfumin","Ebixa","Ebvallo","Ebymect","Ecalta","Ecansya (previously Capecitabine Krka)","EchoGen","Ecokinase","Econor","Ecoporc Shiga","Edarbi","Edistride","Edurant","Efavirenz Teva","Efavirenz/Emtricitabine/Tenofovir disoproxil Krka","Efavirenz/Emtricitabine/Tenofovir disoproxil Mylan","Efavirenz/Emtricitabine/Tenofovir disoproxil Zentiva","Effentora","Efficib","Efient","Efmody","Eklira Genuair","Eladynos","Eladynos","Elaprase","Elebrato Ellipta","Elelyso","Elfabrio","Eliquis","ellaOne","Elmiron","Elocta","Elonva","Elzonris","Emadine","Emdocam","Emend","Emgality","Empliciti","Emselex","Emtricitabine/Tenofovir disoproxil Krka","Emtricitabine/Tenofovir disoproxil Krka d.d.","Emtricitabine/Tenofovir disoproxil Mylan","Emtricitabine/Tenofovir disoproxil Zentiva","Emtriva","Enbrel","EnCyzix","EndolucinBeta","Enerzair Breezhaler","Enhertu","Enjaymo","Enrylaze","Enspryng","Entacapone Orion","Entacapone Teva","Entecavir Accord","Entecavir Mylan","Enteroporc Coli","Enteroporc Coli AC","Entresto","Entyvio","Enurev Breezhaler","Envarsus","Enviage","Enyglid","Enzepi","Epclusa","Eperzan","Epidyolex","Episalvan","Epivir","Epoetin Alfa Hexal","Eporatio","Eptifibatide Accord","Epysqli","Equidacent","Equilis Prequenza","Equilis Prequenza Te","Equilis StrepE","Equilis Te","Equilis West Nile","Equioxx","Equip WNV (previously Duvaxyn WNV)","Equisolon","Eravac","Erbitux","Erelzi","Erivedge","Erleada","Ertapenem SUN","Ervebo","Eryseng","Eryseng Parvo","Esbriet","Esmya","Esperoct","Eucreas","Eurartesim","Eurican Herpes 205","Eurifel RCP FeLV","Evalon","Evant","Evarrest","Evenity","Evicel","Evicto","Eviplera","Evista","Evkeeza","Evoltra","Evotaz","Evotopin","Evra","Evrenzo","Evrysdi","Evusheld","Exalief","Exelon","Exforge","Exforge HCT","Exjade","Exondys","Exparel liposomal","Extavia","Exubera","Exviera","Exzolt","Eylea","Fablyn","Fabrazyme","Fampridine Accord","Fampyra","Fanaptum","Fareston","Farydak","Fasenra","Faslodex","Fasturtec","Fatrovax RHD","Febuxostat Krka","Febuxostat Mylan","Felisecto Plus","Felpreva","Fendrix","Feraccru","Ferriprox","Fertavid","Fetcroja","Fevaxyn Pentofel","Fexeric","Fiasp","Filgrastim Hexal","Filgrastim ratiopharm","Filsuvez","Fingolimod Accord","Fingolimod Mylan","Fintepla","Firazyr","Firdapse (previously Zenas)","Firmagon","Flebogamma DIF (previously Flebogammadif)","Flexicam","Flixabi","Fluad Tetra","Flucelvax Tetra","Fluenz","Fluenz Tetra","Focetria","Foclivia","Folotyn","Forcaltonin","Forceris","Forsteo","Fortacin","Fortekor Plus","Fortovase","Forxiga","Fosavance","Foscan","Fotivda","Frontpro (previously known as Afoxolaner Merial)","Fulphila","Fulvestrant Mylan","Fungitraxx","Fuzeon","Fycompa","Galafold","Galliprant","Galvus","Gamifant","Ganfort","Ganirelix Gedeon Richter","Gardasil","Gardasil 9","Gavreto","Gazyvaro","Gefitinib Mylan","Gemesis","Genasense","Gencebok","Genvoya","GHRYVELIN (previously Macimorelin Aeterna Zentaris)","Giapreza","Gilenya","Giotrif","Givlaari","Glidipion (previously Pioglitazone Actavis Group)","Gliolan","Glivec","Glubrava","Glustin","Glybera","Glyxambi","GONAL-f","Gonazon","Granpidam","Granupas (previously Para-aminosalicylic acid Lucane)","Grastofil","Grasustek","Grepid","Gripovac 3","Gumbohatch","Halagon","Halaven","Halimatoz","Halocur","Harvoni","HBVaxPro","Hefiya","Helicobacter Test INFAI","Helixate NexGen","Hemangiol","Hemgenix","Hemlibra","Hepacare","Heparesc","Hepcludex","Heplisav B","Hepsera","Herceptin","Herwenda","Herzuma","Hetlioz","Hexacima","Hexavac","Hexyon","Hiprabovis IBR Marker Live","Hirobriz Breezhaler","Hizentra","Holoclar","Hopveus","Horse Allo 20","HorStem","Hukyndra","Hulio","Humalog","Human IGG1 monoclonal antibody specific for human interleukin-1 alpha XBiotech","HumaSPECT","Humenza","Humira","Hycamtin","Hydrocortisone aceponate Ecuphar (previously Cortacare) ","Hyftor","HyQvia","Hyrimoz","Iasibon","Ibaflin","Ibandronic acid Accord","Ibandronic Acid Sandoz","Ibandronic Acid Teva","Iblias","Ibrance","Icandra (previously Vildagliptin / metformin hydrochloride Novartis)","Icatibant Accord","Iclusig","Idacio","Idefirix","Idelvion","IDflu","Ifirmacombi","Ifirmasta (previously Irbesartan Krka)","Ikervis","Ilaris","Ilumetri","Imatinib Accord","Imatinib Actavis","Imatinib Koanaa","Imatinib medac","Imatinib Teva","Imatinib Teva B.V.","Imbruvica","Imcivree","Imfinzi","Imjudo","Imlygic","ImmunoGam","Imnovid (previously Pomalidomide Celgene)","Imoxat","Imprida","Imprida HCT","Improvac","Impulsor","Imraldi","Imrestor","Imvanex","Inaqovi","Inbrija","Incivo","Increlex","Incresync","Increxxa","Incruse Ellipta (previously Incruse)","Incurin","Indimacis 125","Inductos","Infanrix HepB","Infanrix Hexa","Infanrix Penta","Infergen","Inflacam","Inflectra","Ingelvac CircoFLEX","Ingelvac PCV FLEX","Inhixa","Inlyta","Innovax-ILT","Innovax-ND-IBD","Innovax-ND-ILT","INOmax","Inovelon","Inpremzia","Inrebic","Instanyl","Insulatard","Insulin aspart Sanofi","Insulin Human Winthrop","Insulin lispro Sanofi","Insuman","Intanza","Integrilin","Intelence","Intrarosa","Intrinsa","IntronA","Intuniv","Invanz","Invega","Invirase","Invokana","Ioa","Ionsys","Ionsys","Ipique","Ipreziv","Irbesartan BMS","Irbesartan Hydrochlorothiazide BMS","Irbesartan Hydrochlorothiazide Zentiva (previously Irbesartan Hydrochlorothiazide Winthrop)","Irbesartan Teva","Irbesartan Zentiva (previously Irbesartan Winthrop)","Irbesartan/Hydrochlorothiazide Teva","Iressa","Iscover","Isemid","Isentress","Istodax","Isturisa","Ivabradine Accord","Ivabradine Anpharm","Ivabradine JensonR","Ivabradine Zentiva","Ivemend","Ivozall","Ixense","Ixiaro","Izba","Jakavi","Jalra","Janumet","Januvia","Jardiance","Javlor","Jayempi","Jaypirca","Jcovden (previously COVID-19 Vaccine Janssen)","Jemperli","Jentadueto","Jetrea","Jevtana","Jinarc","Jivi","Jorveza","Juluca","Jylamvo","Jyseleca","Kadcyla","Kaftrio","Kaletra","Kalydeco","Kanjinti","Kanuma","Kapruvia","Karvea","Karvezide","Kauliv","Kengrexal","Kentera (previously Oxybutynin Nicobrand)","Kepivance","Keppra","Kerendia","Kesimpta","Ketek","Ketoconazole HRA","Kevzara","Kexxtone","Keytruda","Kigabeq","Kimmtrak","Kineret","Kinpeygo","Kinzalkomb","Kinzalmono (previously Telmisartan Boehringer Ingelheim Pharma KG)","Kiovig","Kirsty (previously Kixelle)","Kisplyx","Kisqali","Kivexa","Klisyri","Kogenate Bayer","Kolbam ","Komboglyze","Koselugo","Kovaltry","Kriptazen","Kromeya","Krystexxa","Kuvan","Kymriah","Kynamro","Kyntheum","Kyprolis","Labazenit","Lacosamide Accord","Lacosamide Adroiq","Lacosamide UCB","Lamivudine Teva","Lamivudine Teva Pharma B.V.","Lamivudine/Zidovudine Teva","Lamzede","Lantus","Lartruvo","Latuda","Laventair Ellipta (previously Laventair)","Ledaga","Leflunomide medac","Leflunomide ratiopharm","Leflunomide Teva","Leflunomide Zentiva (previously Leflunomide Winthrop)","Leganto","Lemtrada","Lenalidomide Accord","Lenalidomide Krka (previously Lenalidomide Krka d.d. Novo mesto)","Lenalidomide Krka d.d.","Lenalidomide Krka d.d. Novo mesto (previously Lenalidomide Krka)","Lenalidomide Mylan","Lenvima","Leqvio","Letifend","Leucofeligen FeLV/RCP","Leucogen","LeukoScan","Levemir","Levetiracetam Accord","Levetiracetam Actavis","Levetiracetam Actavis Group","Levetiracetam Hospira","Levetiracetam ratiopharm","Levetiracetam Sun","Levetiracetam Teva","Levitra","Levodopa/Carbidopa/Entacapone Orion","Levviax","Lextemy","Libertek","Libmeldy","Libmyris","Librela","Libtayo","Lifmior","Liprolog","Liprolog","Litak","Litfulo","Livensa","Livmarli","Livogiva","Livtencity","Lixiana","Locametz","Locatim (previously Serinucoli)","Lodipressin","Lojuxta","Lokelma","Longrange","Lonquex","Lonsurf","Lopinavir/Ritonavir Mylan","Lorviqua","Loxicom","Lucentis","Lumark","Lumeblue (previously known as Methylthioninium chloride Cosmo)","Lumigan","Luminity","Lumoxiti","Lumykras","Lunsumio","Lupkynis","Lusduna","Lutathera","Lutetium (177Lu) chloride Billev (previously Illuzyce)","Luveris","Luxturna","Lydaxx","Lydisilka","Lyfnua","Lymphoseek","Lympreva","Lynparza","Lyrica","LysaKare","Lysodren","Lytgobi","Lyumjev (previously Liumjev)","Lyxumia ","M-M-RVaxPro","MabCampath","MabThera","Maci","Macugen","Marixino (previously Maruxa)","Masican","Masipro","Masivet","Masiviera","Matever","Mavenclad","Maviret","Mayzent","Medicinal Oxygen Air Liquide Sante","medicineName","Mekinist","Mektovi","Melatonin Neurim","Melosus","Melovem","Meloxidolor","Meloxidyl","Meloxivet","Meloxoral","Memantine Accord","Memantine LEK","Memantine Merz","Memantine Mylan","Memantine ratiopharm","MenQuadfi","Menveo","Mepact","Mepsevii","Metacam","Metalyse","Methylthioninium chloride Proveblue","Mhyosphere PCV ID","Micardis","MicardisPlus","Miglustat Dipharma","Miglustat Gen.Orph","Milnacipran Pierre Fabre Medicament","Mimpara","Minjuvi","MiPet Easecto","Mirapexin","Mirataz","Mircera","Mirvaso","Mixtard","Modigraf","Monotard","Mounjaro","Moventig","Movymia","Mozobil","MS-H Vaccine","Mulpleo (previously Lusutrombopag Shionogi)","Multaq","Mvabea","Mvasi","Myalepta","Mycamine","Mycapssa","Myclausen","Mycograb","Mycophenolate mofetil Teva","Myfenax","Mylotarg","Mylotarg","Myocet liposomal (previously Myocet)","Myozyme","Mysildecard","Mysimba","Naglazyme","Namuscla","Nasym","Natalizumab Elan Pharma","Natpar","Naxcel","Nemdatine","Neoclarityn","Neocolipor","Neofordex","NeoRecormon","NeoSpect","Neparvis","Nepexto","Neptra","Nerlynx","Nerventra","Nespo","Netvax","Neulasta","Neupopeg","Neupro","Neuraceq","NeuroBloc","Nevanac","Nevirapine Teva","Nexavar","NexGard","NexGard Combo","Nexgard Spectra","Nexium Control","NexoBrid","Nexpovio","Nexviadyme","Ngenla","Nilemdo","Nimenrix","Nimvastid","Ninlaro","Nitisinone MDK (previously Nitisinone MendeliKABS)","Nityr","Nivestim","Nivolumab BMS","Nobilis IB 4-91","Nobilis IB Primo QX","Nobilis Influenza H5N2","Nobilis Influenza H5N6","Nobilis Influenza H7N1","Nobilis OR Inac","Nobivac Bb","Nobivac DP Plus","Nobivac L4","Nobivac LeuFel","Nobivac Myxo-RHD","Nobivac Myxo-RHD Plus","Nobivac Piro","Nodetrip (previously Xeristar)","Nonafact","Nordimet","Norvir","Nouryant","Novaquin","Novem","NovoEight","NovoMix","NovoNorm","NovoRapid","NovoSeven","NovoThirteen","Noxafil","Nplate","Nubeqa","Nucala","Nuceiva","Nuedexta","Nulibry","Nulojix","Numient","Nustendi","NutropinAq","Nuvaxovid","Nuwiq","Nyracta","Nyvepria","Nyxoid","Nyxthracis (previously Obiltoxaximab SFL)","Obizur","Ocaliva","Ocrevus","Odefsey","Odomzo","Ofev","Ogivri","Ogluo","Okedi","Olansek","Olanzapine Apotex","Olanzapine Cipla (previously Olanzapine Neopharma)","Olanzapine Glenmark","Olanzapine Glenmark Europe","Olanzapine Mylan","Olanzapine Teva","Olazax","Olazax Disperzi","Olumiant","Olysio","Omblastys","Omidria","Omnitrope","Omvoh","Onbevzi","Onbrez Breezhaler","Oncaspar","Oncept IL-2","Ondexxya","Onduarp","Ongentys","Onglyza","Onivyde pegylated liposomal (previously known as Onivyde)","Onpattro","Onsenal","Onsior","Ontilyv","Ontozry","Ontruzant","Onureg","Onzeald","Opatanol","Opdivo","Opdualag","Opfolda","Opgenra","Oprymea","Opsumit","Optaflu","Optimark","Optison","Optruma","Opulis","Opzelura","Orencia","Orfadin","Orgalutran","Orgovyx","Orkambi","Orlaam","Orladeyo","Orphacol","Orserdu","Osigraft","Oslif Breezhaler","Osseor","Osurnia","Otezla","Ovaleap","Ovitrelle","OvuGel","Oxbryta","Oxervate","Oxlumo","Oxybee","Oxyglobin","Oyavas","Ozawade","Ozempic","Ozurdex","Padcev","Paglitaz","Palforzia","Palladia","Palonosetron Accord","Palonosetron Hospira","Palynziq","Panacur AquaSol","Pandemic influenza vaccine H5N1 AstraZeneca (previously Pandemic influenza vaccine H5N1 Medimmune)","Pandemic Influenza Vaccine H5N1 Baxter AG","Pandemrix","Panretin","Pantecta Control","Pantoloc Control","Pantozol Control","Parareg","Parsabiv","Parvoduk","Patrex","Paxene","Paxlovid","Pazenir","PecFent","Pedea","Pedmarqsi","Pegasys","PegIntron","Pelgraz","Pelmeg","Pelzont","Pemazyre","Pemetrexed Accord","Pemetrexed Baxter","Pemetrexed Fresenius Kabi","Pemetrexed Krka","Pemetrexed Lilly","Pemetrexed medac","Pemetrexed Pfizer (previously known as Pemetrexed Hospira UK Limited)","Pemetrexed Pfizer (previously Pemetrexed Hospira)","Pemetrexed Sandoz","Pepaxti","Pergoveris","Perjeta","Pexion","Peyona (previously Nymusa)","Pheburane","Phelinun","Phesgo","PhotoBarr","Picato","Pifeltro","Pioglitazone Accord","Pioglitazone Actavis","Pioglitazone Krka","Pioglitazone Teva","Pioglitazone Teva Pharma","Piqray","Pirfenidone axunio (previously Pirfenidone AET)","Pirfenidone Viatris","Pirsue","Pixuvri","Plavix","Plegridy","Plenadren","Plerixafor Accord","Pluvicto","Polivy","Pombiliti","Ponvory","Porcilis AR-T DF","Porcilis ColiClos","Porcilis PCV","Porcilis PCV ID","Porcilis PCV M Hyo","Porcilis Pesti","Porcilis Porcoli Diluvac Forte (previously Porcilis Porcoli)","Portrazza","Posaconazole Accord","Posaconazole AHCL","Posaconazole SP","Posatex","Possia","Potactasol","Poteligeo","Poulvac E. coli","Poulvac Flufend H5N3 RG","Prac-tic","Pradaxa","Praluent","Pramipexole Accord","Pramipexole Teva","Prandin","Prasugrel Mylan","Pravafenix","Praxbind","Pregabalin Accord","Pregabalin Mylan","Pregabalin Mylan Pharma","Pregabalin Pfizer","Pregabalin Sandoz","Pregabalin Sandoz GmbH","Pregabalin Zentiva","Pregabalin Zentiva k.s.","PreHevbri","Preotact","Prepandemic Influenza Vaccine (H5N1) (Split Virion, Inactivated, Adjuvanted) GlaxoSmithKline Biologicals","Prepandemic influenza vaccine (H5N1) (surface antigen, inactivated, adjuvanted) Novartis Vaccines and Diagnostics","Prepandrix","Prevenar","Prevenar 13","Prevexxion RN","Prevexxion RN+HVT+IBD","Previcox","Prevomax","Prevymis","Prezista","Prialt","Primavax","Pritor","PritorPlus","Privigen","Procomvax","Procoralan","Procox","Procysbi","Profender","Prolia","ProMeris","ProMeris Duo","Prometax","ProQuad","Protaphane","Protelos","Proteq West Nile","ProteqFlu","ProteqFlu-Te","Protopic","Protopy","Provenge","ProZinc","Pruban","Pulsaflox","Pumarix","Puregon","Purevax FeLV","Purevax Rabies","Purevax RC","Purevax RCCh","Purevax RCP","Purevax RCP FeLV","Purevax RCPCh","Purevax RCPCh FeLV","Pylclari","Pylobactell","Pylori-Chek","Pyrukynd","Qaialdo","Qarziba (previously Dinutuximab beta EUSA and Dinutuximab beta Apeiron)","Qdenga","Qinlock","Qsiva","Qtern","Qtrilmet","Quadramet","Quadrisol","Quinsair","Quintanrix","Quixidar","Quofenix","Qutavina","Qutenza","Quviviq","Rabigen SAG2","Rabitec","Raloxifene Teva","Ranexa (previously Latixa)","Ranivisio","Rapamune","Rapilysin","Rapiscan","Raplixa","Raptiva","Rasagiline Mylan","Rasagiline ratiopharm","Rasilamlo","Rasilez","Rasilez HCT","Rasitrio","Ratiograstim","Ravicti","Raxone","Raylumis","Rayvow","Rayzon","Reagila","Reasanz","Rebetol","Rebif","Reblozyl","Recarbrio","Recocam","Reconcile","Recuvyra","ReFacto AF","Refixia","Refludan","Regkirona","Regranex","Rekambys","Rekovelle","Relistor","Relvar Ellipta","Remicade","Removab","Remsima","Renagel","Renvela","Repaglinide Accord","Repaglinide Krka","Repaglinide Teva","Repatha","Replagal","ReproCyc ParvoFLEX","Repso","Resolor","Respiporc Flu3","Respiporc FLUpan H1N1","Respreeza","Retacrit","Retsevmo","Revasc","Revatio","Revestive","Revinty Ellipta","RevitaCAM","Revlimid","Revolade","Rexxolide","Reyataz","Rezolsta","Rheumocam","Rhiniseng","Rhokiinsa","Rhucin","Riarify (previously CHF 5993 Chiesi Farmaceutici S.p.A.)","Ribavirin BioPartners","Ribavirin Mylan (previously Ribavirin Three Rivers)","Ribavirin Teva","Ribavirin Teva Pharma B.V.","Rienso","Rilonacept Regeneron (previously Arcalyst)","Riltrava Aerosphere","Rilutek","Riluzole Zentiva","Rinvoq","Riprazo","Riprazo HCT ","Ristaben","Ristempa","Ristfor","Ritemvia","Ritonavir Mylan","Rituzena (previously Tuxella)","Rivaroxaban Accord","Rivaroxaban Viatris (previously Rivaroxaban Mylan)","Rivastigmine 1 A Pharma","Rivastigmine 3M Health Care Ltd","Rivastigmine Actavis","Rivastigmine Hexal","Rivastigmine Sandoz","Rivastigmine Teva","Rixathon","Riximyo","Rixubis","Rizmoic","RoActemra","Roclanda","Roctavian","Rolufta Ellipta (previously Rolufta)","Ronapreve","Rotarix","Rotashield","RotaTeq","Roteas","Rozlytrek","Rubraca","Ruconest","Rukobia","Ruxience","Rxulti","Rybelsus","Rybrevant","Rydapt","Ryeqo","Ryzodeg","Sabervel","Samsca","Sancuso","Saphnelo","Sapropterin Dipharma","Sarclisa","Savene","Saxenda","Scemblix","Scenesse","Scintimun","Sebivo","Sedadex","Seebri Breezhaler","Seffalair Spiromax","Segluromet","Selincro","Semglee","Semintra","Senshio","Senstend","Sepioglin","Sevelamer carbonate Winthrop (previously Sevelamer carbonate Zentiva)","SevoFlo","Sevohale (previously known as Sevocalm)","Shingrix","Sialanar","Sibnayal","Sifrol","Signifor","Siklos","Silapo","Sildenafil Actavis","Sildenafil ratiopharm","Sildenafil Teva","Sileo","Silgard","Silodosin Recordati","Silodyx","Simbrinza","Simparica","Simparica Trio","Simponi","Simulect","Sirturo","Sitagliptin / Metformin hydrochloride Accord","Sitagliptin / Metformin hydrochloride Mylan","Sitagliptin / Metformin hydrochloride Sun","Sitagliptin Accord","Sitagliptin SUN","Sivextro","Sixmo","Skilarence","Skyrizi","Skysona","Skytrofa (previously Lonapegsomatropin Ascendis Pharma)","Slentrol","Slenyto","Sogroya","Sohonos","Solensia","Soliris","Solumarv","Solymbic","Somac Control","SomaKit TOC","Somatropin Biopartners","Somavert","Sonata","Sondelbay","SonoVue","Sorafenib Accord ","Sotyktu","Sovaldi","Sovrima","Spectrila","Spedra","Spevigo","Spherox","Spikevax (previously COVID-19 Vaccine Moderna)","Spinraza","Spironolactone Ceva","Spravato","Sprimeo","Sprimeo HCT","Sprycel","Stalevo","Staquis","Starlix","Startvac","Stayveer","Steglatro","Steglujan","Stelara","Stelfonta","Stimufend","Stivarga","Stocrin","Strangvac","Strensiq","Striascan","Stribild","Strimvelis","Stronghold","Stronghold Plus","Suboxone","Sugammadex Adroiq","Sugammadex Amomed","Sugammadex Fresenius Kabi","Sugammadex Mylan","Sugammadex Piramal","Suiseng Diff/A","Suliqua","Sumatriptan Galpharm","Sunitinib Accord","Sunlenca","Sunosi","Supemtek","Suprelorin","Sustiva","Sutent","Suvaxyn Aujeszky 783 + O/W","Suvaxyn Circo","Suvaxyn Circo+MH RTU","Suvaxyn CSF Marker","Suvaxyn PCV","Suvaxyn PRRS MLV","Sycrest","Sylvant","Symkevi","Symtuza","Synagis","Synflorix","Synjardy","Syvazul BTV","Tabrecta","Tacforius","TachoSil","Tadalafil Lilly","Tadalafil Mylan","Tafinlar","Tagrisso","Takhzyro","Talmanco (previously Tadalafil Generics)","Taltz","Taluvian","Talvey","Talzenna","Tamiflu","Tandemact","Tarceva","Targretin","Tasermity","Tasigna","Tasmar","Tavlesse","Tavneos","Taxespira (previously Docetaxel Hospira UK Limited )","Taxotere","Tecartus","Tecentriq","Tecfidera","Tecnemab K1","Tecovirimat SIGA","Tecvayli","Tegsedi","Tekturna","Telmisartan Actavis","Telmisartan Teva","Telmisartan Teva Pharma","Telzir","Temodal","Temomedac","Temozolomide Accord","Temozolomide Hexal","Temozolomide Sandoz","Temozolomide Sun","Temozolomide Teva","Temybric Ellipta","Tenecteplase Boehringer Ingelheim Pharma GmbH  Co. KG","Tenkasi (previously Orbactiv)","Tenofovir disoproxil Mylan","Tenofovir disoproxil Zentiva","Tepadina","Tepkinly","Tepmetko","Teriflunomide Accord","Teriflunomide Mylan","Teriparatide Sun","Terrosa","Tesavel","Teslascan","Tessie","Tevagrastim","Tevimbra","Teysuno","Tezspire","Thalidomide BMS (previously Thalidomide Celgene)","Thalidomide Lipomed","Thelin","Theryttrex","Thiotepa Riemser","Thorinane","Thymanax","Thymanax","Thyrogen","Tibsovo","Tigecycline Accord","Tikosyn","Tivicay","Tobi Podhaler","Tolucombi","Tolura","Tolvaptan Accord","Tookad","Topotecan Actavis","Topotecan Eagle","Topotecan Hospira","Topotecan Teva","Torisel","Toujeo (previously Optisulin)","Tovanor Breezhaler","Toviaz","Tracleer","Tractocile","Trajenta","Translarna","Travatan","Trazec","Trazimera","Trecondi","Tredaptive","Trelegy Ellipta","Tremelimumab AstraZeneca","Tremfya","Trepulmix","Tresiba","Trevaclyn","Trevicta (previously Paliperidone Janssen)","Triacelluvax","Trifexis","Trimbow","Trisenox","Tritanrix HepB","Triumeq","Trixeo Aerosphere","Trizivir","Trobalt","Trocoxil","Trodelvy","Trogarzo","Trovan","Trovan IV","Truberzi","Trudexa","Trulicity","Trumenba","TruScient","Truvada","Truvelog Mix 30","Truxima","Trydonis","Tukysa","Tulaven","Tulinovet","Tulissin","Turalio","Turvel","Turvel IV","Twinrix Adult","Twinrix Paediatric","Twynsta","Tybost","Tyenne","Tygacil","Tyruko","Tysabri","Tyverb","Ubac","Ucedane","Udenyca","Ulipristal Acetate Gedeon Richter","Ultibro Breezhaler","Ultifend ND IBD","Ultomiris","Ultratard","Ulunar Breezhaler","Unituxin","UpCard","Uplizna","Uprima","Upstaza","Uptravi","Urorec","Vaborem","Vabysmo","Vafseo","Valdoxan","Valdoxan","Valdyn","Valdyn (previously Kudeq)","Valtropin","Vanflyta","Vanflyta","Vaniqa","Vantavo (previously Alendronate sodium and colecalciferol, MSD)","Vantobra","Vantobra (previously Tobramycin PARI)","Vargatef","VarroMed","Varuby","Vaxchora","Vaxelis","Vaxneuvance","Vaxxitek HVT+IBD","Vaxzevria (previously COVID-19 Vaccine AstraZeneca)","Vazkepa","Vectibix","Vectormune FP ILT","Vectormune FP ILT + AE","Vectormune ND","Vectra 3D","Vectra Felis","Vedrop","Vegzelma","Veklury","Velactis","Velcade","Velmetia","Velosulin","Velphoro","Veltassa","Vemlidy","Venclyxto","Ventavis","Venvia","Vepacel","Vepured","Veraflox","Veraflox","VeraSeal","Verkazia","Verquvo","Versican Plus DHPPi","Versican Plus DHPPi/L4","Versican Plus DHPPi/L4R","Versican Plus L4","Versican Plus Pi","Versican Plus Pi/L4","Versican Plus Pi/L4R","Verzenios","Veyvondi","Vfend","Viagra","Vibativ","Victoza","Victrelis","Vidaza","VidPrevtyn Beta","Viekirax","Vihuma","Vildagliptin / Metformin hydrochloride Accord","Vimizim","Vimpat","Vipdomet","Vipidia","Viracept","Viraferon","ViraferonPeg","Viramune","Virbagen Omega","Viread","Vistide","Visudyne","Vitekta","Vitrakvi","Vitrasert Implant","Vitravene","Vivanza","Vizamyl","Vizarsin","Vizimpro","Vocabria","Vokanamet","Volibris","Voncento","Voraxaze","Voriconazole Accord","Voriconazole Hikma (previously Voriconazole Hospira)","Vosevi","Votrient","Votubia","Voxzogo","Vpriv","Vumerity","Vydura","Vyepti","Vylaer Spiromax","Vyndaqel","Vyvgart","Vyxeos liposomal (previously known as Vyxeos)","Wakix","Waylivra","Wegovy ","Wilzin","Xadago","Xagrid","Xalkori","Xaluprine (previously Mercaptopurine Nova Laboratories)","Xapit","Xarelto","Xelevia","Xeljanz","Xeljanz","Xeloda","Xenical","Xenleta","Xenpozyme","Xeplion","Xerava","Xermelo","Xevudy","Xgeva","Xiapex","Xigduo","Xigris","Xiliarx","Ximluci","Xofigo","Xofluza","Xolair","Xospata","Xoterna Breezhaler","Xromi","Xtandi","Xultophy","Xydalba","Xyrem","Yargesa","Yarvitan","Yellox","Yentreve","Yervoy","Yesafili","Yescarta","Yondelis","Yondelis","Ypozane","Yselty","Ytracis","Yttriga","Yuflyma","Zabdeno","Zactran","Zalasta","Zalmoxis","Zaltrap","Zalviso","Zartra","Zarzio","Zavesca","Zavicefta","Zebinix","Zeffix","Zeftera (previously Zevtera)","Zejula","Zelboraf","Zeleris","Zelnorm","Zenalpha","Zenapax","Zepatier","Zeposia","Zerbaxa","Zercepac","Zerene","Zerit","Zessly","Zevalin","Ziagen","Ziextenzo","Zimbus Breezhaler","Zimulti","Zinbryta","Zinforo","Zinplava","Zirabev","Zoely","Zokinvy","Zoledronic Acid Accord","Zoledronic acid Actavis","Zoledronic Acid Hospira","Zoledronic acid medac","Zoledronic acid Mylan","Zoledronic acid Teva","Zoledronic acid Teva Generics","Zoledronic acid Teva Pharma","Zolgensma","Zolsketil pegylated liposomal","Zolvix","Zomarist","Zometa","Zonegran","Zonisamide Mylan","Zontivity","Zoonotic Influenza Vaccine Seqirus","Zostavax","Ztalmy","Zubrin","Zubsolv","Zulvac 1 Bovis","Zulvac 1 Ovis","Zulvac 1+8 Bovis","Zulvac 1+8 Ovis","Zulvac 8 Bovis","Zulvac 8 Ovis","Zulvac BTV","Zulvac SBV","Zuprevo","Zurampic","Zutectra","Zyclara","Zycortal","Zydelig","Zykadia","Zyllt","Zynlonta ","Zynquista","Zynrelef","Zynteglo","Zypadhera","Zyprexa","Zyprexa Velotab","Zytiga"
    ];
  final recentdrugsbrandName = [
    "Search for example: 'Slenyto'"

  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: () {
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
      FutureBuilder<List<DrugListBrandName>>(
          future: _drugListbrandName.getDrugListbrandName(query),
          builder: (context, snapshot) {
            var dataBrandname = snapshot.data;
            if (!snapshot.hasData) {
              return  const Center(
                child: SpinKitCubeGrid(
                color: Colors.white,
                size: 70,
              ),
              );
            }
            return ListView.builder(
              itemCount: dataBrandname?.length,
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
                                          child: Text('Category: ${dataBrandname?[index].category.name}',style: const TextStyle(color: Colors.white54, fontSize: 12),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                          child: Text('${dataBrandname?[index].medicineName}',
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
                                          child: Text('${dataBrandname?[index].innName}',
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                          child: Text('Active Substance: ${dataBrandname?[index].activeSubstance}',
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
                                          child: Text('${dataBrandname?[index].therapeuticArea}',
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
                                          child: Text('${dataBrandname?[index].humanPharmacotherapeuticGroup}',
                                              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                        ),

                                        const Padding(
                                          padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                          child: Text('Marketing Authorization Company',
                                            style: TextStyle(color: Colors.white54, fontSize: 12),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                          child: Text('${dataBrandname?[index].marketingAuthorisationHolderorCompanyName}',
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
                                          child: Text('${dataBrandname?[index].authorisationStatus.name}',
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
                                          child: Text('${dataBrandname?[index].conditionOrIndication}',
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
                                          child: Text('Product Number: ${dataBrandname?[index].productNumber}; ATC-Code: ${dataBrandname?[index].atccode}, Generic? ${dataBrandname?[index].generic.name}, Biosimilar? ${dataBrandname?[index].biosimilar.name}, Conditional Approval: ${dataBrandname?[index].conditionalApproval.name}, Exceptional Circumstances: ${dataBrandname?[index].exceptionalCircumstances.name}, Accelerated Assessment: ${dataBrandname?[index].acceleratedAssessment.name}, Orphan Medicine: ${dataBrandname?[index].orphanMedicine.name}, Marketing Authorization Date: ${dataBrandname?[index].marketingAuthorisationDate}, Date of Opinion: ${dataBrandname?[index].dateofOpinion}, Decision Date: ${dataBrandname?[index].decisionDate}, First Published: ${dataBrandname?[index].firstPublished}, Revision Date: ${dataBrandname?[index].revisionDate}, Revision Number: ${dataBrandname?[index].revisionNumber}, url: ${dataBrandname?[index].url}',
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
        ? recentdrugsbrandName
        : drugstosearchbrandName.where((drugtosearchBrandname) {
      final drugtosearchBrandnamelower = drugtosearchBrandname.toLowerCase();
      final queryLower = query.toLowerCase();

      return drugtosearchBrandnamelower.startsWith(queryLower);
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
          leading: const Icon(Icons.medication),
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