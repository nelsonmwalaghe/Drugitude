import 'package:drugitudeleviosa/apiServiceModels/therapeuticAreaApiModel.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../drugListCallModel/drugListTherapueticAreaModel.dart';
import '../pages/drugrequestpage.dart';
// Note this is for INN Search key words to remember
// drugstosearch-innName
// recentdrugs - innName
// FetchDrug - innName
// _drugList - innName
// data - InnName

class SearchDrugTherapueticArea extends SearchDelegate {
  final FetchDrugTherapueticArea _drugListTherapueticArea = FetchDrugTherapueticArea();
  final drugstosearchTherapueticArea = [
    "Breath Tests;  Helicobacter Infections","Breath Tests;  Helicobacter Infections","Breath Tests;  Helicobacter Infections","Glioma","Keratosis, Actinic;  Carcinoma, Basal Cell","HIV Infections","HIV Infections","HIV Infections","HIV Infections","Osteoporosis, Postmenopausal;  Osteoporosis","Osteoporosis","Arthritis, Psoriatic;  Arthritis, Juvenile Rheumatoid;  Arthritis, Rheumatoid","Breast Neoplasms","Prostatic Neoplasms","Prostatic Neoplasms","Prostatic Neoplasms","Prostatic Neoplasms","Dermatitis, Atopic","Leukemia, Lymphocytic, Chronic, B-Cell","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Hidradenitis Suppurativa;  Psoriasis;  Uveitis;  Arthritis, Rheumatoid;  Spondylitis, Ankylosing;  Crohn Disease;  Colitis, Ulcerative;  Arthritis, Psoriatic","Arthritis, Rheumatoid;  Arthritis, Psoriatic;  Psoriasis;  Spondylitis, Ankylosing;  Uveitis;  Hidradenitis Suppurativa;  Colitis, Ulcerative;  Crohn Disease;  Arthritis, Juvenile Rheumatoid","Arthritis, Rheumatoid;  Arthritis, Psoriatic;  Psoriasis;  Spondylitis, Ankylosing;  Uveitis;  Hidradenitis Suppurativa;  Colitis, Ulcerative;  Crohn Disease;  Arthritis, Juvenile Rheumatoid","Spondylitis, Ankylosing;  Hidradenitis Suppurativa;  Psoriasis;  Arthritis, Juvenile Rheumatoid;  Uveitis","Arthritis, Rheumatoid;  Arthritis, Psoriatic;  Spondylitis, Ankylosing;  Uveitis;  Hidradenitis Suppurativa;  Colitis, Ulcerative;  Arthritis, Juvenile Rheumatoid;  Crohn Disease;  Skin Diseases, Papulosquamous","Spondylitis, Ankylosing;  Arthritis, Rheumatoid;  Uveitis;  Colitis, Ulcerative;  Psoriasis;  Arthritis, Psoriatic;  Crohn Disease;  Hidradenitis Suppurativa;  Arthritis","Arthritis, Psoriatic;  Arthritis, Juvenile Rheumatoid;  Arthritis, Rheumatoid;  Colitis, Ulcerative;  Crohn Disease;  Hidradenitis Suppurativa;  Psoriasis;  Spondylitis, Ankylosing;  Uveitis","Arthritis, Psoriatic;  Colitis, Ulcerative;  Arthritis, Juvenile Rheumatoid;  Spondylitis, Ankylosing;  Psoriasis;  Crohn Disease;  Arthritis, Rheumatoid","Arthritis, Rheumatoid;  Arthritis, Juvenile Rheumatoid;  Spondylitis, Ankylosing;  Arthritis, Psoriatic;  Psoriasis;  Hidradenitis Suppurativa;  Crohn Disease;  Colitis, Ulcerative;  Uveitis","Spondylitis, Ankylosing;  Arthritis, Juvenile Rheumatoid;  Uveitis;  Colitis, Ulcerative;  Psoriasis;  Arthritis, Psoriatic;  Crohn Disease;  Arthritis, Rheumatoid","Arthritis, Rheumatoid;  Arthritis, Psoriatic;  Psoriasis;  Spondylitis, Ankylosing;  Uveitis;  Hidradenitis Suppurativa;  Colitis, Ulcerative;  Crohn Disease;  Arthritis, Juvenile Rheumatoid","Hidradenitis Suppurativa;  Psoriasis;  Arthritis, Juvenile Rheumatoid;  Uveitis;  Arthritis, Rheumatoid;  Spondylitis, Ankylosing;  Arthritis, Psoriatic","Arthritis, Rheumatoid;  Arthritis, Juvenile Rheumatoid;  Psoriasis;  Arthritis, Psoriatic;  Spondylitis, Ankylosing;  Uveitis;  Colitis, Ulcerative;  Crohn Disease","Hidradenitis Suppurativa;  Arthritis, Psoriatic;  Psoriasis;  Crohn Disease;  Arthritis, Juvenile Rheumatoid;  Uveitis;  Arthritis, Rheumatoid;  Colitis, Ulcerative;  Spondylitis, Ankylosing","Arthritis, Psoriatic;  Spondylitis, Ankylosing;  Crohn Disease;  Colitis, Ulcerative;  Hidradenitis Suppurativa;  Psoriasis;  Arthritis, Rheumatoid","Spondylitis, Ankylosing;  Arthritis, Rheumatoid;  Arthritis, Psoriatic;  Crohn Disease","Hepatitis B, Chronic","","","","","","","","","","","","","","","Protoporphyria, Erythropoietic","Carcinoma, Non-Small-Cell Lung","Macular Edema;  Retinal Vein Occlusion;  Diabetic Retinopathy;  Myopia, Degenerative;  Diabetes Complications","Wet Macular Degeneration;  Macular Edema;  Diabetes Complications","Colorectal Neoplasms","","","","Fabry Disease","Fabry Disease","Depressive Disorder, Major","Depressive Disorder, Major","Depressive Disorder, Major","Depressive Disorder, Major","Diabetes Mellitus, Type 2","Hemophilia B","Carcinoma, Non-Small-Cell Lung","Multiple Sclerosis","Leukemia, Lymphocytic, Chronic, B-Cell","Osteoporosis, Postmenopausal","Osteoporosis, Postmenopausal","Osteoporosis, Postmenopausal","Glycogen Storage Disease Type II","Hyperlipoproteinemia Type I","Dyslipidemias","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Sarcoma, Kaposi","","Hematopoietic Stem Cell Transplantation;  Graft vs Host Disease","Gout","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Breast Neoplasms","Genetic Diseases, Inborn;  Lung Diseases","Hypertension, Pulmonary","Hypertension, Pulmonary","Lambert-Eaton Myasthenic Syndrome","Lambert-Eaton Myasthenic Syndrome;  Paraneoplastic Syndromes, Nervous System;  Nervous System Neoplasms;  Paraneoplastic Syndromes;  Nervous System Diseases;  Autoimmune Diseases of the Nervous System;  Neurodegenerative Diseases;  Neuromuscular Diseases;  Neuromuscular Junction Diseases;  Immune System Diseases;  Autoimmune Diseases;  Autoimmune Diseases of the Nervous System;  Cancer;  Neoplasms","Respiratory Tract Infections","Carcinoma, Non-Small-Cell Lung","","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","HIV Infections","Thrombocythemia, Essential","Thrombocythemia, Essential","Arthritis, Rheumatoid;  COVID-19 virus infection","Cachexia;  Anorexia;  Carcinoma, Non-Small-Cell Lung","Drug-Related Side Effects and Adverse Reactions","Hypotension;  Shock","Candidiasis","Lupus Erythematosus, Systemic","Radioimmunodetection","Antithrombin III Deficiency","Prostatic Neoplasms","Arthroplasty;  Venous Thromboembolism","Venous Thromboembolism;  Stroke;  Arthroplasty","Erectile Dysfunction","Erectile Dysfunction","Erectile Dysfunction","Arthritis, Psoriatic;  Psoriasis","Vomiting;  Postoperative Nausea and Vomiting;  Cancer","Radionuclide Imaging;  Colorectal Neoplasms","Radiation Injuries","Schizophrenia;  Bipolar Disorder","Schizophrenia","Schizophrenia;  Bipolar Disorder","Schizophrenia;  Bipolar Disorder","Schizophrenia;  Bipolar Disorder","Schizophrenia;  Bipolar Disorder","Leukemia, Promyelocytic, Acute","Leukemia, Promyelocytic, Acute","Leukemia, Promyelocytic, Acute","Leukemia, Promyelocytic, Acute","Malaria","Leukemia, Myelogenous, Chronic, BCR-ABL Positive","Bipolar Disorder","Hypophosphatasia","Precursor Cell Lymphoblastic Leukemia-Lymphoma","Muscular Dystrophy, Duchenne","HIV Infections","HIV Infections","HIV Infections","HIV Infections","Carcinoma, Transitional Cell;  Carcinoma, Non-Small-Cell Lung;  Urologic Neoplasms;  Breast Neoplasms;  Small Cell Lung Carcinoma","Migraine Disorders","Premature Birth","Premature Birth","Leukodystrophy, Metachromatic","Severe Combined Immunodeficiency","Prostatic Neoplasms","Microscopic Polyangiitis;  Wegener Granulomatosis","Glycogen Storage Disease Type II","Erectile Dysfunction","Gastrointestinal Stromal Tumors","Thrombocytopenia","Neuroendocrine Tumors","","","","Lymphoma, Follicular;  Lymphoma, Large B-Cell, Diffuse","Carcinoma, Renal Cell","Myelodysplastic Syndromes;  Leukemia, Myelomonocytic, Chronic;  Leukemia, Myeloid, Acute","Myelodysplastic Syndromes;  Leukemia, Myelomonocytic, Chronic;  Leukemia, Myeloid, Acute","Myelodysplastic Syndromes;  Leukemia, Myelomonocytic, Chronic;  Leukemia, Myeloid, Acute","Myelodysplastic Syndromes;  Leukemia, Myelomonocytic, Chronic;  Leukemia, Myeloid, Acute","Leukemia, Myeloid, Acute","Myelodysplastic Syndromes;  Leukemia, Myelomonocytic, Chronic;  Leukemia, Myeloid, Acute","","Graft Rejection","Hypertension","Hypertension","Cystic Fibrosis;  Respiratory Tract Infections","Influenza, Human","Arthritis, Rheumatoid","Graft Rejection;  Kidney Transplantation","Osteoporosis, Postmenopausal","Wound Healing;  Skin Ulcer","Guided Tissue Regeneration, Periodontal","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Tuberculosis, Multidrug-Resistant","","Multiple Myeloma","Graft Rejection;  Kidney Transplantation","Lupus Erythematosus, Systemic","Hypercholesterolemia;  Dyslipidemias","Hypercholesterolemia;  Dyslipidemias","","","Asthma","Angioedemas, Hereditary","Osteomyelitis;  Radionuclide Imaging","Homocystinuria","Homocystinuria","beta-Thalassemia","Venous Thromboembolism","Colorectal Neoplasms;  Breast Neoplasms;  Ovarian Neoplasms;  Fallopian Tube Neoplasms;  Peritoneal Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Carcinoma, Renal Cell;  Uterine Cervical Neoplasms","Colorectal Neoplasms;  Breast Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Carcinoma, Renal Cell;  Uterine Cervical Neoplasms","Colorectal Neoplasms;  Breast Neoplasms;  Ovarian Neoplasms;  Fallopian Tube Neoplasms;  Peritoneal Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Carcinoma, Renal Cell;  Uterine Cervical Neoplasms","Colorectal Neoplasms;  Breast Neoplasms;  Ovarian Neoplasms;  Fallopian Tube Neoplasms;  Peritoneal Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Carcinoma, Renal Cell;  Uterine Cervical Neoplasms","Colorectal Neoplasms;  Breast Neoplasms;  Ovarian Neoplasms;  Peritoneal Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Carcinoma, Renal Cell;  Uterine Cervical Neoplasms","Colorectal Neoplasms;  Breast Neoplasms;  Ovarian Neoplasms;  Fallopian Tube Neoplasms;  Peritoneal Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Carcinoma, Renal Cell;  Uterine Cervical Neoplasms","Colorectal Neoplasms;  Breast Neoplasms;  Ovarian Neoplasms;  Fallopian Tube Neoplasms;  Peritoneal Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Carcinoma, Renal Cell;  Uterine Cervical Neoplasms","Carcinoma, Non-Small-Cell Lung;  Breast Neoplasms;  Ovarian Neoplasms;  Colorectal Neoplasms;  Carcinoma, Renal Cell","Carcinoma, Renal Cell;  Peritoneal Neoplasms;  Ovarian Neoplasms;  Breast Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Fallopian Tube Neoplasms","Wet Macular Degeneration","Colorectal Neoplasms;  Breast Neoplasms;  Ovarian Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Carcinoma, Renal Cell","Colorectal Neoplasms;  Breast Neoplasms;  Ovarian Neoplasms;  Fallopian Tube Neoplasms;  Peritoneal Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Carcinoma, Renal Cell;  Uterine Cervical Neoplasms","Lymphoma, T-Cell, Cutaneous","Enterocolitis, Pseudomembranous","HIV Infections","Glaucoma, Open-Angle;  Ocular Hypertension","Glaucoma, Open-Angle;  Ocular Hypertension","Psoriasis","Melanoma","Epidermolysis Bullosa Dystrophica;  Epidermolysis Bullosa, Junctional","Wounds and Injuries;  Wound Healing","Acute Coronary Syndrome","Precursor Cell Lymphoblastic Leukemia-Lymphoma","","","","","","Hepatitis C, Chronic","Multiple Myeloma","Multiple Myeloma","Multiple Myeloma","Multiple Myeloma","Multiple Myeloma","Scleroderma, Systemic;  Hypertension, Pulmonary","Hypertension, Pulmonary;  Scleroderma, Systemic","Leukemia, Myeloid","Skin Aging","Torticollis","","","Lymphoma, Non-Hodgkin;  Hodgkin Disease","Schizophrenia","Lymphoma, Mantle-Cell","Carcinoma, Non-Small-Cell Lung","Skin Diseases","Glaucoma, Open-Angle;  Ocular Hypertension","Ocular Hypertension;  Glaucoma, Open-Angle","Glaucoma, Open-Angle;  Ocular Hypertension","Epilepsy","Psoriasis","Wet Macular Degeneration","Pain, Postoperative;  Ophthalmologic Surgical Procedures","Glomerulonephritis, IGA","Esophageal Diseases","Pulmonary Disease, Chronic Obstructive;  Asthma","Pulmonary Disease, Chronic Obstructive;  Asthma","Pulmonary Disease, Chronic Obstructive;  Asthma","Pulmonary Disease, Chronic Obstructive;  Asthma","Asthma;  Pulmonary Disease, Chronic Obstructive","Asthma","Asthma","Hepatitis D, Chronic","Acute Pain","Pain, Postoperative","Opioid-Related Disorders","Opioid-Related Disorders","Opioid-Related Disorders","Opioid-Related Disorders","Hypophosphatemia, Familial;  Hypophosphatemic Rickets, X-Linked Dominant;  Osteomalacia","Hematopoietic Stem Cell Transplantation","Hematopoietic Stem Cell Transplantation","Angioedemas, Hereditary","Prostatic Neoplasms, Castration-Resistant","Prostatic Neoplasms","Prostatic Neoplasms","","HIV Infections","HIV Infections","Thyroid Neoplasms","Carcinoma, Renal Cell;  Carcinomas, Hepatocellular","Apnea","Apnea","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Cryopyrin-Associated Periodic Syndromes;  Arthritis, Juvenile Rheumatoid;  Arthritis, Gouty","Acute Coronary Syndrome;  Vascular Surgical Procedures","","","","","","","","","","Lennox Gastaut Syndrome;  Epilepsies, Myoclonic","Colonic Neoplasms;  Breast Neoplasms;  Colorectal Neoplasms;  Stomach Neoplasms","Colonic Neoplasms;  Breast Neoplasms;  Colorectal Neoplasms;  Stomach Neoplasms","Colorectal Neoplasms","Colonic Neoplasms;  Breast Neoplasms;  Colorectal Neoplasms;  Stomach Neoplasms","Colonic Neoplasms;  Breast Neoplasms;  Colorectal Neoplasms;  Stomach Neoplasms","Stomach Neoplasms;  Breast Neoplasms;  Colonic Neoplasms;  Colorectal Neoplasms","Purpura, Thrombotic Thrombocytopenic","Carcinoma, Non-Small-Cell Lung","Neuralgia","Multiple Myeloma","Amino Acid Metabolism, Inborn Errors;  Propionic Acidemia","Hyperammonemia;  Amino Acid Metabolism, Inborn Errors","Schizophrenia","Hodgkin Disease;  Lymphoma, Non-Hodgkin","COVID-19 virus infection","Candidiasis;  Aspergillosis","Candidiasis;  Aspergillosis","Blood Coagulation Disorders, Inherited","Ascites;  Cancer","Leukemia, Myeloid","Gram-Negative Bacterial Infections","","Community-Acquired Infections;  Skin Diseases, Infectious;  Pneumonia","Pneumonia, Bacterial;  Soft Tissue Infections;  Pneumonia;  Urinary Tract Infections;  Gram-Negative Bacterial Infections","","Skin Diseases, Infectious;  Soft Tissue Infections","Bacterial Infections","Adenomatous Polyposis Coli","Carcinoma, Squamous Cell","Keratitis","Epilepsy","Carcinoma, Non-Small-Cell Lung","Neuronal Ceroid-Lipofuscinoses","Arthritis, Rheumatoid","Crohn Disease","Ovulation;  Ovulation Induction","Head and Neck Neoplasms;  Colorectal Neoplasms","Cartilage Diseases","Xanthomatosis, Cerebrotendinous;  Metabolism, Inborn Errors","Mycosis Fungoides","Cholera;  Immunization","Cholera","Digestive System Diseases;  Metabolism, Inborn Errors","Metabolism, Inborn Errors","","Anovulation;  Reproductive Techniques, Assisted;  Infertility, Female","","Conjunctivitis;  Keratitis","Corneal Diseases","Cytomegalovirus Retinitis","Multiple Myeloma","","Hyperparathyroidism","Hyperparathyroidism, Secondary;  Hypercalcemia","Hypercalcemia;  Parathyroid Neoplasms;  Hyperparathyroidism","Hypercalcemia;  Parathyroid Neoplasms;  Hyperparathyroidism","Glycogen Storage Disease Type II","Multiple Sclerosis","Leukemia, Hairy Cell","","Precursor Cell Lymphoblastic Leukemia-Lymphoma","Precursor Cell Lymphoblastic Leukemia-Lymphoma","","Peripheral Vascular Diseases;  Stroke;  Myocardial Infarction","Stroke;  Peripheral Vascular Diseases;  Atrial Fibrillation;  Myocardial Infarction;  Acute Coronary Syndrome","Stroke;  Peripheral Vascular Diseases;  Atrial Fibrillation;  Myocardial Infarction;  Acute Coronary Syndrome","Stroke;  Peripheral Vascular Diseases;  Myocardial Infarction;  Acute Coronary Syndrome","Peripheral Vascular Diseases;  Stroke;  Myocardial Infarction","Myocardial Infarction;  Acute Coronary Syndrome;  Peripheral Vascular Diseases;  Stroke","Peripheral Vascular Diseases;  Stroke;  Myocardial Infarction","Peripheral Vascular Diseases;  Stroke;  Myocardial Infarction","Peripheral Vascular Diseases;  Stroke;  Myocardial Infarction;  Acute Coronary Syndrome","Acute Coronary Syndrome;  Peripheral Vascular Diseases;  Myocardial Infarction;  Stroke","Peripheral Vascular Diseases;  Stroke;  Acute Coronary Syndrome;  Myocardial Infarction","Peripheral Vascular Diseases;  Stroke;  Myocardial Infarction","Peripheral Vascular Diseases;  Acute Coronary Syndrome;  Myocardial Infarction;  Stroke","Peripheral Vascular Diseases;  Stroke;  Myocardial Infarction","Peripheral Vascular Diseases;  Acute Coronary Syndrome;  Myocardial Infarction;  Stroke","Peripheral Vascular Diseases;  Acute Coronary Syndrome;  Myocardial Infarction;  Stroke","Myocardial Infarction;  Peripheral Vascular Diseases;  Stroke","Peripheral Vascular Diseases;  Stroke;  Myocardial Infarction","Peripheral Vascular Diseases;  Acute Coronary Syndrome;  Myocardial Infarction;  Stroke","Peripheral Vascular Diseases;  Stroke;  Myocardial Infarction","Peripheral Vascular Diseases;  Acute Coronary Syndrome;  Myocardial Infarction;  Stroke","Peripheral Vascular Diseases;  Stroke;  Myocardial Infarction","Peripheral Vascular Diseases;  Stroke;  Myocardial Infarction","Peripheral Vascular Diseases;  Stroke;  Myocardial Infarction","Peripheral Vascular Diseases;  Acute Coronary Syndrome;  Myocardial Infarction;  Stroke","Peripheral Vascular Diseases;  Stroke;  Myocardial Infarction","Peripheral Vascular Diseases","Stroke;  Peripheral Vascular Diseases;  Myocardial Infarction;  Acute Coronary Syndrome","Acute Coronary Syndrome;  Myocardial Infarction","Acute Coronary Syndrome;  Myocardial Infarction","Acute Coronary Syndrome;  Myocardial Infarction","Acute Coronary Syndrome;  Myocardial Infarction","","HIV Infections","Melanoma","","Hypercholesterolemia","Hyperphosphatemia","Cystic Fibrosis","Dupuytren Contracture","Debridement","Angioedemas, Hereditary","Radionuclide Imaging","Reproductive Techniques, Assisted;  Ovulation Induction;  Investigative Techniques","COVID-19 virus infection","COVID-19 virus infection","COVID-19 virus infection","COVID-19 virus infection","COVID-19 virus infection","COVID-19 virus infection","COVID-19 virus infection","Dermatitis, Atopic","Precursor Cell Lymphoblastic Leukemia-Lymphoma","Anemia, Sickle Cell","Carcinoma, Non-Small-Cell Lung","Meningeal Neoplasms","Arthroplasty, Replacement;  Venous Thromboembolism","Venous Thromboembolism;  Arthroplasty, Replacement","Melanoma","Hepatitis C, Chronic","Multiple Sclerosis","Graft Rejection;  Kidney Transplantation","Carcinoma, Non-Small-Cell Lung","Soft Tissue Infections;  Skin Diseases, Bacterial","Hemophilia A","Diabetes Mellitus, Type 2;  Heart Failure, Systolic;  Heart Failure;  Renal Insufficiency, Chronic","Diabetes Mellitus, Type 2;  Heart Failure, Systolic;  Heart Failure;  Renal Insufficiency, Chronic","Diabetes Mellitus, Type 2;  Heart Failure, Systolic;  Heart Failure;  Renal Insufficiency, Chronic","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Gram-Positive Bacterial Infections;  Bacteremia;  Soft Tissue Infections;  Endocarditis, Bacterial","Soft Tissue Infections;  Skin Diseases, Bacterial","Multiple Myeloma","Anemia;  Cancer;  Kidney Failure, Chronic","Kidney Failure, Chronic;  Anemia;  Cancer","Sleep Initiation and Maintenance Disorders","Urinary Incontinence, Urge;  Urinary Bladder, Overactive","Prostatic Neoplasms, Castration-Resistant","HIV Infections","HIV Infections","HIV Infections","HIV Infections","HIV Infections","HIV Infections","Rectal Fistula","Hepatitis C, Chronic","Precursor Cell Lymphoblastic Leukemia-Lymphoma;  Leukemia, Myelogenous, Chronic, BCR-ABL Positive","Precursor Cell Lymphoblastic Leukemia-Lymphoma;  Leukemia, Myelogenous, Chronic, BCR-ABL Positive","Precursor Cell Lymphoblastic Leukemia-Lymphoma;  Leukemia, Myelogenous, Chronic, BCR-ABL Positive","Lymphoma, Non-Hodgkin","Leukemia, Myeloid, Acute","Leukemia, Myeloid","Peanut Hypersensitivity","beta-Thalassemia;  Iron Overload","Iron Overload;  beta-Thalassemia","Iron Overload;  beta-Thalassemia","beta-Thalassemia;  Iron Overload","Iron Overload;  beta-Thalassemia","Hepatic Veno-Occlusive Disease","Prostatic Neoplasms","Prostatic Neoplasms","Community-Acquired Infections","Tuberculosis, Multidrug-Resistant","Dengue","Dengue","Bone Resorption;  Osteoporosis, Postmenopausal","Fractures, Bone;  Neoplasm Metastasis","Radionuclide Imaging","Venous Thrombosis","Rhinitis, Allergic, Perennial;  Urticaria;  Rhinitis, Allergic, Seasonal","Rhinitis, Allergic, Perennial;  Urticaria;  Rhinitis, Allergic, Seasonal","Rhinitis, Allergic, Perennial;  Urticaria;  Rhinitis, Allergic, Seasonal","Rhinitis, Allergic, Perennial;  Urticaria;  Rhinitis, Allergic, Seasonal","Rhinitis, Allergic, Perennial;  Urticaria;  Rhinitis, Allergic, Seasonal","Rhinitis, Allergic, Perennial;  Rhinitis, Allergic, Seasonal","Rhinitis, Allergic, Perennial;  Rhinitis, Allergic, Seasonal;  Urticaria","Rhinitis, Allergic, Perennial;  Urticaria;  Rhinitis, Allergic, Seasonal","Rhinitis, Allergic, Perennial;  Urticaria;  Rhinitis, Allergic, Seasonal","Rhinitis, Allergic, Seasonal","","","Psoriasis","Macular Edema;  Uveitis","Multiple Myeloma","Conscious Sedation","Premedication","","","","","Extravasation of Diagnostic and Therapeutic Materials","Neurobehavioral Manifestations","Tibial Fractures;  Fracture Fixation, Internal;  Spinal Fusion","","Pruritus","","","Multiple Sclerosis","Multiple Sclerosis, Relapsing-Remitting","Multiple Sclerosis, Relapsing-Remitting","Multiple Sclerosis, Relapsing-Remitting","Multiple Sclerosis, Relapsing-Remitting;  Multiple Sclerosis","Multiple Sclerosis, Relapsing-Remitting;  Multiple Sclerosis","Psoriasis","","Neuroblastoma","Neuroblastoma","Hepatitis B;  Tetanus;  Immunization;  Meningitis, Haemophilus;  Whooping Cough;  Poliomyelitis;  Diphtheria","Hepatitis B;  Tetanus;  Immunization;  Whooping Cough;  Poliomyelitis;  Diphtheria","Hepatitis B;  Tetanus;  Immunization;  Whooping Cough;  Diphtheria","Hepatitis B;  Tetanus;  Immunization;  Diphtheria","Immunization;  Tetanus;  Whooping Cough;  Diphtheria","Hepatitis B;  Tetanus;  Immunization;  Whooping Cough;  Diphtheria","Hepatitis B;  Tetanus;  Immunization;  Meningitis, Haemophilus;  Whooping Cough;  Poliomyelitis;  Diphtheria","Hepatitis B;  Tetanus;  Immunization;  Meningitis, Haemophilus;  Whooping Cough;  Poliomyelitis;  Diphtheria","Hepatitis B;  Tetanus;  Immunization;  Meningitis, Haemophilus;  Whooping Cough;  Poliomyelitis;  Diphtheria","Meningitis, Haemophilus;  Poliomyelitis;  Tetanus;  Diphtheria;  Whooping Cough;  Hepatitis B","Hepatitis B;  Tetanus;  Immunization;  Meningitis, Haemophilus;  Whooping Cough;  Diphtheria","","Multiple Sclerosis, Relapsing-Remitting","Head and Neck Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Adenocarcinoma;  Prostatic Neoplasms;  Breast Neoplasms","Head and Neck Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Adenocarcinoma;  Prostatic Neoplasms;  Breast Neoplasms","Head and Neck Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Adenocarcinoma;  Prostatic Neoplasms;  Stomach Neoplasms;  Breast Neoplasms","Head and Neck Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Adenocarcinoma;  Prostatic Neoplasms;  Stomach Neoplasms;  Breast Neoplasms","Head and Neck Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Adenocarcinoma;  Prostatic Neoplasms;  Stomach Neoplasms;  Breast Neoplasms","Stomach Neoplasms;  Prostatic Neoplasms;  Breast Neoplasms;  Head and Neck Neoplasms;  Carcinoma, Non-Small-Cell Lung","Head and Neck Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Adenocarcinoma;  Prostatic Neoplasms;  Breast Neoplasms","Carcinoma, Non-Small-Cell Lung;  Breast Neoplasms;  Prostatic Neoplasms","Stomach Neoplasms;  Adenoma;  Breast Neoplasms;  Carcinoma, Non-Small-Cell Lung;  Prostatic Neoplasms","Echocardiography","Atrial Fibrillation;  Atrial Flutter","HIV Infections","HIV Infections","HIV Infections","HIV Infections","HIV Infections","Pneumonia, Ventilator-Associated;  Pneumonia, Bacterial;  Urinary Tract Infections;  Bacterial Infections;  Cross Infection","Endometrial Neoplasms","Ovarian Neoplasms;  Sarcoma, Kaposi;  Multiple Myeloma","Sarcoma, Kaposi;  Multiple Myeloma;  Ovarian Neoplasms;  Breast Neoplasms","Breast Neoplasms","Breast Neoplasms;  Ovarian Neoplasms","Breast Neoplasms;  Ovarian Neoplasms;  Multiple Myeloma;  Sarcoma, Kaposi","","Atrial Fibrillation","Sepsis;  Multiple Organ Failure","Diabetes Mellitus, Type 2","Neuralgia;  Diabetic Neuropathies;  Depressive Disorder, Major;  Anxiety Disorders","Anxiety Disorders;  Diabetic Neuropathies;  Depressive Disorder, Major","Neuralgia;  Depressive Disorder, Major;  Anxiety Disorders;  Diabetes Mellitus","Urinary Incontinence, Stress","Neuralgia;  Diabetic Neuropathies;  Depressive Disorder, Major","Anxiety Disorders;  Depressive Disorder, Major;  Diabetic Neuropathies","Diabetic Neuropathies","Diabetic Neuropathies","Dermatitis, Atopic;  Prurigo;  Esophageal Diseases;  Asthma;  Sinusitis","Carcinoma, Non-Small-Cell Lung","Leukemia, Lymphocytic, Chronic, B-Cell;  Lymphoma, Follicular","","Hemorrhagic Fever, Ebola","Hemorrhagic Fever, Ebola","Hemorrhagic Fever, Ebola","Hemoglobinuria, Paroxysmal","Hemoglobinuria, Paroxysmal","Neuroendocrine Tumors;  Radionuclide Imaging","Stroke;  Venous Thromboembolism","Stroke;  Venous Thromboembolism","Psoriasis","HIV Infections","HIV Infections","HIV Infections","HIV Infections","HIV Infections","HIV Infections","HIV Infections","Myasthenia Gravis","Hirsutism","Hemophilia A","Hemophilia B","Candidiasis","","Breast Neoplasms","Amino Acid Metabolism, Inborn Errors","Hepatitis C, Chronic","Gaucher Disease","Adrenoleukodystrophy","Mucopolysaccharidosis IV","Multiple Myeloma","Purpura, Thrombocytopenic, Idiopathic","Irritable Bowel Syndrome;  Diarrhea","HIV Infections","HIV Infections","HIV Infections","Immune System Diseases","Conjunctivitis, Allergic","Hemophilia A","","","","Diabetes Mellitus, Type 2;  Heart Failure;  Renal Insufficiency, Chronic","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","HIV Infections","HIV Infections","HIV Infections","HIV Infections","HIV Infections","HIV Infections","HIV Infections","HIV Infections","HIV Infections","Heart Failure","Hypogonadism","Melanoma;  Colorectal Neoplasms","","Carcinoma, Transitional Cell;  Urologic Neoplasms","HIV Infections","Venous Thromboembolism","Venous Thromboembolism","Parkinson Disease","Parkinson Disease","Parkinson Disease","Parkinson Disease","Hepatitis B","Hepatitis B, Chronic","Hepatitis B, Chronic","Cancer;  Carcinoma, Non-Small-Cell Lung","Prostatic Neoplasms","Lymphoma, Large B-Cell, Diffuse","Anemia;  Kidney Failure, Chronic;  Cancer","Anemia;  Kidney Failure, Chronic","Anemia;  Kidney Failure, Chronic;  Cancer","Kidney Failure, Chronic;  Anemia;  Cancer;  Blood Transfusion, Autologous","Kidney Failure, Chronic;  Anemia","Kidney Failure, Chronic;  Anemia;  Cancer","Kidney Failure, Chronic;  Anemia;  Cancer","Anemia;  Blood Transfusion, Autologous;  Kidney Failure, Chronic;  Cancer","Anemia;  Blood Transfusion, Autologous;  Cancer;  Kidney Failure, Chronic","","","Hemophilia B;  Thrombasthenia;  Factor VII Deficiency;  Hemophilia A","Hemophilia A;  Hemophilia B","Myocardial Infarction","Angina, Unstable;  Myocardial Infarction","Migraine Disorders","Tibial Fractures","Spondylolisthesis","","","","Infection;  Bacterial Infections","Migraine Disorders","Breast Neoplasms;  Liposarcoma","Carcinoma, Non-Small-Cell Lung;  Pancreatic Neoplasms","Bacterial Infections","Community-Acquired Infections;  Streptococcal Infections;  Staphylococcal Infections;  Gram-Negative Bacterial Infections;  Surgical Wound Infection;  Pneumonia, Bacterial","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","","","","","Depressive Disorder","Epilepsy","Epilepsy","Gastroesophageal Reflux","Contraceptives, Oral","Contraceptives, Oral","","Spondylitis, Ankylosing;  Arthritis, Juvenile Rheumatoid;  Arthritis, Psoriatic;  Psoriasis;  Arthritis, Rheumatoid","Arthritis, Psoriatic;  Arthritis, Rheumatoid;  Psoriasis","Arthritis, Rheumatoid;  Arthritis, Juvenile Rheumatoid;  Arthritis, Psoriatic;  Spondylarthropathies;  Spondylitis, Ankylosing;  Psoriasis","Arthritis, Psoriatic;  Psoriasis;  Arthritis, Juvenile Rheumatoid;  Arthritis, Rheumatoid;  Spondylitis, Ankylosing","Arthritis, Psoriatic;  Spondylitis, Ankylosing;  Psoriasis","Hyperparathyroidism, Secondary","Muscular Dystrophy, Duchenne","Breast Neoplasms","Hemophilia B","HIV Infections","Tuberous Sclerosis","Carcinoma, Renal Cell;  Breast Neoplasms;  Pancreatic Neoplasms","Hypercholesterolemia","Dyslipidemias;  Hypercholesterolemia","Stem Cell Transplantation;  Corneal Diseases","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Multiple Sclerosis","Multiple Sclerosis","Wet Macular Degeneration;  Macular Edema;  Diabetes Complications","Hyperuricemia;  Arthritis, Gouty;  Gout","Hyperuricemia;  Gout","Gout","Myeloproliferative Disorders;  Primary Myelofibrosis","","","","","","Epilepsies, Myoclonic","Dyslipidemias","Dyslipidemias","Pain;  Cancer","Pain;  Cancer","Pain;  Cancer","Pain, Postoperative","","Pain, Postoperative","Hyperphosphatemia;  Renal Dialysis","Anemia, Iron-Deficiency","Anemia;  Kidney Failure, Chronic","Urinary Bladder, Overactive","Clostridium Infections","Arthritis, Rheumatoid","Neutropenia;  Hematopoietic Stem Cell Transplantation;  Cancer","Neutropenia;  Hematopoietic Stem Cell Transplantation;  Cancer","Neutropenia","Neutropenia;  Hematopoietic Stem Cell Transplantation;  Cancer","Neutropenia;  Hematopoietic Stem Cell Transplantation;  Cancer","Neutropenia;  Hematopoietic Stem Cell Transplantation;  Cancer","Neutropenia","Neutropenia;  Hematopoietic Stem Cell Transplantation;  Cancer","Neutropenia;  Hematopoietic Stem Cell Transplantation;  Cancer","Renal Insufficiency, Chronic;  Diabetes Mellitus, Type 2","Multiple Sclerosis, Relapsing-Remitting","Multiple Sclerosis","Multiple Sclerosis, Relapsing-Remitting","","","","Radionuclide Imaging;  Alzheimer Disease","Radionuclide Imaging","","","Prostatic Neoplasms;  Radionuclide Imaging","","","","","Radionuclide Imaging;  Alzheimer Disease","Rhinitis, Allergic, Seasonal;  Rhinitis, Allergic, Perennial","Rhinitis, Allergic, Perennial;  Rhinitis, Allergic, Seasonal","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Asthma","Anovulation;  Reproductive Techniques, Assisted;  Infertility, Female;  Hypogonadism","Anovulation","Anovulation","Infertility, Female","Infertility;  Hypogonadism","Infertility;  Hypogonadism","Anovulation","Cytomegalovirus Retinitis;  HIV Infections","Venous Thrombosis;  Pulmonary Embolism;  Myocardial Infarction;  Angina, Unstable","Venous Thrombosis;  Pulmonary Embolism;  Myocardial Infarction;  Angina, Unstable","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","HIV Infections","Vomiting;  Cancer","Metal Metabolism, Inborn Errors","Thrombocytopenia","HIV Infections","","","Migraine Disorders","","Breast Neoplasms","Breast Neoplasms","Cholangiocarcinoma","Magnetic Resonance Angiography","Magnetic Resonance Imaging","Migraine Disorders","Mucopolysaccharidosis VI","","Epileptic Syndromes;  Spasms, Infantile","Cytomegalovirus Retinitis;  HIV Infections","Reproductive Techniques, Assisted;  Ovulation Induction;  Infertility, Female","Reproductive Techniques, Assisted;  Ovulation Induction;  Infertility, Female","Cough","Carcinoma, Non-Small-Cell Lung","Carcinoma, Non-Small-Cell Lung","Leukemia, Myeloid, Acute","Leukemia, Myeloid, Acute","","Leukemia, Myeloid, Acute","Porphyrias, Hepatic","Leukemia, Myeloid, Acute","Hepatitis C, Chronic","Diabetes Mellitus","Lymphoma, Large B-Cell, Diffuse","Diabetes Mellitus","Diabetes Mellitus","Metabolic Side Effects of Drugs and Substances","Urea Cycle Disorders, Inborn","Sialorrhea","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Arthritis, Psoriatic;  Spondylitis, Ankylosing;  Colitis, Ulcerative;  Arthritis, Rheumatoid","","Radionuclide Imaging","Vomiting;  Cancer","","Attention Deficit Disorder with Hyperactivity","Psoriasis","","Hepatitis B;  Meningitis, Haemophilus;  Immunization","","","","Hepatitis B;  Hepatitis A;  Immunization","Hepatitis B;  Hepatitis A;  Immunization","Immunization;  Hepatitis B;  Hepatitis A","Hepatitis B;  Immunization","Hepatitis B","Hepatitis B","Hepatitis B;  Immunization","Hepatitis B;  Immunization","Herpes Zoster","Leukemia, Myeloid, Acute","Hemophilia B","Hemophilia A;  von Willebrand Diseases","Factor X Deficiency","Hemostasis, Surgical","Hemostasis, Surgical","Hemostasis, Surgical","Hemostasis, Surgical","Hemostasis","Immunization, Passive;  Hepatitis B;  Liver Transplantation","Immunization, Passive;  Hepatitis B","Urea Cycle Disorders, Inborn","Colorectal Neoplasms","Diabetes Mellitus","Mucocutaneous Lymph Node Syndrome;  Guillain-Barre Syndrome;  Bone Marrow Transplantation;  Purpura, Thrombocytopenic, Idiopathic;  Immunologic Deficiency Syndromes","Immunologic Deficiency Syndromes","Purpura, Thrombocytopenic, Idiopathic;  Bone Marrow Transplantation;  Immunologic Deficiency Syndromes;  Guillain-Barre Syndrome;  Mucocutaneous Lymph Node Syndrome","Purpura, Thrombocytopenic, Idiopathic;  Bone Marrow Transplantation;  Immunologic Deficiency Syndromes;  Guillain-Barre Syndrome;  Mucocutaneous Lymph Node Syndrome","Immunologic Deficiency Syndromes","Condylomata Acuminata;  Papillomavirus Infections;  Immunization;  Uterine Cervical Dysplasia","Papillomavirus Infections;  Uterine Cervical Dysplasia;  Immunization","Papillomavirus Infections;  Uterine Cervical Dysplasia;  Condylomata Acuminata;  Immunization","Papillomavirus Infections;  Uterine Cervical Dysplasia;  Condylomata Acuminata;  Immunization","Purpura Fulminans;  Protein C Deficiency","Adrenal Insufficiency","Adrenal Hyperplasia, Congenital","Adrenal Insufficiency","","","","Poisoning","Anemia, Sickle Cell","Anemia, Sickle Cell","","HIV Infections","Osteoporosis, Postmenopausal","Hypercalcemia;  Breast Neoplasms;  Neoplasm Metastasis;  Fractures, Bone","Wounds and Injuries;  Breast Diseases;  Neoplastic Processes;  Calcium Metabolism Disorders;  Water-Electrolyte Imbalance","Breast Neoplasms;  Neoplasm Metastasis;  Fractures, Bone;  Osteoporosis, Postmenopausal","Hypercalcemia;  Fractures, Bone;  Neoplasm Metastasis;  Breast Neoplasms","Breast Neoplasms;  Neoplasm Metastasis;  Fractures, Bone","Osteoporosis, Postmenopausal","Hypercalcemia;  Cancer","Lymphoma, Follicular","Lymphoma, Mantle-Cell;  Leukemia, Lymphocytic, Chronic, B-Cell","Ductus Arteriosus, Patent","Angioedemas, Hereditary","Angioedemas, Hereditary","Dyslipidemias","Hemorrhage","Optic Atrophy, Hereditary, Leber","Friedreich Ataxia","Multiple Myeloma;  Neoplasms;  Cancer;  Neoplasms, Plasma Cell;  Hemostatic Disorders;  Vascular Diseases;  Cardiovascular Diseases;  Paraproteinemias;  Blood Protein Disorders;  Hematologic Diseases;  Hemic and Lymphatic Diseases;  Hemorrhagic Disorders;  Infectious Mononucleosis;  Lymphoproliferative Disorders;  Immunoproliferative Disorders;  Immune System Diseases","Lymphoma, Non-Hodgkin;  Leukemia, Lymphocytic, Chronic, B-Cell","Mucopolysaccharidosis II","Radionuclide Imaging;  Ovarian Neoplasms","Schizophrenia","Hypertension, Pulmonary","Precursor Cell Lymphoblastic Leukemia-Lymphoma;  Gastrointestinal Stromal Tumors;  Dermatofibrosarcoma;  Myelodysplastic-Myeloproliferative Diseases;  Leukemia, Myelogenous, Chronic, BCR-ABL Positive;  Hypereosinophilic Syndrome","Leukemia, Myelogenous, Chronic, BCR-ABL Positive;  Precursor Cell Lymphoblastic Leukemia-Lymphoma;  Myelodysplastic-Myeloproliferative Diseases;  Hypereosinophilic Syndrome;  Dermatofibrosarcoma;  Gastrointestinal Stromal Tumors","Leukemia, Myelogenous, Chronic, BCR-ABL Positive;  Precursor Cell Lymphoblastic Leukemia-Lymphoma;  Myelodysplastic-Myeloproliferative Diseases;  Hypereosinophilic Syndrome;  Dermatofibrosarcoma","Precursor Cell Lymphoblastic Leukemia-Lymphoma;  Dermatofibrosarcoma;  Myelodysplastic-Myeloproliferative Diseases;  Leukemia, Myelogenous, Chronic, BCR-ABL Positive;  Hypereosinophilic Syndrome","Leukemia, Myelogenous, Chronic, BCR-ABL Positive;  Precursor Cell Lymphoblastic Leukemia-Lymphoma;  Myelodysplastic-Myeloproliferative Diseases;  Hypereosinophilic Syndrome;  Dermatofibrosarcoma","Precursor Cell Lymphoblastic Leukemia-Lymphoma;  Dermatofibrosarcoma;  Leukemia, Myelogenous, Chronic, BCR-ABL Positive;  Myelodysplastic-Myeloproliferative Diseases;  Hypereosinophilic Syndrome","Dermatofibrosarcoma;  Gastrointestinal Stromal Tumors;  Leukemia, Myelogenous, Chronic, BCR-ABL Positive","","","","Gaucher Disease","Gram-Negative Bacterial Infections","Keratosis;  Keratosis, Actinic","Condylomata Acuminata;  Keratosis;  Keratosis, Actinic;  Carcinoma, Basal Cell","Condylomata Acuminata","Desensitization, Immunologic;  Kidney Transplantation","","","","","","","","","","","","","","","","","","Hypercholesterolemia;  Dyslipidemias","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Asthma","Asthma","Asthma","Asthma","HIV Infections","","","Neuromyelitis Optica","","","","Arthritis, Psoriatic;  Psoriasis;  Crohn Disease;  Arthritis, Rheumatoid;  Colitis, Ulcerative;  Spondylitis, Ankylosing","Arthritis, Psoriatic;  Spondylitis, Ankylosing;  Colitis, Ulcerative;  Psoriasis;  Crohn Disease;  Arthritis, Rheumatoid","Arthritis, Psoriatic;  Spondylitis, Ankylosing;  Colitis, Ulcerative;  Arthritis, Rheumatoid;  Crohn Disease;  Psoriasis","Spondylitis, Ankylosing;  Arthritis, Rheumatoid;  Psoriasis;  Crohn Disease;  Arthritis, Psoriatic;  Colitis, Ulcerative","Arthritis, Psoriatic;  Spondylitis, Ankylosing;  Colitis, Ulcerative;  Psoriasis;  Crohn Disease;  Arthritis, Rheumatoid","Influenza, Human;  Immunization;  Disease Outbreaks","Disease Outbreaks;  Influenza, Human;  Immunization","Influenza, Human","Influenza, Human;  Immunization","Influenza, Human;  Immunization","Influenza, Human;  Immunization","Influenza, Human","Influenza, Human","Influenza, Human;  Immunization","Influenza, Human;  Immunization;  Disease Outbreaks","Keratosis, Actinic","Amyloidosis","Precursor Cell Lymphoblastic Leukemia-Lymphoma","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus, Type 2","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus, Type 2","Diabetes Mellitus","Diabetes Mellitus","","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","Diabetes Mellitus","","Hepatitis C, Chronic","Carcinoid Tumor;  Leukemia, Hairy Cell;  Lymphoma, Follicular;  Hepatitis B, Chronic;  Hepatitis C, Chronic;  Leukemia, Myelogenous, Chronic, BCR-ABL Positive;  Melanoma;  Multiple Myeloma","Hepatitis C, Chronic;  Hepatitis B, Chronic","Hepatitis C, Chronic","Multiple Sclerosis","Multiple Sclerosis","Multiple Sclerosis","Multiple Sclerosis","Neuroblastoma","Radionuclide Imaging;  Dementia;  Movement Disorders","Radionuclide Imaging;  Dementia;  Movement Disorders","Tomography, Emission-Computed, Single-Photon;  Lewy Body Disease;  Parkinson Disease;  Alzheimer Disease","Melanoma;  Carcinoma, Renal Cell;  Carcinoma, Non-Small-Cell Lung;  Mesothelioma, Malignant;  Colorectal Neoplasms","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Pancreatic Neoplasms","Multiple Myeloma","Aspergillosis","Parkinson Disease","","Angina Pectoris;  Heart Failure","Angina Pectoris;  Heart Failure","Angina Pectoris;  Heart Failure","Angina Pectoris;  Heart Failure","Angina Pectoris;  Heart Failure","Angina Pectoris;  Heart Failure","Cystic Fibrosis","Cystic Fibrosis","Leukemia, Myeloid, Acute;  Cholangiocarcinoma","Multiple Myeloma","Psoriasis","Encephalitis, Japanese;  Immunization","Cushing Syndrome","Epilepsy","Epilepsies, Partial","Epilepsy","Epilepsy","HIV Infections","Hepatitis B, Chronic","HIV Infections","Hepatitis B, Chronic","HIV Infections","HIV Infections","HIV Infections","Angioedemas, Hereditary","Breast Neoplasms","Multiple Sclerosis","Mucopolysaccharidosis I","Dyslipidemias","Dyslipidemias","Dyslipidemias","Abdominal Neoplasms","Migraine Disorders","Osteoporosis, Postmenopausal","Glaucoma, Open-Angle;  Ocular Hypertension","Dermatitis, Atopic","Hepatitis C, Chronic","Pneumonia, Bacterial;  Community-Acquired Infections","Arthritis, Rheumatoid","Arthritis, Rheumatoid;  Arthritis, Psoriatic","Arthritis, Rheumatoid;  Arthritis, Psoriatic","Arthritis, Rheumatoid","Arthritis, Rheumatoid;  Arthritis, Psoriatic","Arthritis, Rheumatoid","","HIV Infections","Multiple Myeloma;  Lymphoma, Mantle-Cell;  Myelodysplastic Syndromes","Multiple Myeloma","Multiple Myeloma;  Myelodysplastic Syndromes;  Lymphoma, Follicular;  Lymphoma, Mantle-Cell","Multiple Myeloma","Multiple Myeloma;  Lymphoma, Follicular;  Myelodysplastic Syndromes","Multiple Myeloma;  Lymphoma, Follicular","Carcinoma, Renal Cell","Thyroid Neoplasms","Thromboembolism;  Thrombocytopenia","Hyperuricemia","Cytomegalovirus Infections","Prostatic Neoplasms","Opioid-Related Disorders","Epilepsy","Epilepsy","Epilepsy","Epilepsy","Epilepsy","Epilepsy","Epilepsy","Epilepsy","Epilepsy","Parkinson Disease","Parkinson Disease","Parkinson Disease","Parkinson Disease","Parkinson Disease","Cystic Fibrosis;  Respiratory Tract Infections","Sexual Dysfunction, Physiological","Premature Ejaculation","Irritable Bowel Syndrome","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Leiomyoma","Neutropenia","Obesity;  Overweight","Diabetes Mellitus, Type 2","Lymphoma, Large B-Cell, Diffuse;  Lymphoma, Follicular;  Mediastinal Neoplasms","","","","","","","","","","","Diabetes Mellitus, Type 2","","","Hypercholesterolemia","Progeria;  Laminopathies","Growth and Development","Lymphoma, Large B-Cell, Diffuse;  Lymphoma, B-Cell","Hemophilia A","HIV Infections","HIV Infections","Carcinoma, Non-Small-Cell Lung","","","Schizophrenia;  Bipolar Disorder","Cystic Fibrosis","Hyperoxaluria, Primary","Schizophrenia","Anemia;  Myelodysplastic Syndromes;  beta-Thalassemia","Thrombocytopenia","Radionuclide Imaging","Radionuclide Imaging","Radionuclide Imaging","Neuroendocrine Tumors","Prostatic Neoplasms, Castration-Resistant","Ovulation Induction;  Infertility, Female","Diagnostic Techniques, Endocrine","Hypertension, Pulmonary","Magnetic Resonance Imaging","Cystic Fibrosis","Alagille Syndrome","HIV Infections","","","Cytomegalovirus Infections","","","Amyotrophic Lateral Sclerosis","Mastocytosis","Pancreatic Neoplasms","Gastrointestinal Stromal Tumors","","Fractures, Cartilage","Cardiomyopathy, Hypertrophic","","Rubella;  Mumps;  Immunization;  Measles","Chickenpox;  Rubella;  Measles;  Mumps;  Immunization","Laron Syndrome","","Sleep Initiation and Maintenance Disorders;  Autistic Disorder","Sleep Initiation and Maintenance Disorders","Sleep Initiation and Maintenance Disorders","","","","","","","","","","","","","","","","","","","Multiple Myeloma;  Hodgkin Disease;  Lymphoma, Non-Hodgkin;  Precursor Cell Lymphoblastic Leukemia-Lymphoma;  Leukemia, Myeloid, Acute;  Neuroblastoma;  Ovarian Neoplasms;  Hematopoietic Stem Cell Transplantation","Multiple Myeloma","Alzheimer Disease","Alzheimer Disease","Alzheimer Disease","Alzheimer Disease","Alzheimer Disease","Alzheimer Disease","Alzheimer Disease","Alzheimer Disease","Alzheimer Disease","Alzheimer Disease","Alzheimer Disease","Immunization;  Meningitis, Meningococcal","Meningitis, Meningococcal","Meningitis, Meningococcal","Meningitis, Meningococcal","Meningitis, Meningococcal","Asthma","Cystinosis","Cystinosis","Corneal Diseases;  Cystinosis","Cystinosis","Leukemia, Lymphoid","Urinary Tract Infections;  Bacteremia;  Bacterial Infections;  Respiratory Tract Infections;  Pneumonia;  Pneumonia, Ventilator-Associated","","","Diabetes Mellitus, Type 2","Arthritis, Psoriatic;  Psoriasis;  Arthritis, Juvenile Rheumatoid;  Arthritis, Rheumatoid","Arthritis, Psoriatic;  Precursor Cell Lymphoblastic Leukemia-Lymphoma;  Psoriasis;  Arthritis, Rheumatoid;  Arthritis","Anemia;  Kidney Failure, Chronic","Opioid-Related Disorders;  Constipation","Colorectal Neoplasms;  Colonoscopy","Methemoglobinemia","Lipodystrophy, Familial Partial","Myotonic Disorders","Candidiasis","Epilepsy","Leukemia, Myeloid, Acute;  Mastocytosis","Osteosarcoma","Fabry Disease","Glycogen Storage Disease Type II","Gaucher Disease","Gaucher Disease","Gaucher Disease","Gaucher Disease;  Niemann-Pick Diseases","Fibromyalgia","Fibromyalgia","Hypercholesterolemia","Urinary Bladder, Overactive","Colitis, Ulcerative","","Genetic Diseases, Inborn;  Anemia, Hemolytic","Adrenal Cortex Neoplasms","","Sezary Syndrome;  Mycosis Fungoides","","","Hemophilia A","Lymphoma, Follicular","Leukemia, Hairy Cell","Graft Rejection","Graft Rejection","Graft Rejection","Graft Rejection","","","","Constipation","Alcohol-Related Disorders","Constipation;  Opioid-Related Disorders","Opioid-Related Disorders","Obesity;  Overweight","Multiple Sclerosis","Multiple Sclerosis, Relapsing-Remitting;  Multiple Sclerosis","Crohn Disease","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Carcinoma, Non-Small-Cell Lung","Precursor T-Cell Lymphoblastic Leukemia-Lymphoma","HIV Infections","","","","Pain, Postoperative;  Ophthalmologic Surgical Procedures","Breast Neoplasms","Glaucoma, Open-Angle;  Ocular Hypertension","Vomiting;  Neoplasms;  Nausea;  Cancer","HIV Infections","HIV Infections","","","","Leukemia, Myelogenous, Chronic, BCR-ABL Positive","Carcinoma, Non-Small-Cell Lung","Idiopathic Pulmonary Fibrosis","Fallopian Tube Neoplasms;  Peritoneal Neoplasms;  Ovarian Neoplasms","Prostatic Neoplasms, Castration-Resistant","COVID-19 virus infection","","Tyrosinemias","Tyrosinemias","Tyrosinemias","Hypertension, Pulmonary;  Respiratory Insufficiency","Melanoma;  Hodgkin Disease;  Carcinoma, Renal Cell;  Carcinoma, Non-Small-Cell Lung;  Carcinoma, Transitional Cell;  Squamous Cell Carcinoma of Head and Neck;  Urologic Neoplasms;  Mesothelioma;  Colorectal Neoplasms","Carcinoma, Non-Small-Cell Lung","Contraception","Contraception","Hemophilia B","Hemophilia B","Hemophilia B","Contraception","Muscular Atrophy, Spinal","Liver Cirrhosis, Biliary","Anthrax","Leukemia, Lymphocytic, Chronic, B-Cell","Melanoma","","Multiple Sclerosis","Retinal Diseases","Hemophilia A","Hemophilia A","Hemophilia A","Hemophilia A","Hemophilia A","Acromegaly","Cholestasis, Intrahepatic","Postmenopause","Multiple Sclerosis, Relapsing-Remitting","Leukemia, Lymphocytic, Chronic, B-Cell","Schizophrenia;  Bipolar Disorder","Schizophrenia;  Bipolar Disorder","Schizophrenia;  Bipolar Disorder","Schizophrenia;  Bipolar Disorder","Schizophrenia;  Bipolar Disorder","Schizophrenia;  Bipolar Disorder","Schizophrenia;  Bipolar Disorder","Schizophrenia","Schizophrenia;  Bipolar Disorder","Schizophrenia;  Bipolar Disorder","Schizophrenia;  Bipolar Disorder","Schizophrenia;  Bipolar Disorder","Schizophrenia;  Bipolar Disorder","Ovarian Neoplasms","Sarcoma","Acid sphingomyelinase deficiency (ASMD) type A/B or type B","Conjunctivitis, Allergic","Asthma;  Urticaria","Hepatitis C, Chronic","Muscular Atrophy, Spinal","Parkinson Disease","Parkinson Disease","","Soft Tissue Infections;  Skin Diseases, Bacterial","Obesity","Obesity","","Influenza, Human","Influenza, Human","Cushing Syndrome","Carcinoma, Non-Small-Cell Lung","Postmenopause","","","","Urinary Incontinence, Urge","","Multiple Sclerosis, Relapsing-Remitting;  Colitis, Ulcerative","Ovarian Neoplasms","Breast Neoplasms;  Pancreatic Neoplasms;  Carcinoma, Non-Small-Cell Lung","Breast Neoplasms","Sarcoma, Kaposi;  Carcinoma, Non-Small-Cell Lung;  Ovarian Neoplasms;  Breast Neoplasms","Prostatic Neoplasms","Breast Neoplasms","Mucositis","Schizophrenia","Schizophrenia","Schizophrenia","Schizophrenia;  Psychotic Disorders","Respiratory Syncytial Virus Infections","Vomiting;  Cancer","Nausea;  Vomiting;  Cancer","Vomiting;  Nausea;  Cancer","Myositis Ossificans","Exocrine Pancreatic Insufficiency","Influenza, Human;  Immunization;  Disease Outbreaks","Influenza, Human;  Immunization;  Disease Outbreaks","Influenza, Human","Influenza, Human;  Immunization;  Disease Outbreaks","Influenza, Human;  Immunization;  Disease Outbreaks","Influenza, Human;  Immunization;  Disease Outbreaks","Influenza, Human;  Immunization;  Disease Outbreaks","Influenza, Human;  Immunization;  Disease Outbreaks","Colorectal Neoplasms","Multiple Myeloma","Gastroesophageal Reflux","Gastroesophageal Reflux","Gastroesophageal Reflux","Gastroesophageal Reflux","Gastroesophageal Reflux","Tuberculosis","Hypoparathyroidism","Osteoporosis, Postmenopausal","Pain, Postoperative","Pain, Postoperative","Pain, Postoperative","Acromegaly;  Pituitary ACTH Hypersecretion","Hyperkalemia","Amyloidosis, Familial","Carcinoma, Renal Cell","Wet Macular Degeneration","Precursor Cell Lymphoblastic Leukemia-Lymphoma","","Hemoglobinuria, Paroxysmal","Neutropenia","Neutropenia","Neutropenia;  Cancer","Neutropenia","Neutropenia","Neutropenia","Neutropenia","Neutropenia","Neutropenia","Neutropenia","Neutropenia","Neutropenia;  Cancer","Hepatitis C, Chronic;  Hepatitis B, Chronic","Hepatitis C, Chronic","Hepatitis C, Chronic","Multiple Sclerosis","Gout","Fabry Disease","Phenylketonurias","Acromegaly","Melanoma;  Hodgkin Disease;  Carcinoma, Renal Cell;  Carcinoma, Non-Small-Cell Lung;  Carcinoma, Transitional Cell;  Squamous Cell Carcinoma of Head and Neck;  Urologic Neoplasms;  Endometrial Neoplasms","Carcinoma, Non-Small-Cell Lung;  Mesothelioma","Carcinoma, Non-Small-Cell Lung;  Mesothelioma","Carcinoma, Non-Small-Cell Lung;  Mesothelioma","Carcinoma, Non-Small-Cell Lung;  Mesothelioma","Carcinoma, Non-Small-Cell Lung;  Mesothelioma","Carcinoma, Non-Small-Cell Lung;  Mesothelioma","Carcinoma, Non-Small-Cell Lung;  Mesothelioma","Carcinoma, Non-Small-Cell Lung;  Mesothelioma","Carcinoma, Non-Small-Cell Lung;  Mesothelioma","Mesothelioma;  Carcinoma, Non-Small-Cell Lung","Carcinoma, Non-Small-Cell Lung;  Mesothelioma","Carcinoma, Non-Small-Cell Lung;  Mesothelioma","Cholangiocarcinoma","Cystitis, Interstitial","Influenza, Human","Epilepsies, Partial","Echocardiography","Echocardiography","Breast Neoplasms","Breast Neoplasms","Giant Cell Tumor of Tendon Sheath;  Synovitis, Pigmented Villonodular","Obesity","Lens Implantation, Intraocular;  Pain, Postoperative","Prostatic Neoplasms","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Malaria","Idiopathic Pulmonary Fibrosis;  Lung Diseases;  Respiratory Tract Diseases","Idiopathic Pulmonary Fibrosis;  Lung Diseases;  Respiratory Tract Diseases","Idiopathic Pulmonary Fibrosis","","Lymphoma, Mantle-Cell","Sleep Apnea, Obstructive","Narcolepsy","Lymphoma, Non-Hodgkin","Multiple Myeloma;  Hematopoietic Stem Cell Transplantation;  Lymphoma","Multiple Myeloma;  Hematopoietic Stem Cell Transplantation","Pneumococcal Infections;  Immunization","Pneumococcal Infections","Pneumococcal Infections","Pneumococcal Infections;  Immunization","Pneumococcal Infections;  Immunization","Lymphoma, B-Cell","Multiple Myeloma","Leukemia, Myeloid;  Leukemia, Lymphoid","Multiple Sclerosis, Relapsing-Remitting","","","","","","","","","","","Barrett Esophagus","Mycoses","Candidiasis;  Mycoses;  Coccidioidomycosis;  Aspergillosis","Mycoses","Candidiasis;  Mycoses;  Coccidioidomycosis;  Aspergillosis","Acidosis, Renal Tubular","","","Lymphoma, T-Cell","Carcinoma, Non-Small-Cell Lung","Parkinson Disease","Restless Legs Syndrome;  Parkinson Disease","Restless Legs Syndrome;  Parkinson Disease","Parkinson Disease","Parkinson Disease;  Restless Legs Syndrome","Parkinson Disease","Postmenopause","Acute Coronary Syndrome;  Angina, Unstable;  Myocardial Infarction","Myocardial Infarction;  Acute Coronary Syndrome;  Angina, Unstable","","Anxiety Disorders;  Neuralgia;  Epilepsy","Anxiety Disorders;  Epilepsy","Epilepsy;  Anxiety Disorders;  Neuralgia","Anxiety Disorders;  Epilepsy","Anxiety Disorders;  Neuralgia;  Epilepsy","Anxiety Disorders;  Epilepsy","Anxiety Disorders;  Epilepsy","Anxiety Disorders;  Epilepsy","Anxiety Disorders;  Neuralgia;  Epilepsy","","Influenza, Human;  Immunization;  Disease Outbreaks","Influenza, Human;  Immunization;  Disease Outbreaks","Influenza, Human;  Immunization;  Disease Outbreaks","Influenza, Human;  Immunization;  Disease Outbreaks","Tuberculosis, Multidrug-Resistant","Hemangioma","Constipation","","","Influenza, Human","Leukemia, Myeloid","Leukemia, Myeloid, Acute","","","","","Prostatic Neoplasms","Osteoporosis, Postmenopausal","Osteoporosis, Postmenopausal","Osteoporosis, Postmenopausal","HIV Infections","Stomach Neoplasms","Wet Macular Degeneration;  Macular Edema;  Diabetic Retinopathy;  Diabetes Complications","Wet Macular Degeneration;  Macular Edema;  Diabetes Complications;  Myopia, Degenerative;  Choroidal Neovascularization","Wet Macular Degeneration;  Macular Edema;  Diabetic Retinopathy;  Diabetes Complications","Wet Macular Degeneration;  Macular Edema;  Diabetic Retinopathy;  Myopia, Degenerative","Angina Pectoris","Parkinson Disease","Parkinson Disease","Parkinson Disease","Hyperuricemia","Hemoglobinuria, Paroxysmal","Angioedema","","Respiratory Syncytial Virus Infections","Hypercalcemia;  Osteitis Deformans;  Bone Resorption","Myocardial Perfusion Imaging","COVID-19 virus infection","Colorectal Neoplasms","Melanoma","Prostatic Neoplasms","Leiomyoma","COVID-19 virus infection","Conscious Sedation","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Asthma","","Respiratory Syncytial Virus Infections","Impetigo;  Staphylococcal Skin Infections","Myocardial Infarction","Myocardial Infarction","Epilepsy","Hepatitis C, Chronic","Hepatitis C, Chronic","Hepatitis C, Chronic","Hepatitis C, Chronic","Hepatitis C, Chronic","Hepatitis C, Chronic","Breast Neoplasms","Cryopyrin-Associated Periodic Syndromes","HIV Infections","HIV Infections","Amyotrophic Lateral Sclerosis","Amyotrophic Lateral Sclerosis","Migraine Disorders","Obesity","Obesity","Hypertension, Pulmonary","Gastrointestinal Stromal Tumors","Psoriasis;  Arthritis, Psoriatic","Muscular Atrophy, Spinal","Schizophrenia","Alopecia Areata","HIV Infections","HIV Infections","Lymphoma, Non-Hodgkin;  Arthritis, Rheumatoid;  Microscopic Polyangiitis;  Wegener Granulomatosis","Lymphoma, Non-Hodgkin;  Leukemia, Lymphocytic, Chronic, B-Cell","Lymphoma, Non-Hodgkin;  Arthritis, Rheumatoid;  Leukemia, Lymphocytic, Chronic, B-Cell;  Wegener Granulomatosis;  Microscopic Polyangiitis;  Pemphigus","Lymphoma, Non-Hodgkin;  Arthritis, Rheumatoid;  Wegener Granulomatosis;  Leukemia, Lymphocytic, Chronic, B-Cell;  Microscopic Polyangiitis","Leukemia, Lymphocytic, Chronic, B-Cell;  Arthritis, Rheumatoid;  Microscopic Polyangiitis;  Pemphigus","Lymphoma, Non-Hodgkin;  Arthritis, Rheumatoid;  Leukemia, Lymphocytic, Chronic, B-Cell","Lymphoma, Non-Hodgkin;  Microscopic Polyangiitis;  Wegener Granulomatosis","Lymphoma, Non-Hodgkin;  Microscopic Polyangiitis;  Leukemia, Lymphocytic, Chronic, B-Cell;  Wegener Granulomatosis","Acute Coronary Syndrome;  Coronary Artery Disease;  Peripheral Arterial Disease;  Venous Thromboembolism;  Stroke;  Atrial Fibrillation;  Pulmonary Embolism","Arthroplasty, Replacement;  Venous Thromboembolism","Venous Thromboembolism;  Pulmonary Embolism;  Acute Coronary Syndrome;  Stroke;  Coronary Artery Disease;  Peripheral Arterial Disease;  Atrial Fibrillation","Alzheimer Disease;  Parkinson Disease;  Dementia","Dementia;  Alzheimer Disease;  Parkinson Disease","Dementia;  Alzheimer Disease;  Parkinson Disease","Dementia;  Alzheimer Disease;  Parkinson Disease","Alzheimer Disease;  Dementia;  Parkinson Disease","Dementia;  Alzheimer Disease;  Parkinson Disease","Dementia;  Alzheimer Disease;  Parkinson Disease","Alzheimer Disease","Dementia;  Alzheimer Disease;  Parkinson Disease","","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Vomiting;  Nausea;  Cancer","Lymphoma, Non-Hodgkin","Purpura, Thrombocytopenic, Idiopathic","Osteoporosis","Polycythemia Vera","","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Immunization;  Rotavirus Infections","Immunization;  Rotavirus Infections","Immunization;  Rotavirus Infections","Restless Legs Syndrome;  Parkinson Disease","Restless Legs Syndrome;  Parkinson Disease","Anemia;  Kidney Failure, Chronic","Ovarian Neoplasms","Epilepsy","Hemophilia A","Vitiligo","Myeloproliferative Disorders;  Polycythemia Vera;  Graft vs Host Disease","Breast Neoplasms;  Triple Negative Breast Neoplasms","Heart Failure","Heart Failure","Parkinson Disease","Pulmonary Disease, Chronic Obstructive;  Asthma","Asthma","Asthma","Pulmonary Disease, Chronic Obstructive;  Asthma","","Pain;  Cancer","Phenylketonurias","Phenylketonurias","HIV Infections","HIV Infections","Arthritis, Rheumatoid","","","","Neuromyelitis Optica","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2;  Diabetes Mellitus;  Nutritional and Metabolic Diseases;  Metabolic Diseases;  Glucose Metabolism Disorders","Diabetes Mellitus, Type 2","Lipid Metabolism, Inborn Errors","Arthritis, Psoriatic;  Psoriasis;  Spondylitis, Ankylosing","","","","","","Hypertension, Pulmonary","Multiple Myeloma","Carcinoma, Non-Small-Cell Lung;  Thyroid Neoplasms","Neurofibromatosis 1","Obesity;  Overweight","Diabetes Mellitus, Type 2","Diabetes Mellitus","Heart Failure","Obesity","Renal Dialysis;  Hyperphosphatemia","Hyperphosphatemia;  Renal Dialysis","Hyperphosphatemia;  Renal Dialysis","Hyperphosphatemia;  Renal Dialysis","","","Herpes Zoster;  Immunization","Hypertension, Pulmonary","Erectile Dysfunction","Erectile Dysfunction","Hypertension, Pulmonary","Hypertension, Pulmonary","Erectile Dysfunction","Erectile Dysfunction","Erectile Dysfunction","Erectile Dysfunction","Prostatic Hyperplasia","Prostatic Hyperplasia","Prostatic Hyperplasia","Giant Lymph Node Hyperplasia","Hepatitis C, Chronic","Hemophilia A","Hemophilia A","Multiple Sclerosis, Relapsing-Remitting","Angiofibroma;  Tuberous Sclerosis","Graft Rejection;  Kidney Transplantation","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Hypertension, Pulmonary","Smallpox Vaccine;  Monkeypox virus","Cataplexy;  Narcolepsy","Substance Withdrawal Syndrome;  Alcohol Abstinence","Ornithine Carbamoyltransferase Deficiency Disease;  Citrullinemia;  Carbamoyl-Phosphate Synthase I Deficiency Disease","Carbamoyl-Phosphate Synthase I Deficiency Disease","Ear Diseases;  Ototoxicity","Hyperkalemia","Hepatitis C, Chronic","Hepatitis C, Chronic","Hepatitis C, Chronic","Narcolepsy;  Sleep Apnea, Obstructive","Growth","Growth and Development","Turner Syndrome;  Prader-Willi Syndrome;  Dwarfism, Pituitary","Turner Syndrome;  Dwarfism, Pituitary","Growth","Turner Syndrome;  Dwarfism, Pituitary","Carcinoma, Basal Cell","Carcinoma, Hepatocellular;  Carcinoma, Renal Cell","Carcinoma, Hepatocellular;  Carcinoma, Renal Cell","Diabetes Mellitus, Type 1","Carcinoma, Non-Small-Cell Lung","COVID-19 virus infection","Psoriasis","Cartilage Diseases","","","Edema;  Heart Failure;  Liver Cirrhosis;  Ascites;  Nephrotic Syndrome;  Hyperaldosteronism;  Essential Hypertension","","HIV Infections","Myoclonic Epilepsy, Juvenile","","","Osteoporosis, Postmenopausal","Osteoporosis, Postmenopausal","Hyperphosphatemia;  Renal Dialysis","Pain","Pain, Postoperative","Neuromuscular Blockade","Neuromuscular Blockade","Neuromuscular Blockade","Neuromuscular Blockade","Neuromuscular Blockade","Neuromuscular Blockade","Osteomyelitis;  Radionuclide Imaging","Ultrasonography;  Echocardiography","Migraine Disorders","Gastrointestinal Stromal Tumors;  Carcinoma, Renal Cell;  Neuroendocrine Tumors","Gastrointestinal Stromal Tumors;  Carcinoma, Renal Cell;  Neuroendocrine Tumors","Hemophilia A","Hemolysis;  Anemia, Hemolytic, Autoimmune","Lymphoproliferative Disorders","Graft Rejection","Graft Rejection","Graft Rejection","Dermatitis, Atopic","Liver Transplantation;  Kidney Transplantation","Dermatitis, Atopic","Erectile Dysfunction","Hypertension, Pulmonary","Hypertension, Pulmonary","Erectile Dysfunction","Erectile Dysfunction","Amyloidosis","Lymphoma, Large B-Cell, Diffuse","Lymphoma","Breast Neoplasms","Gaucher Disease","Melanoma","Multiple Myeloma","Osteoarthritis;  Pain","Sleep Disorders, Circadian Rhythm","","Sarcoma","Uveal Neoplasms","Multiple Myeloma","Poxviridae Infections;  Cowpox;  Monkeypox;  Vaccinia;  Smallpox","Soft Tissue Infections;  Skin Diseases, Bacterial","Malabsorption Syndromes","Stomach Neoplasms","Irritable Bowel Syndrome","Hepatitis C, Chronic","Pneumonia, Bacterial;  Cross Infection","Hepatitis B, Chronic","Sinusitis;  Tonsillitis;  Bronchitis, Chronic;  Pharyngitis;  Community-Acquired Infections;  Pneumonia, Bacterial","Community-Acquired Infections;  Pharyngitis;  Bronchitis, Chronic;  Pneumonia;  Tonsillitis;  Sinusitis","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","Hypertension","","Hypertension","Hypertension","Essential Hypertension","Hypertension","Hypertension","Hypertension","Carcinoid Tumor;  Neuroendocrine Tumors","Head and Neck Neoplasms;  Carcinoma, Squamous Cell","Glioma;  Glioblastoma","Glioma;  Glioblastoma","Glioma;  Glioblastoma","Glioma;  Glioblastoma","Glioma;  Glioblastoma","Glioma;  Glioblastoma","Glioma;  Glioblastoma","Carcinoma, Renal Cell;  Lymphoma, Mantle-Cell","Myocardial Infarction","Myocardial Infarction","Hepatitis B","HIV Infections","Hepatitis B, Chronic;  HIV Infections","HIV Infections","Carcinoma, Non-Small-Cell Lung","","","Multiple Sclerosis","Multiple Sclerosis, Relapsing-Remitting","Multiple Sclerosis, Relapsing-Remitting","Osteoporosis;  Osteoporosis, Postmenopausal","Osteoporosis;  Osteoporosis, Postmenopausal","Osteoporosis","Osteoporosis","Osteoporosis","Osteoporosis;  Osteoporosis, Postmenopausal","Osteoporosis","Osteoporosis","Sexual Dysfunctions, Psychological","Sexual Dysfunctions, Psychological","Cystic Fibrosis","Asthma","Multiple Myeloma","Multiple Myeloma","Hematopoietic Stem Cell Transplantation;  Neoplasms","Hematopoietic Stem Cell Transplantation","Thyroid Neoplasms","Peripheral Vascular Diseases;  Acute Coronary Syndrome","Peripheral Vascular Diseases;  Acute Coronary Syndrome","Soft Tissue Infections;  Intraabdominal Infections;  Bacterial Infections;  Skin Diseases, Infectious","Bacterial Infections;  Skin Diseases, Bacterial;  Soft Tissue Infections","","","Psoriasis","Radionuclide Imaging","HIV Infections","Keratosis, Actinic","Diabetes Mellitus, Type 2","Precursor B-Cell Lymphoblastic Leukemia-Lymphoma;  Lymphoma, Large B-Cell, Diffuse","Esophageal Squamous Cell Carcinoma","Carcinoma, Renal Cell","COVID-19 virus infection","Respiratory Tract Infections;  Cystic Fibrosis","Cystic Fibrosis;  Respiratory Tract Infections","Cystic Fibrosis;  Respiratory Tract Infections","","Arthritis, Rheumatoid;  Arthritis, Juvenile Rheumatoid;  Cytokine Release Syndrome;  Giant Cell Arteritis;  COVID-19 virus infection","Arthritis, Rheumatoid;  Cytokine Release Syndrome;  Arthritis, Juvenile Rheumatoid;  COVID-19 virus infection;  Giant Cell Arteritis","Cholestasis;  Vitamin E Deficiency","Arthritis, Rheumatoid","Arthritis, Rheumatoid","Parkinson Disease","","","Polycystic Kidney, Autosomal Dominant","Inappropriate ADH Syndrome","Inappropriate ADH Syndrome","Ovarian Neoplasms;  Uterine Cervical Neoplasms;  Small Cell Lung Carcinoma","Uterine Cervical Neoplasms;  Small Cell Lung Carcinoma","Uterine Cervical Neoplasms;  Small Cell Lung Carcinoma","Uterine Cervical Neoplasms;  Small Cell Lung Carcinoma","Ovarian Neoplasms;  Uterine Cervical Neoplasms;  Small Cell Lung Carcinoma","Carcinoma;  Small Cell Lung Carcinoma","Ovarian Neoplasms","","","Breast Neoplasms","COVID-19 virus infection","Ovarian Neoplasms;  Sarcoma","Sarcoma","Dermatitis, Atopic","Melanoma","Stomach Neoplasms;  Breast Neoplasms","Breast Neoplasms;  Stomach Neoplasms","Stomach Neoplasms;  Breast Neoplasms","Breast Neoplasms;  Stomach Neoplasms","Stomach Neoplasms;  Breast Neoplasms","Stomach Neoplasms;  Breast Neoplasms","Stomach Neoplasms;  Breast Neoplasms","Stomach Neoplasms;  Breast Neoplasms","Breast Neoplasms","Breast Neoplasms","Glaucoma, Open-Angle;  Ocular Hypertension","Ocular Hypertension;  Glaucoma, Open-Angle","Glaucoma, Open-Angle;  Ocular Hypertension","Carcinoma, Hepatocellular","Carcinoma, Non-Small-Cell Lung","Hematopoietic Stem Cell Transplantation","Hypertension, Pulmonary","Hepatolenticular Degeneration","Hepatolenticular Degeneration","Colorectal Neoplasms","","Bacterial Infections","Bacterial Infections","Bacterial Infections","Bacterial Infections","Breast Neoplasms;  Neoplasm Metastasis","","","","","","","","Hemophilia A","Hemophilia A","","Multiple Sclerosis, Relapsing-Remitting;  Multiple Sclerosis","Leiomyoma","Contraception, Postcoital","Leiomyoma","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Pulmonary Disease, Chronic Obstructive","Arthritis, Rheumatoid","Psoriasis;  Arthritis, Psoriatic;  Crohn Disease;  Colitis, Ulcerative","","","","","","","","","","","","","","","","Renal Insufficiency, Chronic;  Anemia","Arthritis, Rheumatoid;  Osteoarthritis;  Dysmenorrhea","Arthritis, Rheumatoid;  Osteoarthritis;  Dysmenorrhea","Osteoarthritis;  Arthritis, Rheumatoid;  Dysmenorrhea","","","Thyroid Neoplasms","Erectile Dysfunction","Erectile Dysfunction","Tobacco Use Cessation","","Colitis, Ulcerative;  Crohn Disease","Gaucher Disease","alpha-Mannosidosis","Melanoma","Leukemia, Lymphocytic, Chronic, B-Cell","Heart Failure","Atrial Fibrillation","Myopia, Degenerative;  Macular Degeneration","Mucopolysaccharidosis VII","Spasms, Infantile;  Epilepsies, Partial","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Diabetes Mellitus, Type 2","Carcinoma, Transitional Cell;  Urologic Neoplasms","Carcinoma, Basal Cell","Lupus Nephritis","Hyperlipoproteinemia Type I","von Willebrand Diseases","Myocardial Infarction","Leber Congenital Amaurosis;  Retinitis Pigmentosa","Candidiasis;  Mycoses;  Aspergillosis","Bacterial Infections and Mycoses;  Aspergillosis;  Candidiasis","Aspergillosis;  Candidiasis;  Mycoses","Depressive Disorder, Major","Achondroplasia","Ultrasonography;  Colorectal Neoplasms;  Tomography, X-Ray Computed","Anemia;  Anemia, Hemolytic;  Anemia, Sickle Cell","Amyloid Neuropathies, Familial","","Radionuclide Imaging","Radionuclide Imaging","Radionuclide Imaging","Sleep Initiation and Maintenance Disorders","Sleep Initiation and Maintenance Disorders","Influenza, Human","Waldenstrom Macroglobulinemia","Injections, Spinal;  Pain","Hepatolenticular Degeneration","Fractures, Bone","Fractures, Bone","Osteoporosis;  Osteitis Deformans;  Osteoporosis, Postmenopausal","Hypercalcemia;  Fractures, Bone;  Cancer","Hypercalcemia","Fractures, Bone;  Cancer","Cancer;  Fractures, Bone","Fractures, Bone;  Cancer","Osteoporosis;  Osteitis Deformans;  Osteoporosis, Postmenopausal","Osteoporosis;  Osteitis Deformans","Epilepsy","Epilepsies, Partial","Influenza A Virus, H5N1 Subtype","Influenza, Human;  Immunization;  Disease Outbreaks","Hemoglobinuria, Paroxysmal","Hypertension"
    ];
  final recentdrugsTherapueticArea = [
    "Search for example: 'Arthritis'"

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
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imageGet(),
              ),
              fit: BoxFit.cover,
              opacity: 0.6
          ),
        ),
        child: FutureBuilder<List<DrugListTherapueticArea>>(
            future: _drugListTherapueticArea.getDrugListTherapueticArea(query),
            builder: (context, snapshot) {
              var dataTherapueticArea = snapshot.data;
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
                          const Expanded(child: RiveAnimation.asset('assets/drugitudeError.riv', )),
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
                itemCount: dataTherapueticArea?.length,
                itemBuilder: (context, index) {
                  return Card(color: Colors.black.withOpacity(0.3),
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
                                            child: Text('Category: ${dataTherapueticArea?[index].category}',style: const TextStyle(color: Colors.white54, fontSize: 12),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text('${dataTherapueticArea?[index].medicineName}',
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
                                            child: Text('${dataTherapueticArea?[index].innName}',
                                              textAlign: TextAlign.start,
                                              style: const TextStyle(
                                                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                                          ),
                                          Card(color: Colors.black.withOpacity(0.6),
                                            child: ExpansionTile(
                                              title: const Text('More..',
                                                style: TextStyle(color: Colors.white54, fontSize: 12),),
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('Active Substance: ${dataTherapueticArea?[index].activeSubstance}',
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
                                                  child: Text('${dataTherapueticArea?[index].therapeuticArea}',
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
                                                  child: Text('${dataTherapueticArea?[index].humanPharmacotherapeuticGroup}',
                                                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                                ),

                                                const Padding(
                                                  padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('Marketing Authorization Company',
                                                    style: TextStyle(color: Colors.white54, fontSize: 12),),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('${dataTherapueticArea?[index].marketingAuthorisationHolderorCompanyName}',
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
                                                  child: Text('${dataTherapueticArea?[index].authorisationStatus}',
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
                                                      child: Text('${dataTherapueticArea?[index].conditionOrIndication}',
                                                        overflow: TextOverflow.fade,
                                                        textAlign: TextAlign.start,
                                                        style: const TextStyle(fontSize: 12,
                                                            color: Colors.white70,
                                                            fontWeight: FontWeight.bold),),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                      child: Text('Contraindications, Warnings & Precautions',
                                                          style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                      child: Text('${dataTherapueticArea?[index].contraindicationOrWarningsOrPrecautions}',
                                                        overflow: TextOverflow.fade,
                                                        textAlign: TextAlign.start,
                                                        style: const TextStyle(fontSize: 12,
                                                            color: Colors.white70,
                                                            fontWeight: FontWeight.bold),),
                                                    ),

                                                    const Padding(
                                                      padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                      child: Text('Mechanism of Action',
                                                          style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                      child: Text('${dataTherapueticArea?[index].moaPhamacology}',
                                                        overflow: TextOverflow.fade,
                                                        textAlign: TextAlign.start,
                                                        style: const TextStyle(fontSize: 12,
                                                            color: Colors.white70,
                                                            fontWeight: FontWeight.bold),),
                                                    ),

                                                    const Padding(
                                                      padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                      child: Text('Excipients List',
                                                          style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                      child: Text('${dataTherapueticArea?[index].excipientsList}',
                                                        overflow: TextOverflow.fade,
                                                        textAlign: TextAlign.start,
                                                        style: const TextStyle(fontSize: 12,
                                                            color: Colors.white70,
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
                                                          child: Text('ATC-Code: ${dataTherapueticArea?[index].atccode}, url: ${dataTherapueticArea?[index].url}',
                                                              overflow: TextOverflow.fade,
                                                              textAlign: TextAlign.start,
                                                              style: const TextStyle(fontSize: 12,
                                                                  color: Colors.white70,
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
                                          //   child: Text('Active Substance: ${dataTherapueticArea?[index].activeSubstance}',
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
                                          //   child: Text('${dataTherapueticArea?[index].therapeuticArea}',
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
                                          //   child: Text('${dataTherapueticArea?[index].humanPharmacotherapeuticGroup}',
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
                                          //   child: Text('${dataTherapueticArea?[index].marketingAuthorisationHolderorCompanyName}',
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
                                          //   child: Text('${dataTherapueticArea?[index].authorisationStatus}',
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
                                          //   child: Text('${dataTherapueticArea?[index].conditionOrIndication}',
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
                                          //   child: Text('Product Number: ${dataTherapueticArea?[index].productNumber}; ATC-Code: ${dataTherapueticArea?[index].atccode}, Generic? ${dataTherapueticArea?[index].generic}, Biosimilar? ${dataTherapueticArea?[index].biosimilar}, Conditional Approval: ${dataTherapueticArea?[index].conditionalApproval}, Exceptional Circumstances: ${dataTherapueticArea?[index].exceptionalCircumstances}, Accelerated Assessment: ${dataTherapueticArea?[index].acceleratedAssessment}, Orphan Medicine: ${dataTherapueticArea?[index].orphanMedicine}, Marketing Authorization Date: ${dataTherapueticArea?[index].marketingAuthorisationDate}, Date of Opinion: ${dataTherapueticArea?[index].dateofOpinion}, Decision Date: ${dataTherapueticArea?[index].decisionDate}, First Published: ${dataTherapueticArea?[index].firstPublished}, Revision Date: ${dataTherapueticArea?[index].revisionDate}, Revision Number: ${dataTherapueticArea?[index].revisionNumber}, url: ${dataTherapueticArea?[index].url}',
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
        ? recentdrugsTherapueticArea
        : drugstosearchTherapueticArea.where((drugtosearchTherapueticArea) {
      final drugtosearchTherapueticAreaLower = drugtosearchTherapueticArea.toLowerCase();
      final queryLower = query.toLowerCase();

      return drugtosearchTherapueticAreaLower.startsWith(queryLower);
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
          leading: const Icon(Icons.medical_services_rounded),
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