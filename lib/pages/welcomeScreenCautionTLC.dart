import 'package:drugitudeleviosa/pages/landingpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';

const String SETTINGS_BOX = "settings";

class WelcomeScreenTLC extends StatefulWidget {
  const WelcomeScreenTLC({super.key});

  @override
  State<WelcomeScreenTLC> createState() => _WelcomeScreenTLCState();
}

class _WelcomeScreenTLCState extends State<WelcomeScreenTLC>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  Text('DRUGITUDE IS DESIGNED TO BE USED BY MEDICAL AND ALLIED HEALTH PROFESSIONALS ONLY. ',
                    style: TextStyle(color: Colors.white),textAlign: TextAlign.start,),
                  SizedBox(height: 10),
                  Text('The content we provide via Drugitude is provided for general information purposes only. It is not set up to provide specific advice on which you should rely.\n'
                      '\n'
                      'In particular, Drugitude (and the information which may be accessed through it) is not a substitute for professional medical care by a qualified doctor or other healthcare professional.\n'
                      '\n'
                      'If you are not a healthcare professional then you should ALWAYS check with your doctor if you have any concerns about your condition or treatment and before taking, or not taking, any action on the basis of the content on our Application.\n'
                      '\n'
                      'If you are a healthcare professional then this information (including any professional reference material) is intended to support, not replace, your own knowledge, experience and judgement.',
                    style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                  SizedBox(height: 10),
                  Text('PLEASE READ AND ACCEPT OUR TERMS & CONDITIONS.',
                    style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ],
              ),
              const SizedBox(height: 20),
              // Flexible(flex: 1,
              //   child: SizedBox(
              //     width: 192,
              //     child: Column(
              //       children: [
              //         Expanded(
              //             child: RiveAnimation.asset(
              //                 'assets/drugiconLoading.riv')),
              //         // Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
              //
              //       ],
              //     ),
              //   ),
              // ),
              ElevatedButton(
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (context) =>
                        SingleChildScrollView(physics: const ClampingScrollPhysics(),
                          child: AlertDialog(scrollable: true,
                            title: const Text(
                                'Terms and conditions'),
                            content: const Column(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets
                                      .only(
                                      top: 0.0,
                                      bottom: 10,
                                      left: 0,
                                      right: 8),
                                  child: Text(
                                      "PLEASE READ THESE TERMS OF USE CAREFULLY BEFORE USING THIS APP.\n"
                                          "\n"
                                          "This application is run by Drugitude (referred to below as “Drugitude”, “we”, “us” or “our”).\n"
                                          "\n"
                                          "Drugitude is a brand name of R.I.D.C.O LTD, a company registered in Kenya (company number PVT-ELYUL5XX)"
                                          " with registered offices at Development House, Tom Mboya ST Nairobi Kenya.\n"
                                          "\n"
                                          "We are a limited company."),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets
                                      .only(
                                      top: 0.0,
                                      bottom: 2,
                                      left: 0,
                                      right: 8),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Application of Terms of Use',
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
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets
                                      .only(
                                      top: 0.0,
                                      bottom: 10,
                                      left: 0,
                                      right: 8),
                                  child: Text(
                                      "These “Terms of Use” (together with the documents referred to in them) tell you the terms of use on which you may make use of our application.\n"
                                          "\n"
                                          "Please read these Terms of Use carefully before you start to use our Application, as these will apply to your use of our Application.\n"
                                          "\n"
                                          "We may update these Terms of Use from time to time, including, to reflect changes in law or as a result of changes to the content of the Application or the addition of new features – it is therefore important that you refer to these Terms of Use from time to time to ensure that you are familiar with the relevant terms which will govern your use of the Website. This version of the Terms of Use is effective as of 5 July 2024.\n"
                                          "\n"
                                          "By using our application, you confirm that you accept these Terms of Use and that you agree to comply with them.\n"
                                          "\n"
                                          "If you do not agree to these Terms of Use, you must not use our Application.\n"
                                          "\n"
                                          "These Terms of Use incorporate the following additional terms, which also apply to your use of our Application:\n"
                                          "\n"
                                          "Our Privacy Notice (ridcoltd.co.ke/privacy-policy/), which sets out the terms on which we process any personal data we collect from you, or that you provide to us. By using our Application, you consent to such processing and you warrant that all data provided by you is accurate.\n"
                                          "\n"
                                          "Subject to any specific terms identified in respect of a particular feature or part of our Application, these Terms of Use (including, our Privacy Notice) constitute the entire agreement between you and us with respect to your use of the Application. "),
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .start,
                                  children: [
                                    Text(
                                        'Accessing the Application',
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
                                  ],
                                ),
                                Text(
                                    "We do not guarantee that our application, or any content on it, will always be available or that access to it will be uninterrupted. Access to our Application is permitted on a temporary basis. We may suspend, withdraw, discontinue or change all or any part of our Application without notice. We will not be liable to you if for any reason our Application (or any part, feature of or service under the Application) is removed or is unavailable at any time or for any period.\n"
                                        "\n"
                                        "You are responsible for making all arrangements necessary for you to access our Application (including, having access to an internet connection and an appropriate browser/device).\n"
                                        "\n"
                                        "You are also responsible for ensuring that everyone who accesses our Application through your internet connection is aware of these Terms of Use and other applicable terms and conditions, and that they comply with them. "),
                                Row(
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
                                          'Prohibited Uses ',
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
                                  ],
                                ),
                                Text(
                                    "You may use our Application only for lawful purposes. You may not use our Application:\n"
                                        "\n"
                                        "- In any way that breaches these Terms of Use or any applicable law or regulation.\n"
                                        "- In any way that is unlawful or fraudulent, or which has any unlawful or fraudulent purpose or effect.\n"
                                        "- To download, use or re-use any material for any commercial purpose. Use of any automated system or software to extract any data from this Application for commercial purposes is strictly prohibited (including, by way of example, for the purposes of developing, training, improving, or otherwise being utilized in, any artificial intelligence (AI) or machine learning tools). "),
                                Row(
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
                                          'Disclaimers',
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
                                  ],
                                ),
                                Text(
                                    "The Application contains content generated by us (or on our behalf by medical authors or drug manufacturers' medical information departments). The content we provide via the Application is provided for general information purposes only. It is not set up to provide specific advice on which you should rely. In particular, the Application (and the information which may be accessed through it) is not a substitute for professional medical care by a qualified doctor or other healthcare professional. If you are not a healthcare professional then you should ALWAYS check with your doctor if you have any concerns about your condition or treatment and before taking, or not taking, any action on the basis of the content on our Application. If you are a healthcare professional then this information (including any professional reference material) is intended to support, not replace, your own knowledge, experience and judgement. For the avoidance of doubt, the discussion forums are a distinct part of the Application and the posts and information contained within these have typically not been created by us (or on our behalf) but have been drafted by individual users who are typically not medically qualified and are not in a position to give you medical advice – whilst it can be a useful support tool it is important that you recognize that you need to take particular care when accessing the information in the discussion forums and, again, always seek advice from your doctor regarding your particular needs and concerns.\n"
                                        "\n"
                                        "Many of the professionally authored links from the Application are to reputable institutions and societies and the content contained within can be a valuable source of information. However, not all medical resources on the internet are authoritative or current. Any decision about your health or medical care based solely on information obtained from the internet could be dangerous. Whilst we hope that you will find the third party sites in respect of which we provide links to be of interest, we can accept no responsibility in respect of any third party web sites or any information contained therein.\n"
                                        "\n"
                                        "The information contained in the Application (including, the discussion forums) may contain technical inaccuracies or typographical errors. We reserve the right to make changes and improvements to any information contained within the Application, at any time and without notice.\n"
                                        "\n"
                                        "Although we make reasonable efforts to update the information on our Application, we make no representations, warranties or guarantees, whether express or implied, that the content on our Application is accurate, complete or up-to-date. We also do not warrant or represent that the information or materials available through the Application will meet your particular requirements or needs or that access to, or use of, the same will be uninterrupted or completely secure. Please note that the information in the discussion forums is not expected to be updated at any time.\n"
                                        "\n"
                                        "All professionally authored links contained in Application pages should be correct at time of submission. However, we cannot be held responsible for any issues caused by subsequent changes or any failure of such links to lead to the intended information.\n"
                                        "\n"
                                        "We do not endorse any specific products, processes, service providers, diets, or other information that may be mentioned on our Application (including, those promoted by any advertisers or advertising sponsors). "),
                                Row(
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
                                          'Intellectual Property Rights',
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
                                  ],
                                ),
                                Text(
                                    "We are the owner (or the licensee) of all intellectual property rights in our Application, and in the material published on it. Those works are protected by copyright laws and treaties around the world. All such rights are reserved.\n"
                                        "\n"
                                        "You may download and/or print off one copy of extracts of any page(s) from our Application for your personal use and you may (in a non-commercial context) draw the attention of others to content posted on our Application.\n"
                                        "\n"
                                        "You must not modify the paper or digital copies of any materials you have printed off or downloaded in any way, and you must not further use any illustrations, photographs, video or audio sequences or any graphics separately from any accompanying text.\n"
                                        "\n"
                                        "Our status (and that of any identified contributors) as the author(s) of content on our Application must always be acknowledged.\n"
                                        "\n"
                                        "You must not use any part of the content on our Application for commercial purposes without obtaining a license to do so from us (or our licensors as appropriate).\n"
                                        "\n"
                                        "If you print off, copy or download any part of our Application in breach of these Terms of Use, your right to use our Application (and any related materials) will cease immediately and you must, at our choice, return or destroy any copies of the materials you have made (and these Terms of Use shall continue to apply in respect of any such materials).\n"
                                        "\n"
                                        "For the avoidance of doubt, use of any automated system or software to extract any data from this Application for commercial purposes is strictly prohibited (including, by way of example, for the purposes of developing, training, improving, or otherwise being utilized in, any artificial intelligence (AI) or machine learning tools). "),
                                Row(
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
                                          'Suspension & termination of App access',
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
                                  ],
                                ),
                                Text(
                                    "We will determine, in our discretion, whether there has been a breach of our Terms of Use (or of our stated aims and goals) through your use of our Application. When a breach of these Terms of Use has (in our view) occurred, or where we otherwise deem it necessary, then we may take such action as we deem appropriate, which may include our taking any or all of the following actions: \n"
                                        "\n"
                                        "- Immediate, temporary or permanent withdrawal of your right to use our Application.\n"
                                        "\n"
                                        "- Issuing a warning to you.\n"
                                        "\n"
                                        "- Taking legal proceedings against you for reimbursement of all costs on an indemnity basis (including, but not limited to, reasonable administrative and legal costs) resulting from the breach. \n"
                                        "\n"
                                        "- Taking further legal action against you.\n"
                                        "\n"
                                        "- Disclosure of such information to law enforcement authorities as we reasonably feel is necessary.\n"
                                        "\n"
                                        "We exclude liability for actions taken in response to breaches of these Terms of Use. The responses described are examples, and we may take such other actions as we may reasonably deem appropriate. "),
                                Row(
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
                                          '3rd Party Links & Resources in our App',
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
                                  ],
                                ),
                                Text(
                                    "The Application may contain links to other websites and resources operated by third parties. These links are provided for reference and information purposes only. We do not control such websites or resources and are not responsible for their availability or content.\n"
                                        "\n"
                                        "Our inclusion of links to such websites does not imply any endorsement of the material on such websites or any association with their operators. We have no control over the contents of those sites or resources. "),
                                Row(
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
                                          'Linking to our Application',
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
                                  ],
                                ),
                                Text(
                                    "You may link to the Application, provided you do so in a way that is fair and legal and does not damage our reputation or take advantage of it. In particular, you may not link to our Application in any manner which enables any automated system or software to extract any data from this Application for commercial purposes (including, by way of example, for the purposes of developing, training, improving, or otherwise being utilised in, any artificial intelligence (AI) or machine learning tools).\n"
                                        "\n"
                                        "You must not establish a link in such a way as to suggest any form of association, approval or endorsement on our part where none exists. Our Application must not be framed on any other site.\n"
                                        "\n"
                                        "We reserve the right to withdraw or limit this linking permission without notice.\n"
                                        "\n"
                                        "If you wish to make any use of content on our Application other than that set out above, please contact the Developer."),
                                Row(
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
                                          'LIMITATIONS OF LIABILITY ',
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
                                  ],
                                ),
                                Text(
                                    "Please read this section carefully as it sets out the limits of our liability to you in relation to your use of the Application.\n"
                                        "\n"
                                        "Nothing in these Terms of Use excludes or limits our liability for death or personal injury arising from our negligence, or for our fraud or fraudulent misrepresentation, or for any other liability that cannot be excluded or limited by English law.\n"
                                        "\n"
                                        "To the extent permitted by law, we exclude all conditions, warranties, representations or other terms which may apply to our Application or any content on it, whether express or implied. The Application is provided on an ‘as is’ basis.\n"
                                        "\n"
                                        "Please note that we only provide our Application for domestic and private use (and as a reference tool for use by healthcare professionals). You agree not to use our application for any commercial or business purposes, and we have no liability to you for any loss of profit, loss of business, business interruption, or loss of business opportunity.\n"
                                        "\n"
                                        "We assume no responsibility for the content of websites linked on our Application. Such links should not be interpreted as endorsement by us of those linked websites. We will not be liable for any loss or damage that may arise from your use of them.\n"
                                        "\n"
                                        "We use our reasonable efforts to check the accuracy of the professional information published on our Application. You should, however, note that we do not warrant that such information will be error free and you acknowledge that the information, products, and services published on this Application may include inaccuracies or typographical errors. Changes are periodically made to the information set out in our Application.\n"
                                        "\n"
                                        "We (and/or our suppliers) make no representations about the suitability of the information, products, and services contained on this Application for any purpose.\n"
                                        "\n"
                                        "Subject to the first paragraph under this section (Limitations of Liability), in no event shall we (or any of our suppliers or licensors) be liable to you (or to any other user) for any indirect, incidental, special, and/or consequential loss or damage that were not foreseeable to both you and us when you accessed the Application, whether arising in contract, tort (including negligence or breach of statutory duty), or otherwise, even if we, or any of our suppliers, have been advised of the possibility of such damages, arising under or in connection with:\n"
                                ),
                                Row(
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
                                          'Use of, or inability to use, our App',
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
                                  ],
                                ),
                                Text(
                                    "Use of or reliance on any content displayed on our Application (regardless of the origins of such content).\n"
                                        "\n"
                                        "Any information, products, and services obtained through this Application, or otherwise arising out of the use of this Application.\n"
                                        "\n"
                                        "Subject to the first paragraph under this section (Limitations of Liability), our liability (and that of our suppliers or licensors) for any losses suffered arising out of, or in connection with, your use of this Application, whether in contract, tort (including negligence or breach of statutory duty), or otherwise is limited to the sum of one thousand Kenyan shillings (Ksh1,000).\n"
                                        "\n"
                                        "We will not be liable for any loss or damage caused by a virus, distributed denial-of-service attack, or other technologically harmful material that may infect your computer equipment, computer programs, data or other proprietary material due to your use of our Application or to your downloading of any content on it, or on any website linked to it.\n"
                                        "\n"
                                        "This section does not affect any legal rights you may have as a consumer.\n"
                                        "\n"
                                        "You acknowledge that we have made the Application available to you in reliance upon these Terms of Use and in particular these Limitations of Liability. "
                                ),
                                Row(
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
                                          'Viruses',
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
                                  ],
                                ),
                                Text(
                                    "We do not guarantee that our Application and its resources will be secure or free from bugs or viruses and you should use your own, up-to-date, virus protection software.\n"
                                        "\n"
                                        "You must not misuse our Application and its resources by knowingly introducing viruses, trojans, worms, logic bombs or any other material which is malicious or technologically harmful. You must not attempt to gain unauthorized access to our Application, its website, the server on which our website is stored or any server, computer or database connected to our Application. You must not attack our Application and its resources via a denial-of-service attack or a distributed denial-of service attack. By breaching this provision, you may be committing a criminal offence under the Computer Misuse Act 2018. We will report any such breach to the relevant law enforcement authorities and we will co-operate with those authorities by disclosing your identity to them. In the event of such a breach, your right to use our Application and its resources will cease immediately. "
                                ),
                                Row(
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
                                          'Choice of Law and Jurisdiction',
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
                                  ],
                                ),
                                Text(
                                    "Please note that these Terms of Use, and the agreement which exists between us under the Terms of Use, its subject matter and its formation, are governed by English law. You and we both agree that the courts of the Republic of Kenya will have exclusive jurisdiction over any disputes or claims which might arise.\n"
                                        "\n"
                                        "If you are accessing this Application from outside of the Republic of Kenya then:\n"
                                        "\n"
                                        "(i) we make no representations that the content of this Application will be suitable for your requirements or that it is permissible or legal for you to access the same; and\n"
                                        "\n"
                                        "(ii) your use of the Application is entirely at your own risk and you are responsible for ensuring that you act in accordance with any applicable laws.\n"
                                        "\n"
                                        "Use of this Application is unauthorized in any jurisdiction that does not give effect to all provisions of these Terms of Use, including, without limitation, this paragraph. "
                                ),
                                Row(
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
                                          'General',
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
                                  ],
                                ),
                                Text(
                                    "We reserve the right to change these Terms of Use (and any other terms, conditions, and notices) under which this Application is offered.\n"
                                        "\n"
                                        "If any part of these Terms of Use is determined to be invalid or unenforceable pursuant to applicable law including, but not limited to, the warranty disclaimers and liability limitations above, then the invalid or unenforceable provision will be deemed superseded by a valid, enforceable provision that most closely matches the intent of the original provision and the remainder of the agreement shall continue in effect.\n"
                                        "\n"
                                        "We reserve the right to freely assign, or otherwise transfer, any of our rights or obligations under these Terms of Use to any third party at our discretion.\n"
                                        "\n"
                                        "Any provision of these Terms of Use that expressly or by implication is intended to come into, or continue in, force on or after termination of your right to use the Application shall remain in full force and effect, including, any licenses granted by you in respect of any uploaded content and the provisions of the section titled Limitations of Liability.\n"
                                        "\n"
                                        "We will not be in breach of any of our obligations under these Terms of Use (or otherwise liable for any failure or delay in performance) if we are prevented, hindered or delayed in, or from, performing any of our obligations by any event beyond our reasonable control. The time for performance of such obligations shall be extended accordingly.\n"
                                        "\n"
                                        "Subject to any specific terms detailed on the Application in relation to particular features or materials, these Terms of Use (together with the Privacy Notice) set out the entire agreement between you and us in respect of your use of the Application.\n"
                                        "\n"
                                        "No failure or delay by us to exercise any right or remedy provided under these Terms of Use or by law shall constitute a waiver of that or any other right or remedy, nor shall it prevent or restrict the further exercise of that or any other right or remedy. No single or partial exercise of such right or remedy shall prevent or restrict the further exercise of that or any other right or remedy.\n"
                                        "\n"
                                        "Any rights not expressly granted herein are reserved. "
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .center,
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
                                          'Trademarks',
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
                                  ],
                                ),
                                Text(
                                    "The Drugitude logo and DRUGITUDE are registered trademarks, belonging to R.I.D.C.O LTD."
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .center,
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
                                          'Contact Us',
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
                                  ],
                                ),
                                Text(
                                    "To contact us, please do so via our Contact us page:	https://ridcoltd.co.ke/get-in-touch/"
                                ),
                              ],
                            ),
                            actions: <Widget>[
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        SystemNavigator.pop();
                                      },
                                      child: const Text('Decline')),
                                  TextButton(
                                      onPressed: () async {
                                         var box = Hive.box(SETTINGS_BOX);
                                        await box.put("welcome_shown", true);
                                         Navigator.pop(
                                             context,
                                             'Cancel');
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => const LandingPage(),
                                            ));
                                      },
                                      child: const Text('Accept')),
                                  TextButton(
                                      onPressed: () =>
                                          Navigator.pop(
                                              context,
                                              'Cancel'),
                                      child: const Text('Close')),
                                ],
                              )
                            ],
                          ),
                        ),
                  ),
                  child:  const Text("Terms and Conditions",)
              ),
              const SizedBox(height: 20),
              Flexible(flex: 3,
                child: Row(mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      // onPressed: () {
                      //   Navigator.pushReplacement(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => const AdrsOptionsPage(),
                      //       ));
                        onPressed: () async {
                          var box = Hive.box(SETTINGS_BOX);
                          box.put("welcome_shown", true);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LandingPage(),
                              ));
                        },
                        child: const Text('Accept')),
                    const SizedBox(width: 50,),
                    Row(
                      children: [
                        ElevatedButton(
                          // onPressed: () {
                          //   Navigator.pushReplacement(
                          //       context,
                          //       MaterialPageRoute(
                          //         builder: (context) => const AdrsOptionsPage(),
                          //       ));
                            onPressed: () {
                              SystemNavigator.pop();
                            }
                            ,
                            child: const Text('Decline')),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}