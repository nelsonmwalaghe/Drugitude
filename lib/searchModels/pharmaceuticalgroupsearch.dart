

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../apiServiceModels/pharmaceuticalGroupApiModel.dart';


import '../drugListCallModel/drugListPharmaceuticalGroupModel.dart';
import '../pages/drugrequestpage.dart';

// Note this is for INN Search key words to remember
// drugstosearch-innName
// recentdrugs - innName
// FetchDrug - innName
// _drugList - innName
// data - InnName

class SearchDrugPhramGroup extends SearchDelegate {
  final FetchDrugphramGroup _drugListphramGroup = FetchDrugphramGroup();
  final drugstosearchphramGroup = [
    "Adrenergics and other drugs for obstructive airway diseases","Adrenergics and other drugs for obstructive airway diseases","Adrenergics in combinations with anticholinergics incl. triple combinations with corticosteroids","Adrenergics in combinations with anticholinergics incl. triple combinations with corticosteroids, Drugs for obstructive airway diseases, ","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system","Agents acting on the renin-angiotensin system, Angiotensin II antagonists and diuretics","Agents for dermatitis, excluding corticosteroids","Alimentary tract and metabolism","Alkyl sulfonates","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products","All other therapeutic products, Iron chelating agents","Allergens","Amides, Anesthetics, local","Analgesics","Analgesics","Analgesics","Analgesics","Analgesics","Analgesics","Analgesics","Analgesics","Analgesics","Analgesics","Analgesics","Analgesics, galcanezumab","Anesthetics","Anesthetics","Anesthetics","Anesthetics","Anesthetics","Anesthetics","Angiotensin II antagonists, combinations, Agents acting on the renin-angiotensin system, Angiotensin II antagonists and calcium channel blockers","Angiotensin II antagonists, other combinations, Agents acting on the renin-angiotensin system","Angiotensin II antagonists, plain","Angiotensin II antagonists, plain","Angiotensin II antagonists, plain, Angiotensin II antagonists, combinations","Anterior pituitary lobe hormones and analogues, Pituitary and hypothalamic hormones and analogues","Anti-parathyroid agents, Calcium homeostasis","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs","Anti-Parkinson drugs, Other dopaminergic agents","Antiadrenergic agents, centrally acting, Antihypertensives, ","Antianemic preparations","Antianemic preparations","Antianemic preparations","Antianemic preparations","Antianemic preparations","Antianemic preparations","Antianemic preparations","Antianemic preparations","Antianemic preparations","Antianemic preparations","Antianemic preparations","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, ","Antibacterials for systemic use, , Aminoglycoside antibacterials","Antibacterials for systemic use, , Other antibacterials","Antibiotics and chemotherapeutics for dermatological use","Antibiotics and chemotherapeutics for dermatological use","Antibiotics and chemotherapeutics for dermatological use","Antibiotics and chemotherapeutics for dermatological use","Antibiotics and chemotherapeutics for dermatological use, Other chemotherapeutics","Anticholinesterases","Antidiarrheals, intestinal antiinflammatory / antiinfective agents","Antidiarrheals, intestinal antiinflammatory / antiinfective agents","Antidiarrheals, intestinal antiinflammatory / antiinfective agents","Antidiarrheals, intestinal antiinflammatory / antiinfective agents","Antiemetics and antinauseants, ","Antiemetics and antinauseants, ","Antiemetics and antinauseants, ","Antiemetics and antinauseants, ","Antiemetics and antinauseants, ","Antiemetics and antinauseants, ","Antiemetics and antinauseants, , Serotonin (5HT3) antagonists","Antiemetics and antinauseants, , Serotonin (5HT3) antagonists","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, ","Antiepileptics, , Other antiepileptics","Antiepileptics, , Other antiepileptics","Antigout preparations","Antigout preparations","Antigout preparations","Antigout preparations","Antigout preparations","Antigout preparations","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihemorrhagics","Antihistamines for systemic use, ","Antihistamines for systemic use, ","Antihistamines for systemic use, ","Antihistamines for systemic use, ","Antihistamines for systemic use, ","Antihistamines for systemic use, ","Antihistamines for systemic use, ","Antihistamines for systemic use, ","Antihistamines for systemic use, ","Antihypertensives and diuretics in combination","Antihypertensives for pulmonary arterial hypertension","Antihypertensives, ","Antihypertensives, ","Antihypertensives, ","Antihypertensives, ","Antihypertensives, ","Antiinflammatory and antirheumatic products","Antiinflammatory and antirheumatic products","Antiinflammatory and antirheumatic products","Antiinflammatory and antirheumatic products","Antiinflammatory and antirheumatic products","Antimigraine preparations, calcitonin gene-related peptide (CGRP) antagonists","Antimycobacterials","Antimycobacterials","Antimycobacterials","Antimycobacterials","Antimycotics for systemic use","Antimycotics for systemic use","Antimycotics for systemic use","Antimycotics for systemic use","Antimycotics for systemic use","Antimycotics for systemic use","Antimycotics for systemic use","Antimycotics for systemic use","Antimycotics for systemic use","Antimycotics for systemic use","Antimycotics for systemic use","Antimycotics for systemic use","Antimycotics for systemic use, Triazole derivatives","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic agents","Antineoplastic Agents and Antibody Drug Conjugates","Antineoplastic agents, Monoclonal antibodies","Antineoplastic agents, Monoclonal antibodies","Antineoplastic agents, Monoclonal antibodies","Antineoplastic agents, Other antineoplastic agents","Antineoplastic agents, Protein kinase inhibitors","Antineoplastic agents, Protein kinase inhibitors","Antineoplastic agents, Protein kinase inhibitors","Antineoplastic agents, Protein kinase inhibitors","Antineoplastic agents, Protein kinase inhibitors","Antineoplastic agents, Protein kinase inhibitors","Antineoplastic agents, Protein kinase inhibitors","Antineoplastic agents, Protein kinase inhibitors","Antineoplastic agents, protein kinase inhibitors, ","Antineoplastic agents, Taxanes","Antineoplastic and immunomodulating agents","Antineoplastic and immunomodulating agents","Antineoplastic and immunomodulating agents, Monoclonal antibodies","Antiobesity preparations, excl. diet products","Antiobesity preparations, excl. diet products","Antiobesity preparations, excl. diet products","Antiobesity preparations, excl. diet products","Antiobesity preparations, excl. diet products","Antiobesity preparations, excl. diet products","Antiobesity preparations, excl. diet products","Antiprotozoals","Antiprotozoals","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antithrombotic agents","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use","Antivirals for systemic use, Antivirals for treatment of HCV infections","Antivirals for systemic use, Antivirals for treatment of HIV infections, combinations","Antivirals for systemic use, Antivirals for treatment of HIV infections, combinations","Antivirals for systemic use, Antivirals for treatment of HIV infections, combinations","Antivirals for systemic use, Neuraminidase inhibitors","Antivirals for systemic use, Protease inhibitors","Antivirals for treatment of HIV infections, combinations","Antivirals for treatment of HIV infections, combinations, Antivirals for systemic use","Antivirals for treatment of HIV infections, combinations, Antivirals for systemic use","Bacterial vaccines","Bacterial vaccines, Meningococcal vaccines","Beta blocking agents","Bile acids and derivatives","Bile and liver therapy","Bile and liver therapy","Bile and liver therapy","Bile and liver therapy","Bisphosphonates","Bisphosphonates","Blood coagulation factors","Blood coagulation factors, von Willebrand factor and coagulation factor VIII in combination, Antihemorrhagics","c1-inhibitor, plasma derived, Drugs used in hereditary angioedema","Calcitonin gene-related peptide (CGRP) antagonists","Calcium homeostasis","Calcium homeostasis","Calcium homeostasis","Calcium homeostasis","Calcium homeostasis","Calcium homeostasis","Calcium homeostasis","Calcium homeostasis","Calcium homeostasis","Calcium homeostasis","Calcium homeostasis","Calcium homeostasis","Calcium homeostasis","Calcium homeostasis","Calcium homeostasis","Calcium homeostasis","Calcium homeostasis","capecitabine","Carbapenems, Antibacterials for systemic use, ","Cardiac therapy","Cardiac therapy","Cardiac therapy","Cardiac therapy","Cardiac therapy","Cardiac therapy","Cardiac therapy","Cardiac therapy","Cardiac therapy","Cardiac therapy","Cardiac therapy","Cardiac therapy","Cardiac therapy","Cardiovascular system","Cardiovascular system","Cardiovascular system","coagulation factor VIII","Colony stimulating factors","combinations","conjugated estrogens and bazedoxifene","Contrast media","Contrast media","Contrast media","Contrast media","Contrast media","Contrast media","Contrast media","Corticosteroids for systemic use","Corticosteroids for systemic use","Corticosteroids for systemic use","Corticosteroids for systemic use","Corticosteroids for systemic use","Cough and cold preparations","Cough and cold preparations","Covid-19 vaccines","Coxibs, Antiinflammatory and antirheumatic products","Detoxifying agents for antineoplastic treatment","Diagnostic agents","Diagnostic agents","Diagnostic agents","Diagnostic agents","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Diagnostic radiopharmaceuticals","Digestives, incl. enzymes","Dipeptidyl peptidase 4 (DPP-4) inhibitors, Drugs used in diabetes","Direct acting antivirals, Antivirals for systemic use, Antivirals for treatment of HCV infections","Diuretics, ","Diuretics, ","Diuretics, ","doxorubicin","Drugs for constipation","Drugs for constipation, Peripheral opioid receptor antagonists","Drugs for functional gastrointestinal disorders","Drugs for functional gastrointestinal disorders","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for obstructive airway diseases, ","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases","Drugs for treatment of bone diseases, Bisphosphonates","Drugs for treatment of bone diseases, Bone morphogenetic proteins","Drugs for treatment of hyperkalemia and hyperphosphatemia","Drugs for treatment of hyperkalemia and hyperphosphatemia","Drugs used in alcohol dependence","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes","Drugs used in diabetes, Blood glucose lowering drugs, excl. insulins","Drugs used in diabetes, Combinations of oral blood glucose lowering drugs","Drugs used in diabetes, Combinations of oral blood glucose lowering drugs","Drugs used in diabetes, Combinations of oral blood glucose lowering drugs","Drugs used in diabetes, Combinations of oral blood glucose lowering drugs","Drugs used in diabetes, Combinations of oral blood glucose lowering drugs","Drugs used in diabetes, Combinations of oral blood glucose lowering drugs","Drugs used in diabetes, Combinations of oral blood glucose lowering drugs","Drugs used in diabetes, Combinations of oral blood glucose lowering drugs","Drugs used in diabetes, Dipeptidyl peptidase 4 (DPP-4) inhibitors","Drugs used in diabetes, Glucagon-like peptide-1 (GLP-1) analogues","Drugs used in diabetes, Insulins and analogues for injection, fast-acting ","Drugs used in diabetes, Insulins and analogues for injection, fast-acting ","Drugs used in diabetes, Sodium-glucose co-transporter 2 (SGLT2) inhibitors","Drugs used in erectile dysfunction","Drugs used in erectile dysfunction","Drugs used in hereditary angioedema, Other hematological agents","Emollients and protectives","Endocrine therapy","Endocrine therapy","Endocrine therapy","Endocrine therapy","Endocrine therapy","Endocrine therapy","Endocrine therapy","Endocrine therapy","Endocrine therapy","Endocrine therapy","Endocrine therapy","Endocrine therapy","Endocrine therapy, Anti-estrogens","Endocrine therapy, Other hormone antagonists and related agents","Enzymes","Enzymes, Other alimentary tract and metabolism products","ertapenem","Folic acid analogues, ANTIMETABOLITES","Folic acid analogues, Antineoplastic agents","formoterol and glycopyrronium bromide","imatinib","Immune sera and immunoglobulins, ","Immune sera and immunoglobulins, ","Immune sera and immunoglobulins, ","Immune sera and immunoglobulins, ","Immune sera and immunoglobulins, ","Immune sera and immunoglobulins, ","Immune sera and immunoglobulins, ","Immune sera and immunoglobulins, ","Immune sera and immunoglobulins, ","Immune sera and immunoglobulins, ","Immune sera and immunoglobulins, ","Immune sera and immunoglobulins, ","Immune sera and immunoglobulins, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, ","Immunostimulants, , Colony stimulating factors","Immunostimulants, , Colony stimulating factors","Immunostimulants, , Colony stimulating factors","Immunosuppressant","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants","Immunosuppressants, Interleukin inhibitors, ","Immunosuppressants, Selective immunosuppressants","Immunosuppressants, Selective immunosuppressants","Immunosuppressants, Tumor necrosis factor alpha (TNF-α) inhibitors","Influenza vaccines","Influenza vaccines","Influenza vaccines","Influenza vaccines","Influenza vaccines","Influenza vaccines, Influenza, live attenuated","influenza, inactivated, split virus or surface antigen","Interleukin inhibitors, ","Iron chelating agents","Lipid modifying agents","Lipid modifying agents","Lipid modifying agents","Lipid modifying agents","Lipid modifying agents","Lipid modifying agents","Lipid modifying agents","Lipid modifying agents","Lipid modifying agents","Lipid modifying agents","Lipid modifying agents","Lipid modifying agents","Lipid modifying agents","Lipid modifying agents","Lipid modifying agents","Local hemostatics","macimorelin","Meningococcal vaccines","migalastat","Mineral supplements","Monoclonal antibodies","monoclonal antibodies and antibody drug conjugates, Antineoplastic agents","Muscle relaxants","Nasal preparations","Nasal preparations","Nasal preparations, Corticosteroids","Nervous system","Nervous system","Nervous system","Non-nucleoside reverse transcriptase inhibitors, Antivirals for systemic use","Nucleoside and nucleotide reverse transcriptase inhibitors","Nucleoside and nucleotide reverse transcriptase inhibitors","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals","Ophthalmologicals, Antiglaucoma preparations and miotics","Ophthalmologicals, Other ophthalmologicals","Other alimentary tract and metabolism products","Other alimentary tract and metabolism products","Other alimentary tract and metabolism products","Other alimentary tract and metabolism products","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other alimentary tract and metabolism products, ","Other anti-dementia drugs","Other anti-dementia drugs","Other anti-dementia drugs","Other anti-dementia drugs","Other anti-dementia drugs","Other anti-dementia drugs, Psychoanaleptics, ","Other antianemic preparations","Other antianemic preparations","Other antianemic preparations","Other antianemic preparations","Other antianemic preparations","Other antianemic preparations","Other antidepressants","Other antidepressants","Other antiepileptics","Other antiepileptics","Other antihypertensives","Other antineoplastic agents","Other antineoplastic agents","Other antineoplastic agents","Other antineoplastic agents","Other antineoplastic agents, Monoclonal antibodies","Other antineoplastic agents, Protein kinase inhibitors","Other antineoplastic agents, Protein kinase inhibitors","Other cardiac preparations","Other cardiac preparations","Other dermatological preparations","Other dermatological preparations","Other dermatological preparations","Other dermatological preparations","Other dermatological preparations","Other dermatological preparations","Other dermatological preparations","Other dermatological preparations","Other dermatological preparations","Other diagnostic agents","Other drugs for bile therapy","Other drugs for constipation","Other drugs for disorders of the musculo-skeletal system","Other drugs for disorders of the musculo-skeletal system","Other drugs for disorders of the musculo-skeletal system","Other drugs for disorders of the musculo-skeletal system","Other drugs for disorders of the musculo-skeletal system","Other drugs for disorders of the musculo-skeletal system","Other drugs for disorders of the musculo-skeletal system","Other drugs for disorders of the musculo-skeletal system","Other drugs for disorders of the musculo-skeletal system","Other gynecologicals","Other gynecologicals","Other hematological agents","Other hematological agents","Other hematological agents","Other hematological agents","Other hematological agents","Other hematological agents","Other hematological agents","Other hematological agents","Other hematological agents","Other hormone antagonists and related agents","Other immunostimulants","Other lipid modifying agents","Other muscle relaxants, peripherally acting agents","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other nervous system drugs","Other ophthalmologicals","Other psychostimulants and nootropics, Psychoanaleptics, ","Other respiratory system products","Other respiratory system products","Other respiratory system products","Other respiratory system products","Other respiratory system products","Other sex hormones and modulators of the genital system","Other systemic drugs for obstructive airway diseases, ","Other systemic hemostatics","Other systemic hemostatics, Antihemorrhagics","Other therapeutic radiopharmaceuticals","Other vasodilators used in cardiac diseases","Other viral vaccines, ","Pancreatic hormones, Glycogenolytic hormones","Pancreatic hormones, Glycogenolytic hormones","Papillomavirus vaccines","Peripheral opioid receptor antagonists","Peripheral opioid receptor antagonists, Drugs for constipation","Pituitary and hypothalamic hormones and analogues","Pituitary and hypothalamic hormones and analogues","Pituitary and hypothalamic hormones and analogues","Pituitary and hypothalamic hormones and analogues","Pituitary and hypothalamic hormones and analogues","Pituitary and hypothalamic hormones and analogues","Pituitary and hypothalamic hormones and analogues","Pituitary and hypothalamic hormones and analogues","Pituitary and hypothalamic hormones and analogues","Pituitary and hypothalamic hormones and analogues","Pituitary and hypothalamic hormones and analogues","PITUITARY AND HYPOTHALAMIC HORMONES AND ANALOGUES","Pituitary and hypothalamic hormones and analogues","Pituitary and hypothalamic hormones and analogues","Pituitary and hypothalamic hormones and analogues","Pituitary and hypothalamic hormones and analogues, Somatropin and somatropin agonists","pneumococcus, purified polysaccharides antigen conjugated","Preparations for treatment of wounds and ulcers","Preparations for treatment of wounds and ulcers","Preparations for treatment of wounds and ulcers","Preparations for treatment of wounds and ulcers","Prostaglandin analogues, Ophthalmologicals","Protein kinase inhibitors","Protein kinase inhibitors","Protein kinase inhibitors","Protein kinase inhibitors","Protein kinase inhibitors","Protein kinase inhibitors","Protein kinase inhibitors, Antineoplastic agents","Proton pump inhibitors","Proton pump inhibitors","Proton pump inhibitors","Proton pump inhibitors","Proton pump inhibitors","Proton pump inhibitors","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, ","Psychoanaleptics, , Anticholinesterases","Psychoanaleptics, , Other anti-dementia drugs","Psychoanaleptics, , Other anti-dementia drugs","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Psycholeptics","Selective immunosuppressants","Selective immunosuppressants","Selective immunosuppressants","Selective immunosuppressants","Selective immunosuppressants","Selective immunosuppressants","Selective immunosuppressants","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, ","Sex hormones and modulators of the genital system, , Emergency contraceptives","Specific immunoglobulins","sugammadex","telmisartan and diuretics","Therapeutic radiopharmaceuticals","Therapeutic radiopharmaceuticals","Therapeutic radiopharmaceuticals","Therapeutic radiopharmaceuticals","Therapeutic radiopharmaceuticals","Therapeutic radiopharmaceuticals","Therapeutic radiopharmaceuticals","Therapeutic radiopharmaceuticals","Tumour detection, Diagnostic radiopharmaceuticals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals","Urologicals, Alpha-adrenoreceptor antagonists","Urologicals, Drugs for urinary frequency and incontinence","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines","Vaccines, Bacterial and viral vaccines, combined","Vaccines, Viral vaccines","Various alimentary tract and metabolism products","Various alimentary tract and metabolism products","Various diagnostic radiopharmaceuticals","Viral vaccines","Vitamin K and other hemostatics, Antihemorrhagics, coagulation factor X","Vitamin K and other hemostatics, Blood coagulation factors","Vitamins"
    ];
  final recentdrugsphramGroup = [
    "Search for example: 'Analgesics'"

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
        child: FutureBuilder<List<DrugListPharmGroup>>(
            future: _drugListphramGroup.getDrugListphramGroup(query),
            builder: (context, snapshot) {
              var dataphramGroup = snapshot.data;
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
                itemCount: dataphramGroup?.length,
                itemBuilder: (context, index) {
                  return Card(color: Colors.black.withOpacity(0.3),
                    child: ListTile(
                        title: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child:
                                Center(
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 25.0, bottom: 0, left: 8, right: 8),
                                        child: Text('Category: ${dataphramGroup?[index].category}',style: const TextStyle(color: Colors.white54, fontSize: 12),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                        child: Text('${dataphramGroup?[index].medicineName}',
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
                                        child: Text('${dataphramGroup?[index].innName}',
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                                      ),
                                      Card(color: Colors.black.withOpacity(0.6),
                                        child: ExpansionTile(
                                          title: Text('More..',
                                            style: TextStyle(color: Colors.white54, fontSize: 12),),
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                              child: Text('Active Substance: ${dataphramGroup?[index].activeSubstance}',
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
                                              child: Text('${dataphramGroup?[index].therapeuticArea}',
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
                                              child: Text('${dataphramGroup?[index].humanPharmacotherapeuticGroup}',
                                                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                            ),

                                            const Padding(
                                              padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                              child: Text('Marketing Authorization Company',
                                                style: TextStyle(color: Colors.white54, fontSize: 12),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                              child: Text('${dataphramGroup?[index].marketingAuthorisationHolderorCompanyName}',
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
                                              child: Text('${dataphramGroup?[index].authorisationStatus}',
                                                  style: const TextStyle(color: Colors.white, fontSize: 12)
                                              ),
                                            ),
                                            ExpansionTile(
                                              title: Text('Indication and Use',
                                                style: TextStyle(color: Colors.white54, fontSize: 12),),
                                              children: [

                                                const Padding(
                                                  padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('Indication and Use',
                                                      style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('${dataphramGroup?[index].conditionOrIndication}',
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
                                                  child: Text('${dataphramGroup?[index].contraindicationOrWarningsOrPrecautions}',
                                                    overflow: TextOverflow.fade,
                                                    textAlign: TextAlign.start,
                                                    style: const TextStyle(fontSize: 12,
                                                        color: Colors.white70,
                                                        fontWeight: FontWeight.bold),),
                                                ),

                                                const Padding(
                                                  padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('Pregnancy & Lactation',
                                                      style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('${dataphramGroup?[index].pregnancyLactation}',
                                                    overflow: TextOverflow.fade,
                                                    textAlign: TextAlign.start,
                                                    style: const TextStyle(fontSize: 12,
                                                        color: Colors.white70,
                                                        fontWeight: FontWeight.bold),),
                                                ),

                                                const Padding(
                                                  padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('Ability to use Machinery or Driving',
                                                      style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('${dataphramGroup?[index].drivingOrMachineryUseAbility}',
                                                    overflow: TextOverflow.fade,
                                                    textAlign: TextAlign.start,
                                                    style: const TextStyle(fontSize: 12,
                                                        color: Colors.white70,
                                                        fontWeight: FontWeight.bold),),
                                                ),

                                                const Padding(
                                                  padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('Undesirable Effects',
                                                      style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('${dataphramGroup?[index].undesirableEffects}',
                                                    overflow: TextOverflow.fade,
                                                    textAlign: TextAlign.start,
                                                    style: const TextStyle(fontSize: 12,
                                                        color: Colors.white70,
                                                        fontWeight: FontWeight.bold),),
                                                ),

                                                const Padding(
                                                  padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('Overdose',
                                                      style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('${dataphramGroup?[index].overdose}',
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
                                                  child: Text('${dataphramGroup?[index].mechanismOfActionOrPharmacologicalOrPharmacodyamicOrPharmacokineticXtics}',
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
                                                  child: Text('${dataphramGroup?[index].excipientsList}',
                                                    overflow: TextOverflow.fade,
                                                    textAlign: TextAlign.start,
                                                    style: const TextStyle(fontSize: 12,
                                                        color: Colors.white70,
                                                        fontWeight: FontWeight.bold),),
                                                ),

                                                const Padding(
                                                  padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('Incompatibilities and Interactions',
                                                      style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('${dataphramGroup?[index].incompatibilitiesOrInteractions}',
                                                    overflow: TextOverflow.fade,
                                                    textAlign: TextAlign.start,
                                                    style: const TextStyle(fontSize: 12,
                                                        color: Colors.white70,
                                                        fontWeight: FontWeight.bold),),
                                                ),

                                                const Padding(
                                                  padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('Storage & Special Precautions',
                                                      style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('${dataphramGroup?[index].specialStorageOrPrecautions}',
                                                    overflow: TextOverflow.fade,
                                                    textAlign: TextAlign.start,
                                                    style: const TextStyle(fontSize: 12,
                                                        color: Colors.white70,
                                                        fontWeight: FontWeight.bold),),
                                                ),

                                                const Padding(
                                                  padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('Disposal, Handling and Precautions',
                                                      style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                  child: Text('${dataphramGroup?[index].disposalHandlingPrecautions}',
                                                    overflow: TextOverflow.fade,
                                                    textAlign: TextAlign.start,
                                                    style: const TextStyle(fontSize: 12,
                                                        color: Colors.white70,
                                                        fontWeight: FontWeight.bold),),
                                                ),

                                                ExpansionTile(
                                                  title: Text('Additional Information',
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
                                                      child: Text('Product Number: ${dataphramGroup?[index].productNumber}; ATC-Code: ${dataphramGroup?[index].atccode}, Generic? ${dataphramGroup?[index].generic}, Biosimilar? ${dataphramGroup?[index].biosimilar}, Conditional Approval: ${dataphramGroup?[index].conditionalApproval}, Exceptional Circumstances: ${dataphramGroup?[index].exceptionalCircumstances}, Accelerated Assessment: ${dataphramGroup?[index].acceleratedAssessment}, Orphan Medicine: ${dataphramGroup?[index].orphanMedicine}, Marketing Authorization Date: ${dataphramGroup?[index].marketingAuthorisationDate}, Date of Opinion: ${dataphramGroup?[index].dateofOpinion}, Decision Date: ${dataphramGroup?[index].decisionDate}, First Published: ${dataphramGroup?[index].firstPublished}, Revision Date: ${dataphramGroup?[index].revisionDate}, Revision Number: ${dataphramGroup?[index].revisionNumber}, url: ${dataphramGroup?[index].url}',
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
                                      //   child: Text('Active Substance: ${dataphramGroup?[index].activeSubstance}',
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
                                      //   child: Text('${dataphramGroup?[index].therapeuticArea}',
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
                                      //   child: Text('${dataphramGroup?[index].humanPharmacotherapeuticGroup}',
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
                                      //   child: Text('${dataphramGroup?[index].marketingAuthorisationHolderorCompanyName}',
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
                                      //   child: Text('${dataphramGroup?[index].authorisationStatus}',
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
                                      //   child: Text('${dataphramGroup?[index].conditionOrIndication}',
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
                                      //   child: Text('Product Number: ${dataphramGroup?[index].productNumber}; ATC-Code: ${dataphramGroup?[index].atccode}, Generic? ${dataphramGroup?[index].generic}, Biosimilar? ${dataphramGroup?[index].biosimilar}, Conditional Approval: ${dataphramGroup?[index].conditionalApproval}, Exceptional Circumstances: ${dataphramGroup?[index].exceptionalCircumstances}, Accelerated Assessment: ${dataphramGroup?[index].acceleratedAssessment}, Orphan Medicine: ${dataphramGroup?[index].orphanMedicine}, Marketing Authorization Date: ${dataphramGroup?[index].marketingAuthorisationDate}, Date of Opinion: ${dataphramGroup?[index].dateofOpinion}, Decision Date: ${dataphramGroup?[index].decisionDate}, First Published: ${dataphramGroup?[index].firstPublished}, Revision Date: ${dataphramGroup?[index].revisionDate}, Revision Number: ${dataphramGroup?[index].revisionNumber}, url: ${dataphramGroup?[index].url.toString()}',
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
                            ),
                          ],
                        ),
                    ),
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
        ? recentdrugsphramGroup
        : drugstosearchphramGroup.where((drugtosearchphramGroup) {
      final drugtosearchphramGroupLower = drugtosearchphramGroup.toLowerCase();
      final queryLower = query.toLowerCase();

      return drugtosearchphramGroupLower.startsWith(queryLower);
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

          leading: const Icon(Icons.medical_information_rounded),
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