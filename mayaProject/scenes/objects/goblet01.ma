//Maya ASCII 2015 scene
//Name: goblet01.ma
//Last modified: Sat, Feb 07, 2015 01:58:34 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.3102010698848567 12.108988086975383 57.163465414789137 ;
	setAttr ".r" -type "double3" -4.538352729611546 1.4000000000000352 6.2138757676485345e-018 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 61.687900982075355;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 11.27106819187393 -0.98500031995949011 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".pze" yes;
	setAttr ".coi" 100.1;
	setAttr ".ow" 63.592550602407734;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "goblet01";
	setAttr ".t" -type "double3" 0 12.5 0 ;
createNode mesh -n "goblet0Shape1" -p "goblet01";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.77361512184143066 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 151 ".pt";
	setAttr ".pt[30]" -type "float3" 1.2722278 -3.0020661 -0.57328868 ;
	setAttr ".pt[31]" -type "float3" 0.92772871 -3.0020661 -1.0474511 ;
	setAttr ".pt[32]" -type "float3" 0.42015418 -3.0020661 -1.3404994 ;
	setAttr ".pt[33]" -type "float3" -0.16273123 -3.0020661 -1.4017633 ;
	setAttr ".pt[34]" -type "float3" -0.72014207 -3.0020661 -1.2206498 ;
	setAttr ".pt[35]" -type "float3" -1.155697 -3.0020661 -0.82847422 ;
	setAttr ".pt[36]" -type "float3" -1.3940834 -3.0020661 -0.29304868 ;
	setAttr ".pt[37]" -type "float3" -1.3940841 -3.0020661 0.29304796 ;
	setAttr ".pt[38]" -type "float3" -1.155697 -3.0020661 0.82847404 ;
	setAttr ".pt[39]" -type "float3" -0.72014308 -3.0020661 1.2206495 ;
	setAttr ".pt[40]" -type "float3" -0.16272965 -3.0020661 1.4017633 ;
	setAttr ".pt[41]" -type "float3" 0.4201546 -3.0020661 1.3404998 ;
	setAttr ".pt[42]" -type "float3" 0.92772847 -3.0020661 1.0474501 ;
	setAttr ".pt[43]" -type "float3" 1.2722281 -3.0020661 0.57328904 ;
	setAttr ".pt[44]" -type "float3" 1.3940841 -3.0020661 -1.7253269e-007 ;
	setAttr ".pt[45]" -type "float3" 0 -6.7729549 0 ;
	setAttr ".pt[46]" -type "float3" 0 -6.7729549 0 ;
	setAttr ".pt[47]" -type "float3" 0 -6.7729549 0 ;
	setAttr ".pt[48]" -type "float3" 0 -6.7729549 0 ;
	setAttr ".pt[49]" -type "float3" 0 -6.7729549 0 ;
	setAttr ".pt[50]" -type "float3" 0 -6.7729549 0 ;
	setAttr ".pt[51]" -type "float3" 0 -6.7729549 0 ;
	setAttr ".pt[52]" -type "float3" 0 -6.7729549 0 ;
	setAttr ".pt[53]" -type "float3" 0 -6.7729549 0 ;
	setAttr ".pt[54]" -type "float3" 0 -6.7729549 0 ;
	setAttr ".pt[55]" -type "float3" 0 -6.7729549 0 ;
	setAttr ".pt[56]" -type "float3" 0 -6.7729549 0 ;
	setAttr ".pt[57]" -type "float3" 0 -6.7729549 0 ;
	setAttr ".pt[58]" -type "float3" 0 -6.7729549 0 ;
	setAttr ".pt[59]" -type "float3" 0 -6.7729549 0 ;
	setAttr ".pt[60]" -type "float3" 0.022817869 -3.6398129 -0.0043614516 ;
	setAttr ".pt[61]" -type "float3" 0.016639199 -3.6398129 -0.012865702 ;
	setAttr ".pt[62]" -type "float3" 0.0075356085 -3.6398129 -0.018121706 ;
	setAttr ".pt[63]" -type "float3" -0.0029186714 -3.6398129 -0.019220451 ;
	setAttr ".pt[64]" -type "float3" -0.012916079 -3.6398129 -0.01597208 ;
	setAttr ".pt[65]" -type "float3" -0.02072794 -3.6398129 -0.0089383051 ;
	setAttr ".pt[66]" -type "float3" -0.025003491 -3.6398129 0.00066480588 ;
	setAttr ".pt[67]" -type "float3" -0.025003446 -3.6398129 0.011176643 ;
	setAttr ".pt[68]" -type "float3" -0.020727916 -3.6398129 0.020779699 ;
	setAttr ".pt[69]" -type "float3" -0.012916042 -3.6398129 0.027813507 ;
	setAttr ".pt[70]" -type "float3" -0.0029187147 -3.6398129 0.031061906 ;
	setAttr ".pt[71]" -type "float3" 0.0075356336 -3.6398129 0.029963063 ;
	setAttr ".pt[72]" -type "float3" 0.01663916 -3.6398129 0.024707153 ;
	setAttr ".pt[73]" -type "float3" 0.022817865 -3.6398129 0.016202865 ;
	setAttr ".pt[74]" -type "float3" 0.02500343 -3.6398129 0.0059206807 ;
	setAttr ".pt[75]" -type "float3" 0.128556 -3.3968251 -0.089732513 ;
	setAttr ".pt[76]" -type "float3" 0.093744822 -3.3968251 -0.13764544 ;
	setAttr ".pt[77]" -type "float3" 0.042455629 -3.3968251 -0.16725753 ;
	setAttr ".pt[78]" -type "float3" -0.016443655 -3.3968251 -0.17344791 ;
	setAttr ".pt[79]" -type "float3" -0.072768912 -3.3968251 -0.15514684 ;
	setAttr ".pt[80]" -type "float3" -0.11678049 -3.3968251 -0.11551845 ;
	setAttr ".pt[81]" -type "float3" -0.14086907 -3.3968251 -0.061414789 ;
	setAttr ".pt[82]" -type "float3" -0.14086926 -3.3968251 -0.0021911324 ;
	setAttr ".pt[83]" -type "float3" -0.11678055 -3.3968251 0.051912334 ;
	setAttr ".pt[84]" -type "float3" -0.07276874 -3.3968251 0.091540933 ;
	setAttr ".pt[85]" -type "float3" -0.016443776 -3.3968251 0.10984205 ;
	setAttr ".pt[86]" -type "float3" 0.042455632 -3.3968251 0.1036513 ;
	setAttr ".pt[87]" -type "float3" 0.093744777 -3.3968251 0.074039802 ;
	setAttr ".pt[88]" -type "float3" 0.1285556 -3.3968251 0.026126539 ;
	setAttr ".pt[89]" -type "float3" 0.14086899 -3.3968251 -0.031802997 ;
	setAttr ".pt[90]" -type "float3" -0.38311625 -1.545994 0.17263891 ;
	setAttr ".pt[91]" -type "float3" -0.27937442 -1.545994 0.31542772 ;
	setAttr ".pt[92]" -type "float3" -0.1265249 -1.545994 0.40367556 ;
	setAttr ".pt[93]" -type "float3" 0.049004626 -1.545994 0.42212439 ;
	setAttr ".pt[94]" -type "float3" 0.21686232 -1.545994 0.3675842 ;
	setAttr ".pt[95]" -type "float3" 0.34802413 -1.545994 0.24948519 ;
	setAttr ".pt[96]" -type "float3" 0.41981193 -1.545994 0.088247918 ;
	setAttr ".pt[97]" -type "float3" 0.41981167 -1.545994 -0.088247836 ;
	setAttr ".pt[98]" -type "float3" 0.34802428 -1.545994 -0.24948558 ;
	setAttr ".pt[99]" -type "float3" 0.2168624 -1.545994 -0.36758384 ;
	setAttr ".pt[100]" -type "float3" 0.049004681 -1.545994 -0.42212439 ;
	setAttr ".pt[101]" -type "float3" -0.12652451 -1.545994 -0.40367571 ;
	setAttr ".pt[102]" -type "float3" -0.27937454 -1.545994 -0.31542739 ;
	setAttr ".pt[103]" -type "float3" -0.38311633 -1.545994 -0.17263938 ;
	setAttr ".pt[104]" -type "float3" -0.41981193 -1.545994 -1.2728633e-007 ;
	setAttr ".pt[105]" -type "float3" -0.60839123 -2.4161878 0.27415198 ;
	setAttr ".pt[106]" -type "float3" -0.4436489 -2.4161878 0.50090092 ;
	setAttr ".pt[107]" -type "float3" -0.20092182 -2.4161878 0.64103907 ;
	setAttr ".pt[108]" -type "float3" 0.077819586 -2.4161878 0.67033595 ;
	setAttr ".pt[109]" -type "float3" 0.34437859 -2.4161878 0.58372575 ;
	setAttr ".pt[110]" -type "float3" 0.55266494 -2.4161878 0.396184 ;
	setAttr ".pt[111]" -type "float3" 0.66666424 -2.4161878 0.14013854 ;
	setAttr ".pt[112]" -type "float3" 0.66666383 -2.4161878 -0.14013845 ;
	setAttr ".pt[113]" -type "float3" 0.55266517 -2.4161878 -0.39618397 ;
	setAttr ".pt[114]" -type "float3" 0.34437871 -2.4161878 -0.58372557 ;
	setAttr ".pt[115]" -type "float3" 0.077819623 -2.4161878 -0.67033607 ;
	setAttr ".pt[116]" -type "float3" -0.20092171 -2.4161878 -0.64103943 ;
	setAttr ".pt[117]" -type "float3" -0.44364887 -2.4161878 -0.50090086 ;
	setAttr ".pt[118]" -type "float3" -0.60839128 -2.4161878 -0.27415237 ;
	setAttr ".pt[119]" -type "float3" -0.66666424 -2.4161878 -8.7223988e-009 ;
	setAttr ".pt[120]" -type "float3" -0.55983341 -2.4161878 0.25392985 ;
	setAttr ".pt[121]" -type "float3" -0.40724224 -2.4161878 0.46395209 ;
	setAttr ".pt[122]" -type "float3" -0.18241842 -2.4161878 0.59375495 ;
	setAttr ".pt[123]" -type "float3" 0.075760819 -2.4161878 0.62088954 ;
	setAttr ".pt[124]" -type "float3" 0.32265815 -2.4161878 0.54066819 ;
	setAttr ".pt[125]" -type "float3" 0.51558065 -2.4161878 0.36695987 ;
	setAttr ".pt[126]" -type "float3" 0.62116945 -2.4161878 0.12980312 ;
	setAttr ".pt[127]" -type "float3" 0.62117118 -2.4161878 -0.12980118 ;
	setAttr ".pt[128]" -type "float3" 0.5155803 -2.4161878 -0.36695954 ;
	setAttr ".pt[129]" -type "float3" 0.32265821 -2.4161878 -0.54066807 ;
	setAttr ".pt[130]" -type "float3" 0.075761095 -2.4161878 -0.62088996 ;
	setAttr ".pt[131]" -type "float3" -0.18241771 -2.4161878 -0.5937531 ;
	setAttr ".pt[132]" -type "float3" -0.4072412 -2.4161878 -0.46395352 ;
	setAttr ".pt[133]" -type "float3" -0.55983168 -2.4161878 -0.25392947 ;
	setAttr ".pt[134]" -type "float3" -0.61380607 -2.4161878 4.3307975e-007 ;
	setAttr ".pt[136]" -type "float3" -0.33704147 -1.5445211 0.15375784 ;
	setAttr ".pt[137]" -type "float3" -0.24464536 -1.5445211 0.28092968 ;
	setAttr ".pt[138]" -type "float3" -0.10851127 -1.5445211 0.35952714 ;
	setAttr ".pt[139]" -type "float3" 0.047819965 -1.5445211 0.37595659 ;
	setAttr ".pt[140]" -type "float3" 0.1973199 -1.5445211 0.32738161 ;
	setAttr ".pt[141]" -type "float3" 0.31413692 -1.5445211 0.22219872 ;
	setAttr ".pt[142]" -type "float3" 0.37807268 -1.5445211 0.07859733 ;
	setAttr ".pt[143]" -type "float3" 0.37807363 -1.5445211 -0.078596793 ;
	setAttr ".pt[144]" -type "float3" 0.31413692 -1.5445211 -0.22219872 ;
	setAttr ".pt[145]" -type "float3" 0.19732001 -1.5445211 -0.32738188 ;
	setAttr ".pt[146]" -type "float3" 0.047820102 -1.5445211 -0.37595806 ;
	setAttr ".pt[147]" -type "float3" -0.10851091 -1.5445211 -0.35952652 ;
	setAttr ".pt[148]" -type "float3" -0.24464472 -1.5445211 -0.28093117 ;
	setAttr ".pt[149]" -type "float3" -0.33704063 -1.5445211 -0.15375832 ;
	setAttr ".pt[150]" -type "float3" -0.3697226 -1.5445211 -3.8301746e-008 ;
	setAttr ".pt[151]" -type "float3" 0.11530311 -3.395967 -0.0846119 ;
	setAttr ".pt[152]" -type "float3" 0.083569586 -3.395967 -0.12828831 ;
	setAttr ".pt[153]" -type "float3" 0.036814429 -3.395967 -0.15528263 ;
	setAttr ".pt[154]" -type "float3" -0.016877567 -3.395967 -0.16092528 ;
	setAttr ".pt[155]" -type "float3" -0.068223312 -3.395967 -0.14424187 ;
	setAttr ".pt[156]" -type "float3" -0.10834423 -3.395967 -0.10811716 ;
	setAttr ".pt[157]" -type "float3" -0.13030292 -3.395967 -0.058797605 ;
	setAttr ".pt[158]" -type "float3" -0.13030325 -3.395967 -0.0048089041 ;
	setAttr ".pt[159]" -type "float3" -0.10834423 -3.395967 0.044511251 ;
	setAttr ".pt[160]" -type "float3" -0.068223342 -3.395967 0.080636531 ;
	setAttr ".pt[161]" -type "float3" -0.016877638 -3.395967 0.097319983 ;
	setAttr ".pt[162]" -type "float3" 0.036814258 -3.395967 0.09167628 ;
	setAttr ".pt[163]" -type "float3" 0.083569534 -3.395967 0.064682893 ;
	setAttr ".pt[164]" -type "float3" 0.11530271 -3.395967 0.021005299 ;
	setAttr ".pt[165]" -type "float3" 0.12652734 -3.395967 -0.031803772 ;
	setAttr ".pt[166]" -type "float3" 0.021117983 -3.6398222 -0.0036782236 ;
	setAttr ".pt[167]" -type "float3" 0.015349736 -3.6398222 -0.011617179 ;
	setAttr ".pt[168]" -type "float3" 0.0068510445 -3.6398222 -0.016524106 ;
	setAttr ".pt[169]" -type "float3" -0.0029085358 -3.6398222 -0.017549869 ;
	setAttr ".pt[170]" -type "float3" -0.012241639 -3.6398222 -0.014517341 ;
	setAttr ".pt[171]" -type "float3" -0.019534424 -3.6398222 -0.0079509327 ;
	setAttr ".pt[172]" -type "float3" -0.023525858 -3.6398222 0.0010140371 ;
	setAttr ".pt[173]" -type "float3" -0.023525912 -3.6398222 0.010827414 ;
	setAttr ".pt[174]" -type "float3" -0.019534409 -3.6398222 0.019792179 ;
	setAttr ".pt[175]" -type "float3" -0.012241657 -3.6398222 0.026358809 ;
	setAttr ".pt[176]" -type "float3" -0.0029085514 -3.6398222 0.029391361 ;
	setAttr ".pt[177]" -type "float3" 0.006851031 -3.6398222 0.028365552 ;
	setAttr ".pt[178]" -type "float3" 0.015349723 -3.6398222 0.02345892 ;
	setAttr ".pt[179]" -type "float3" 0.021117928 -3.6398222 0.01551966 ;
	setAttr ".pt[180]" -type "float3" 0.023158221 -3.6398222 0.0059205513 ;
	setAttr ".pt[181]" -type "float3" -0.00044168427 -3.639823 0.0059207375 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".h" 25;
	setAttr ".sa" 15;
	setAttr ".sh" 6;
	setAttr ".sc" 2;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[135:149]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0093836784 25 9.5367432e-007 ;
	setAttr ".rs" 60721;
	setAttr ".lt" -type "double3" 2.2204460492503131e-016 -8.0488325999953152e-017 -4.362487194981064 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.4148435592651367 25 -3.4242162704467773 ;
	setAttr ".cbx" -type "double3" 3.3960762023925781 25 3.4242181777954102 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 182 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0.49958313 0 -0.22787976 0.36264637
		 0 -0.41635731 0.16088809 0 -0.53284252 -0.070806429 0 -0.55719465 -0.29237497 0 -0.48520231
		 -0.46550605 0 -0.3293148 -0.56026387 0 -0.11648531 -0.56026357 0 0.11648527 -0.46550629
		 0 0.32931462 -0.29237506 0 0.48520237 -0.070806794 0 0.55719459 0.16088796 0 0.53284252
		 0.36264634 0 0.41635713 0.49958339 0 0.22787984 0.54802072 0 -1.5978773e-007 1.01140964
		 0 -0.45575958 0.73753607 0 -0.83271438 0.33401883 0 -1.065685034 -0.12937002 0 -1.11438906
		 -0.57250667 0 -0.97040474 -0.91876936 0 -0.65862924 -1.10828447 0 -0.23297092 -1.10828424
		 0 0.23297085 -0.9187693 0 0.65862936 -0.57250708 0 0.97040492 -0.12937005 0 1.11438918
		 0.33401841 0 1.065685153 0.73753601 0 0.83271414 1.011409521 0 0.45575967 1.10828435
		 0 -3.3394322e-008 2.098674774 0 -0.94570059 1.5303874 0 -1.72788131 0.69308889 0
		 -2.21129704 -0.26844251 0 -2.31235838 -1.18795133 0 -2.013591766 -1.90644503 0 -1.36665654
		 -2.29968929 0 -0.48341513 -2.29969001 0 0.48341388 -1.90644503 0 1.36665595 -1.18795228
		 0 2.013590813 -0.26843852 0 2.31235838 0.69308984 0 2.21129823 1.53038657 0 1.72788
		 2.098675489 0 0.94570154 2.29969001 0 -2.0787962e-007 5.43632889 0 -2.44970536 3.96425772
		 0 -4.47583961 1.79535079 0 -5.72805452 -0.69536471 0 -5.98984098 -3.077223063 0 -5.21592951
		 -4.93838406 0 -3.54013228 -5.95702887 0 -1.2522186 -5.95702791 0 1.25222039 -4.93838358
		 0 3.54013181 -3.077224016 0 5.21592951 -0.69536728 0 5.98984098 1.79535079 0 5.72806358
		 3.96425843 0 4.47583771 5.43632746 0 2.44971037 5.95702839 0 0 1.61825418 0 -0.7292164
		 1.18006277 0 -1.33234167 0.53443247 0 -1.7050997 -0.20699139 0 -1.78302252 -0.91601163
		 0 -1.55264437 -1.47003269 0 -1.053807735 -1.7732538 0 -0.37274987 -1.77325225 0 0.37275383
		 -1.47003341 0 1.053805828 -0.91601086 0 1.55264807 -0.20699584 0 1.783023 0.53443342
		 0 1.70509565 1.18005836 0 1.33234406 1.61825526 0 0.72921497 1.77325451 0 -3.1443435e-006
		 0.4804208 0 -0.21648589 0.35032821 0 -0.39553776 0.15865906 0 -0.50620109 -0.061450128
		 0 -0.52933437 -0.27194175 0 -0.46094209 -0.43641412 0 -0.31284928 -0.52643466 0 -0.1106602
		 -0.52643573 0 0.11066086 -0.43641439 0 0.31284928 -0.27194062 0 0.46094304 -0.061451703
		 0 0.52933484 0.15865993 0 0.50619972 0.35032916 0 0.39554024 0.48041892 0 0.21648544
		 0.52643597 0 -1.5882956e-007 0.96083879 0 -0.43297035 0.70065862 0 -0.79107928 0.31731981
		 0 -1.012400389 -0.12290168 0 -1.058670044 -0.543881 0 -0.92188537 -0.8728292 0 -0.62569815
		 -1.05287075 0 -0.22132161 -1.052869439 0 0.22132124 -0.87283015 0 0.6256991 -0.5438816
		 0 0.92188483 -0.12290175 0 1.058669806 0.31731787 0 1.012401104 0.70065922 0 0.79107785
		 0.96083951 0 0.43297189 1.052870393 0 6.1911379e-007 2.45266843 0 -1.10521638 1.78852654
		 0 -2.01933217 0.80999589 0 -2.58428454 -0.3137221 0 -2.70239258 -1.3883276 0 -2.35323167
		 -2.22801399 0 -1.59717631 -2.68759036 0 -0.56495458 -2.68758869 0 0.56495428 -2.22801471
		 0 1.59717631 -1.38832831 0 2.35323119 -0.31372204 0 2.70239258 0.80999571 0 2.58428645
		 1.78852642 0 2.019331932 2.45266891 0 1.10521829 2.68758965 0 8.0981259e-008 2.64164376
		 0 -1.19705915 1.92230844 0 -2.18713117 0.86245799 0 -2.79904008 -0.35463211 0 -2.92695546
		 -1.51853895 0 -2.54878092 -2.4280014 0 -1.72989666 -2.92576003 0 -0.6119104 -2.92576981
		 0 0.61189997 -2.42799926 0 1.72989559 -1.51853931 0 2.5487802 -0.35463348 0 2.92695737
		 0.86245412 0 2.79903007 1.92230248 0 2.18713903 2.64163399 0 1.19705701 2.8960762
		 0 -2.3555651e-006 -0.012242495 0 -3.3394322e-008 -0.047000024 0 7.4951695e-006 1.1920929e-006
		 0 -3.5762787e-007 -2.3841858e-007 0 2.3841858e-007 0 0 0 -4.7683716e-007 0 2.3841858e-007
		 -9.5367432e-007 0 -7.1525574e-007 7.1525574e-007 0 1.1920929e-006 -5.9604645e-007
		 0 2.3841858e-007 -2.8421709e-014 0 2.3841858e-007 2.3841858e-007 0 2.3841858e-007
		 -7.1525574e-007 0 9.5367432e-007 9.5367432e-007 0 -7.1525574e-007 -2.3841858e-007
		 0 1.1920929e-007 2.3841858e-007 0 0 -2.3841858e-007 0 -5.9604645e-007 9.5367432e-007
		 0 7.1525574e-007 -7.1525574e-007 0 -1.1920929e-006 2.3841858e-007 0 -2.3841858e-007
		 0 0 -2.3841858e-007 -3.5762787e-007 0 0 7.1525574e-007 0 -9.5367432e-007 -9.5367432e-007
		 0 4.7683716e-007 2.3841858e-007 0 -3.5762787e-007 -2.3841858e-007 0 0 -3.5762787e-007
		 0 0 -5.9604645e-007 0 -3.5762787e-007 1.1920929e-007 0 4.7683716e-007 1.1920929e-007
		 0 -1.1920929e-007 -2.8421709e-014 0 1.1920929e-007 1.1920929e-007 0 -1.1920929e-007;
	setAttr ".tk[166:181]" -3.5762787e-007 0 4.7683716e-007 4.7683716e-007 0 -5.9604645e-007
		 -1.1920929e-007 0 1.7881393e-007 0 0 0 -1.1920929e-007 0 1.1920929e-007 3.5762787e-007
		 0 3.5762787e-007 2.3841858e-007 0 -4.7683716e-007 0 0 -2.3841858e-007 0 0 -3.5762787e-007
		 -2.3841858e-007 0 -2.3841858e-007 3.5762787e-007 0 -7.1525574e-007 -4.7683716e-007
		 0 2.3841858e-007 0 0 1.7881393e-007 -1.1920929e-007 0 0 0 0 0 -2.8421709e-014 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[135:149]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0093836784 20.82616 3.0994415e-006 ;
	setAttr ".rs" 35140;
	setAttr ".lt" -type "double3" 0 7.7652488605657915e-017 -4.1502842812511673 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8280050754547119 20.82616138458252 -1.82863450050354 ;
	setAttr ".cbx" -type "double3" 1.8092377185821533 20.82616138458252 1.8286406993865967 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[136:151]" -type "float3"  -1.44813824 0.18864927 0.65255666
		 -1.056005836 0.18864927 1.19227922 0.017528031 0.18864927 -2.1018784e-006 -0.47824737
		 0.18864927 1.52584743 0.18522853 0.18864927 1.59557915 0.81971091 0.18864927 1.38942182
		 1.31548905 0.18864927 0.94302237 1.58683395 0.18864927 0.33357269 1.58683848 0.18864927
		 -0.33356485 1.31548762 0.18864927 -0.94301784 0.81971103 0.18864927 -1.38941669 0.18522903
		 0.18864927 -1.59557915 -0.47824508 0.18864927 -1.52584398 -1.056002498 0.18864927
		 -1.19228053 -1.4481324 0.18864927 -0.65255284 -1.58683848 0.18864927 2.5418628e-006;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[135:149]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0093836784 16.675877 2.3841858e-006 ;
	setAttr ".rs" 43254;
	setAttr ".lt" -type "double3" 0 1.6157257935718201e-017 -4.1772341791813705 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3909119367599487 16.675876617431641 -1.3891341686248779 ;
	setAttr ".cbx" -type "double3" 1.3721445798873901 16.675876617431641 1.38913893699646 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[151:166]" -type "float3"  -0.3988885 0 0.17974898 -0.29087573
		 0 0.32841212 0.0048280898 0 -3.3579886e-007 -0.13173279 0 0.42029402 0.051021036
		 0 0.43950039 0.22578903 0 0.38271379 0.36235026 0 0.25975472 0.43709186 0 0.091883637
		 0.43709311 0 -0.091880456 0.36234999 0 -0.25975347 0.22578906 0 -0.38271463 0.051021241
		 0 -0.43950039 -0.1317324 0 -0.42029172 -0.29087502 0 -0.32841262 -0.3988874 0 -0.17974551
		 -0.43709311 0 3.2953778e-006;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[135:149]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0093836784 12.498642 2.9802322e-006 ;
	setAttr ".rs" 33205;
	setAttr ".lt" -type "double3" 2.2204460492503131e-016 4.3137205611692387e-016 -4.163759230150454 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5881681442260742 12.498641967773437 -2.5929818153381348 ;
	setAttr ".cbx" -type "double3" 2.5694007873535156 12.498641967773437 2.5929877758026123 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[166:181]" -type "float3"  1.092607379 0 -0.49234796
		 0.79674709 0 -0.89955008 -0.013224761 0 2.2884608e-006 0.36083344 0 -1.15123558 -0.13975327
		 0 -1.20384884 -0.6184656 0 -1.048304319 -0.99252415 0 -0.71150261 -1.19725275 0 -0.25167316
		 -1.19725633 0 0.25167197 -0.99252373 0 0.71149045 -0.61846566 0 1.0483042 -0.13975385
		 0 1.20384884 0.36083201 0 1.15123415 0.79674548 0 0.89956433 1.092604995 0 0.49234551
		 1.19725633 0 -9.5430123e-006;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[135:149]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0093836784 8.3348827 2.6226044e-006 ;
	setAttr ".rs" 60376;
	setAttr ".lt" -type "double3" 0 8.4777825676954267e-016 -4.181946158719879 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.7120451927185059 8.3348827362060547 -6.7395730018615723 ;
	setAttr ".cbx" -type "double3" 6.6932778358459473 8.3348827362060547 6.7395782470703125 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[181:196]" -type "float3"  3.76343131 0 -1.69584751 2.74434543
		 0 -3.098448277 -0.045552067 0 9.3355102e-006 1.24287248 0 -3.96538019 -0.48137242
		 0 -4.14659309 -2.1302712 0 -3.61082149 -3.41869473 0 -2.45073628 -4.12386799 0 -0.86687487
		 -4.12387705 0 0.86687237 -3.41869473 0 2.4506886 -2.13027143 0 3.61082315 -0.48137417
		 0 4.14659309 1.24286771 0 3.96535754 2.74434042 0 3.098502636 3.76342392 0 1.69585013
		 4.12387705 0 -2.330248e-005;
createNode polyNormalPerVertex -n "polyNormalPerVertex1";
	setAttr ".uopa" yes;
	setAttr -s 212 ".vn";
	setAttr ".vn[0].nxyz" -type "float3" 0 -1 9.7768839e-007 ;
	setAttr ".vn[1].nxyz" -type "float3" 0 -1 0 ;
	setAttr ".vn[2].nxyz" -type "float3" 0 -1 -3.8292794e-007 ;
	setAttr ".vn[3].nxyz" -type "float3" 0 -1 -2.4442195e-007 ;
	setAttr ".vn[4].nxyz" -type "float3" 0 -1 -1.3850578e-007 ;
	setAttr ".vn[5].nxyz" -type "float3" 0 -1 -7.0067676e-007 ;
	setAttr ".vn[6].nxyz" -type "float3" 0 -1 -4.236646e-007 ;
	setAttr ".vn[7].nxyz" -type "float3" 0 -1 -1.3035778e-007 ;
	setAttr ".vn[8].nxyz" -type "float3" 0 -1 -1.303586e-007 ;
	setAttr ".vn[9].nxyz" -type "float3" 0 -1 2.7701148e-007 ;
	setAttr ".vn[10].nxyz" -type "float3" 0 -1 4.8477028e-007 ;
	setAttr ".vn[11].nxyz" -type "float3" 0 -1 2.077586e-007 ;
	setAttr ".vn[12].nxyz" -type "float3" 0 -1 -5.5402307e-007 ;
	setAttr ".vn[13].nxyz" -type "float3" 0 -1 -9.7768759e-007 ;
	setAttr ".vn[14].nxyz" -type "float3" 0 -1 5.5402319e-007 ;
	setAttr ".vn[15].nxyz" -type "float3" 0.55000454 -0.79848677 -0.24477342 ;
	setAttr ".vn[16].nxyz" -type "float3" 0.40276358 -0.79870123 -0.44705456 ;
	setAttr ".vn[17].nxyz" -type "float3" 0.18602577 -0.79901701 -0.57180947 ;
	setAttr ".vn[18].nxyz" -type "float3" -0.062572844 -0.79937935 -0.59755933 ;
	setAttr ".vn[19].nxyz" -type "float3" -0.30000827 -0.79972559 -0.52003276 ;
	setAttr ".vn[20].nxyz" -type "float3" -0.4853344 -0.79999566 -0.35278535 ;
	setAttr ".vn[21].nxyz" -type "float3" -0.58669138 -0.80014342 -0.12475467 ;
	setAttr ".vn[22].nxyz" -type "float3" -0.58669138 -0.80014348 0.12475394 ;
	setAttr ".vn[23].nxyz" -type "float3" -0.48533463 -0.79999578 0.35278463 ;
	setAttr ".vn[24].nxyz" -type "float3" -0.30000821 -0.79972547 0.520033 ;
	setAttr ".vn[25].nxyz" -type "float3" -0.062573321 -0.79937929 0.59755945 ;
	setAttr ".vn[26].nxyz" -type "float3" 0.18602613 -0.79901713 0.57180941 ;
	setAttr ".vn[27].nxyz" -type "float3" 0.40276369 -0.79870135 0.4470543 ;
	setAttr ".vn[28].nxyz" -type "float3" 0.55000436 -0.79848671 0.24477351 ;
	setAttr ".vn[29].nxyz" -type "float3" 0.60211319 -0.79841077 3.1595886e-007 ;
	setAttr ".vn[30].nxyz" -type "float3" 0.75190341 -0.56805658 -0.33459398 ;
	setAttr ".vn[31].nxyz" -type "float3" 0.55041796 -0.56910741 -0.61086559 ;
	setAttr ".vn[32].nxyz" -type "float3" 0.25411597 -0.57065129 -0.78088552 ;
	setAttr ".vn[33].nxyz" -type "float3" -0.085324064 -0.57241803 -0.81551051 ;
	setAttr ".vn[34].nxyz" -type "float3" -0.40910134 -0.57410145 -0.7092557 ;
	setAttr ".vn[35].nxyz" -type "float3" -0.66153181 -0.57541239 -0.48091188 ;
	setAttr ".vn[36].nxyz" -type "float3" -0.79948133 -0.5761283 -0.17001705 ;
	setAttr ".vn[37].nxyz" -type "float3" -0.79948139 -0.57612824 0.17001687 ;
	setAttr ".vn[38].nxyz" -type "float3" -0.66153193 -0.57541233 0.48091182 ;
	setAttr ".vn[39].nxyz" -type "float3" -0.4091014 -0.57410145 0.70925564 ;
	setAttr ".vn[40].nxyz" -type "float3" -0.085324965 -0.57241821 0.81551033 ;
	setAttr ".vn[41].nxyz" -type "float3" 0.25411627 -0.57065189 0.78088492 ;
	setAttr ".vn[42].nxyz" -type "float3" 0.55041826 -0.56910747 0.61086541 ;
	setAttr ".vn[43].nxyz" -type "float3" 0.75190324 -0.5680567 0.33459398 ;
	setAttr ".vn[44].nxyz" -type "float3" 0.82324642 -0.56768429 -7.1489126e-008 ;
	setAttr ".vn[45].nxyz" -type "float3" 0.91280335 0.034968138 -0.40689969 ;
	setAttr ".vn[46].nxyz" -type "float3" 0.66810697 0.03506596 -0.74323851 ;
	setAttr ".vn[47].nxyz" -type "float3" 0.30782452 0.035210237 -0.95079148 ;
	setAttr ".vn[48].nxyz" -type "float3" -0.10555513 0.035375431 -0.99378401 ;
	setAttr ".vn[49].nxyz" -type "float3" -0.50051063 0.035532944 -0.8650009 ;
	setAttr ".vn[50].nxyz" -type "float3" -0.80888277 0.035655819 -0.5868879 ;
	setAttr ".vn[51].nxyz" -type "float3" -0.97757095 0.03572296 -0.20755483 ;
	setAttr ".vn[52].nxyz" -type "float3" -0.97757089 0.035722546 0.20755509 ;
	setAttr ".vn[53].nxyz" -type "float3" -0.80888283 0.035655633 0.58688784 ;
	setAttr ".vn[54].nxyz" -type "float3" -0.50051099 0.035532285 0.86500067 ;
	setAttr ".vn[55].nxyz" -type "float3" -0.10555589 0.035375193 0.99378401 ;
	setAttr ".vn[56].nxyz" -type "float3" 0.30782449 0.035210479 0.95079148 ;
	setAttr ".vn[57].nxyz" -type "float3" 0.66810727 0.035066057 0.74323827 ;
	setAttr ".vn[58].nxyz" -type "float3" 0.91280317 0.034968849 0.40689981 ;
	setAttr ".vn[59].nxyz" -type "float3" 0.99938965 0.034934193 2.9292989e-008 ;
	setAttr ".vn[60].nxyz" -type "float3" 0.71063185 0.62850791 -0.31619665 ;
	setAttr ".vn[61].nxyz" -type "float3" 0.52013415 0.62954491 -0.57717735 ;
	setAttr ".vn[62].nxyz" -type "float3" 0.24010985 0.6310674 -0.73763216 ;
	setAttr ".vn[63].nxyz" -type "float3" -0.080506191 0.63280803 -0.77011216 ;
	setAttr ".vn[64].nxyz" -type "float3" -0.38614947 0.63446498 -0.6695841 ;
	setAttr ".vn[65].nxyz" -type "float3" -0.62432331 0.63575488 -0.45391208 ;
	setAttr ".vn[66].nxyz" -type "float3" -0.75443769 0.63645828 -0.16045171 ;
	setAttr ".vn[67].nxyz" -type "float3" -0.75443763 0.63645816 0.1604521 ;
	setAttr ".vn[68].nxyz" -type "float3" -0.62432361 0.63575464 0.45391211 ;
	setAttr ".vn[69].nxyz" -type "float3" -0.38615009 0.63446504 0.66958362 ;
	setAttr ".vn[70].nxyz" -type "float3" -0.080505699 0.63280821 0.7701121 ;
	setAttr ".vn[71].nxyz" -type "float3" 0.24010944 0.63106775 0.73763198 ;
	setAttr ".vn[72].nxyz" -type "float3" 0.52013397 0.62954509 0.57717741 ;
	setAttr ".vn[73].nxyz" -type "float3" 0.71063179 0.62850791 0.31619653 ;
	setAttr ".vn[74].nxyz" -type "float3" 0.77809995 0.62814051 -7.0152694e-008 ;
	setAttr ".vn[75].nxyz" -type "float3" 0.90828365 0.10767845 -0.40426004 ;
	setAttr ".vn[76].nxyz" -type "float3" 0.6653865 0.10797058 -0.73864961 ;
	setAttr ".vn[77].nxyz" -type "float3" 0.30746964 0.10840089 -0.94536322 ;
	setAttr ".vn[78].nxyz" -type "float3" -0.10360957 0.10889427 -0.988639 ;
	setAttr ".vn[79].nxyz" -type "float3" -0.4967742 0.10936671 -0.86096132 ;
	setAttr ".vn[80].nxyz" -type "float3" -0.80402726 0.10973614 -0.58437848 ;
	setAttr ".vn[81].nxyz" -type "float3" -0.97220546 0.10993821 -0.20671268 ;
	setAttr ".vn[82].nxyz" -type "float3" -0.97220558 0.10993805 0.20671251 ;
	setAttr ".vn[83].nxyz" -type "float3" -0.8040272 0.1097361 0.58437854 ;
	setAttr ".vn[84].nxyz" -type "float3" -0.49677485 0.10936685 0.86096096 ;
	setAttr ".vn[85].nxyz" -type "float3" -0.10360812 0.10889437 0.98863918 ;
	setAttr ".vn[86].nxyz" -type "float3" 0.3074685 0.10840047 0.94536364 ;
	setAttr ".vn[87].nxyz" -type "float3" 0.6653862 0.10797041 0.73864985 ;
	setAttr ".vn[88].nxyz" -type "float3" 0.90828389 0.10767861 0.40425944 ;
	setAttr ".vn[89].nxyz" -type "float3" 0.99419695 0.10757539 3.224647e-007 ;
	setAttr ".vn[90].nxyz" -type "float3" 0.87634951 -0.2825928 -0.39006785 ;
	setAttr ".vn[91].nxyz" -type "float3" 0.64185154 -0.28330201 -0.7125774 ;
	setAttr ".vn[92].nxyz" -type "float3" 0.29648131 -0.28434616 -0.91172695 ;
	setAttr ".vn[93].nxyz" -type "float3" -0.099936135 -0.28554446 -0.95314074 ;
	setAttr ".vn[94].nxyz" -type "float3" -0.47882986 -0.28668979 -0.82977772 ;
	setAttr ".vn[95].nxyz" -type "float3" -0.77475643 -0.28758422 -0.56307 ;
	setAttr ".vn[96].nxyz" -type "float3" -0.93667173 -0.28807375 -0.19914752 ;
	setAttr ".vn[97].nxyz" -type "float3" -0.93667173 -0.28807345 0.19914748 ;
	setAttr ".vn[98].nxyz" -type "float3" -0.77475679 -0.28758419 0.56306958 ;
	setAttr ".vn[99].nxyz" -type "float3" -0.47882965 -0.2866897 0.82977778 ;
	setAttr ".vn[100].nxyz" -type "float3" -0.099936657 -0.28554448 0.95314068 ;
	setAttr ".vn[101].nxyz" -type "float3" 0.29648101 -0.28434625 0.91172707 ;
	setAttr ".vn[102].nxyz" -type "float3" 0.64185107 -0.28330207 0.71257782 ;
	setAttr ".vn[103].nxyz" -type "float3" 0.87634951 -0.28259292 0.39006773 ;
	setAttr ".vn[104].nxyz" -type "float3" 0.95931381 -0.28234193 -3.5803872e-008 ;
	setAttr ".vn[105].nxyz" -type "float3" 0.75478232 0.56323522 -0.33625862 ;
	setAttr ".vn[106].nxyz" -type "float3" 0.55281693 0.56285614 -0.61448061 ;
	setAttr ".vn[107].nxyz" -type "float3" 0.25511608 0.56229746 -0.78659856 ;
	setAttr ".vn[108].nxyz" -type "float3" -0.086943515 0.5616563 -0.82278967 ;
	setAttr ".vn[109].nxyz" -type "float3" -0.41424182 0.56104481 -0.71668154 ;
	setAttr ".vn[110].nxyz" -type "float3" -0.67011452 0.56056654 -0.4865301 ;
	setAttr ".vn[111].nxyz" -type "float3" -0.81020623 0.56030536 -0.17211577 ;
	setAttr ".vn[112].nxyz" -type "float3" -0.81020606 0.56030548 0.17211591 ;
	setAttr ".vn[113].nxyz" -type "float3" -0.67011505 0.56056666 0.48652947 ;
	setAttr ".vn[114].nxyz" -type "float3" -0.41424108 0.56104428 0.71668243 ;
	setAttr ".vn[115].nxyz" -type "float3" -0.08694423 0.56165653 0.82278949 ;
	setAttr ".vn[116].nxyz" -type "float3" 0.25511608 0.56229728 0.78659886 ;
	setAttr ".vn[117].nxyz" -type "float3" 0.55281615 0.56285584 0.61448157 ;
	setAttr ".vn[118].nxyz" -type "float3" 0.7547825 0.56323534 0.33625787 ;
	setAttr ".vn[119].nxyz" -type "float3" 0.82620502 0.56336963 4.3606016e-010 ;
	setAttr ".vn[120].nxyz" -type "float3" -0.51847446 0.82330692 0.23097619 ;
	setAttr ".vn[121].nxyz" -type "float3" -0.37937778 0.82356083 0.42168716 ;
	setAttr ".vn[122].nxyz" -type "float3" -0.17483462 0.82393545 0.53903925 ;
	setAttr ".vn[123].nxyz" -type "float3" 0.059476916 0.82436413 0.56292653 ;
	setAttr ".vn[124].nxyz" -type "float3" 0.28296316 0.82477278 0.48957306 ;
	setAttr ".vn[125].nxyz" -type "float3" 0.4572002 0.8250916 0.33195144 ;
	setAttr ".vn[126].nxyz" -type "float3" 0.55241692 0.82526559 0.11735525 ;
	setAttr ".vn[127].nxyz" -type "float3" 0.55241698 0.82526577 -0.11735339 ;
	setAttr ".vn[128].nxyz" -type "float3" 0.45720011 0.82509154 -0.33195186 ;
	setAttr ".vn[129].nxyz" -type "float3" 0.28296474 0.82477301 -0.48957163 ;
	setAttr ".vn[130].nxyz" -type "float3" 0.059475277 0.82436401 -0.56292695 ;
	setAttr ".vn[131].nxyz" -type "float3" -0.17483433 0.82393497 -0.53903997 ;
	setAttr ".vn[132].nxyz" -type "float3" -0.37937745 0.82356095 -0.4216871 ;
	setAttr ".vn[133].nxyz" -type "float3" -0.51847488 0.82330632 -0.23097703 ;
	setAttr ".vn[134].nxyz" -type "float3" -0.56772786 0.82321638 -1.4480671e-006 ;
	setAttr ".vn[135].nxyz" -type "float3" 0 -1 -6.9524667e-008 ;
	setAttr ".vn[136].nxyz" -type "float3" -0.87969464 0.26985899 0.39155263 ;
	setAttr ".vn[137].nxyz" -type "float3" -0.64431459 0.27054074 0.71530861 ;
	setAttr ".vn[138].nxyz" -type "float3" -0.29763061 0.27154642 0.91524786 ;
	setAttr ".vn[139].nxyz" -type "float3" 0.10032458 0.27269936 0.95685428 ;
	setAttr ".vn[140].nxyz" -type "float3" 0.48070559 0.27380216 0.83303934 ;
	setAttr ".vn[141].nxyz" -type "float3" 0.77781582 0.27466303 0.56529897 ;
	setAttr ".vn[142].nxyz" -type "float3" 0.940386 0.27513355 0.19993956 ;
	setAttr ".vn[143].nxyz" -type "float3" 0.94038647 0.27513427 -0.19993651 ;
	setAttr ".vn[144].nxyz" -type "float3" 0.77781594 0.27466249 -0.56529903 ;
	setAttr ".vn[145].nxyz" -type "float3" 0.48070836 0.27380159 -0.83303791 ;
	setAttr ".vn[146].nxyz" -type "float3" 0.10032084 0.27269912 -0.9568547 ;
	setAttr ".vn[147].nxyz" -type "float3" -0.29762995 0.2715449 -0.91524845 ;
	setAttr ".vn[148].nxyz" -type "float3" -0.64431423 0.27054068 -0.71530896 ;
	setAttr ".vn[149].nxyz" -type "float3" -0.8796953 0.26985785 -0.39155188 ;
	setAttr ".vn[150].nxyz" -type "float3" -0.96296781 0.26961631 -2.8985216e-006 ;
	setAttr ".vn[151].nxyz" -type "float3" -0.90767902 -0.11358338 0.40400204 ;
	setAttr ".vn[152].nxyz" -type "float3" -0.66492987 -0.11388928 0.73817176 ;
	setAttr ".vn[153].nxyz" -type "float3" -0.30724815 -0.11434308 0.94473499 ;
	setAttr ".vn[154].nxyz" -type "float3" 0.10356267 -0.11486322 0.98796821 ;
	setAttr ".vn[155].nxyz" -type "float3" 0.49644923 -0.11536053 0.86036628 ;
	setAttr ".vn[156].nxyz" -type "float3" 0.80348027 -0.11574972 0.58397055 ;
	setAttr ".vn[157].nxyz" -type "float3" 0.97153598 -0.11596225 0.20656854 ;
	setAttr ".vn[158].nxyz" -type "float3" 0.97153676 -0.11596173 -0.20656577 ;
	setAttr ".vn[159].nxyz" -type "float3" 0.80348039 -0.11574847 -0.58397061 ;
	setAttr ".vn[160].nxyz" -type "float3" 0.49645486 -0.11536071 -0.86036295 ;
	setAttr ".vn[161].nxyz" -type "float3" 0.10355867 -0.1148636 -0.98796862 ;
	setAttr ".vn[162].nxyz" -type "float3" -0.30724329 -0.11434366 -0.9447366 ;
	setAttr ".vn[163].nxyz" -type "float3" -0.66493106 -0.11389171 -0.73817033 ;
	setAttr ".vn[164].nxyz" -type "float3" -0.90768176 -0.11358484 -0.40399534 ;
	setAttr ".vn[165].nxyz" -type "float3" -0.99354076 -0.11347571 -2.4077888e-006 ;
	setAttr ".vn[166].nxyz" -type "float3" -0.7139771 -0.62394768 0.31768855 ;
	setAttr ".vn[167].nxyz" -type "float3" -0.52259594 -0.62498266 0.57990533 ;
	setAttr ".vn[168].nxyz" -type "float3" -0.24126332 -0.62651229 0.74113053 ;
	setAttr ".vn[169].nxyz" -type "float3" 0.080887713 -0.62825555 0.77379072 ;
	setAttr ".vn[170].nxyz" -type "float3" 0.38799855 -0.629915 0.67280322 ;
	setAttr ".vn[171].nxyz" -type "float3" 0.62733132 -0.63120854 0.45610443 ;
	setAttr ".vn[172].nxyz" -type "float3" 0.75808364 -0.63191289 0.16123068 ;
	setAttr ".vn[173].nxyz" -type "float3" 0.75808287 -0.63191396 -0.1612301 ;
	setAttr ".vn[174].nxyz" -type "float3" 0.62733281 -0.63120514 -0.45610702 ;
	setAttr ".vn[175].nxyz" -type "float3" 0.38800594 -0.6299156 -0.67279845 ;
	setAttr ".vn[176].nxyz" -type "float3" 0.080884777 -0.62825549 -0.77379119 ;
	setAttr ".vn[177].nxyz" -type "float3" -0.24125412 -0.62651032 -0.74113512 ;
	setAttr ".vn[178].nxyz" -type "float3" -0.52259356 -0.62498665 -0.57990324 ;
	setAttr ".vn[179].nxyz" -type "float3" -0.71398109 -0.62394702 -0.31768078 ;
	setAttr ".vn[180].nxyz" -type "float3" -0.78176123 -0.62357801 -1.893952e-006 ;
	setAttr ".vn[181].nxyz" -type "float3" -0.91300124 -0.028029997 0.40699267 ;
	setAttr ".vn[182].nxyz" -type "float3" -0.66825628 -0.028034963 0.74340272 ;
	setAttr ".vn[183].nxyz" -type "float3" -0.30790558 -0.028041819 0.95100355 ;
	setAttr ".vn[184].nxyz" -type "float3" 0.10558325 -0.028048728 0.9940148 ;
	setAttr ".vn[185].nxyz" -type "float3" 0.5006277 -0.028054895 0.86520797 ;
	setAttr ".vn[186].nxyz" -type "float3" 0.80907774 -0.028059151 0.58703142 ;
	setAttr ".vn[187].nxyz" -type "float3" 0.97780961 -0.028061302 0.20760754 ;
	setAttr ".vn[188].nxyz" -type "float3" 0.97780979 -0.028061289 -0.20760705 ;
	setAttr ".vn[189].nxyz" -type "float3" 0.80907732 -0.028058948 -0.58703208 ;
	setAttr ".vn[190].nxyz" -type "float3" 0.50063699 -0.028054861 -0.86520261 ;
	setAttr ".vn[191].nxyz" -type "float3" 0.10557954 -0.028048597 -0.99401522 ;
	setAttr ".vn[192].nxyz" -type "float3" -0.30789277 -0.028041961 -0.95100772 ;
	setAttr ".vn[193].nxyz" -type "float3" -0.66825408 -0.028035142 -0.74340463 ;
	setAttr ".vn[194].nxyz" -type "float3" -0.91300523 -0.028030301 -0.40698364 ;
	setAttr ".vn[195].nxyz" -type "float3" -0.99960703 -0.028028639 -1.6958941e-006 ;
	setAttr ".vn[196].nxyz" -type "float3" -0.37498534 0.91190255 0.16679214 ;
	setAttr ".vn[197].nxyz" -type "float3" -0.27441242 0.91217548 0.30435789 ;
	setAttr ".vn[198].nxyz" -type "float3" 0 1 1.7067894e-008 ;
	setAttr ".vn[199].nxyz" -type "float3" -0.12669416 0.91257811 0.38878 ;
	setAttr ".vn[200].nxyz" -type "float3" 0.042276695 0.91303676 0.40568021 ;
	setAttr ".vn[201].nxyz" -type "float3" 0.20317701 0.91347283 0.35254273 ;
	setAttr ".vn[202].nxyz" -type "float3" 0.32844582 0.9138124 0.23889372 ;
	setAttr ".vn[203].nxyz" -type "float3" 0.39683852 0.91399723 0.08442843 ;
	setAttr ".vn[204].nxyz" -type "float3" 0.39683801 0.91399747 -0.084427826 ;
	setAttr ".vn[205].nxyz" -type "float3" 0.32844666 0.91381162 -0.2388953 ;
	setAttr ".vn[206].nxyz" -type "float3" 0.20318149 0.91347289 -0.35254022 ;
	setAttr ".vn[207].nxyz" -type "float3" 0.042274743 0.9130367 -0.40568063 ;
	setAttr ".vn[208].nxyz" -type "float3" -0.12668759 0.91257763 -0.3887831 ;
	setAttr ".vn[209].nxyz" -type "float3" -0.27441022 0.91217631 -0.30435747 ;
	setAttr ".vn[210].nxyz" -type "float3" -0.37498796 0.91190231 -0.16678758 ;
	setAttr ".vn[211].nxyz" -type "float3" -0.41062316 0.91180509 -8.6942634e-007 ;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.5 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[196:211]" -type "float3"  -4.75094509 -1.69985199 2.14083791
		 -3.46445942 -1.69985199 3.91148281 0.057504877 -1.69985199 -1.2051864e-005 -1.56900215
		 -1.69985199 5.0058956146 0.60768402 -1.69985199 5.23465204 2.68925929 -1.69985199
		 4.55830526 4.31576347 -1.69985199 3.093804598 5.20597315 -1.69985199 1.094338179
		 5.20598888 -1.69985199 -1.09434104 4.31576252 -1.69985199 -3.093752861 2.68925929
		 -1.69985199 -4.55830812 0.60768658 -1.69985199 -5.23465204 -1.56899452 -1.69985199
		 -5.0058727264 -3.46445084 -1.69985199 -3.91153288 -4.75093269 -1.69985199 -2.14083934
		 -5.20598888 -1.69985199 2.9139272e-005;
createNode polySoftEdge -n "polySoftEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.5 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.5 0 1;
	setAttr ".a" 0;
createNode polyNormalPerVertex -n "polyNormalPerVertex2";
	setAttr ".uopa" yes;
	setAttr -s 212 ".vn";
	setAttr ".vn[0].nxyz" -type "float3" 0 -1 9.7768839e-007 ;
	setAttr ".vn[1].nxyz" -type "float3" 0 -1 0 ;
	setAttr ".vn[2].nxyz" -type "float3" 0 -1 -3.8292794e-007 ;
	setAttr ".vn[3].nxyz" -type "float3" 0 -1 -2.4442195e-007 ;
	setAttr ".vn[4].nxyz" -type "float3" 0 -1 -1.3850578e-007 ;
	setAttr ".vn[5].nxyz" -type "float3" 0 -1 -7.0067676e-007 ;
	setAttr ".vn[6].nxyz" -type "float3" 0 -1 -4.236646e-007 ;
	setAttr ".vn[7].nxyz" -type "float3" 0 -1 -1.3035778e-007 ;
	setAttr ".vn[8].nxyz" -type "float3" 0 -1 -1.303586e-007 ;
	setAttr ".vn[9].nxyz" -type "float3" 0 -1 2.7701148e-007 ;
	setAttr ".vn[10].nxyz" -type "float3" 0 -1 4.8477028e-007 ;
	setAttr ".vn[11].nxyz" -type "float3" 0 -1 2.077586e-007 ;
	setAttr ".vn[12].nxyz" -type "float3" 0 -1 -5.5402307e-007 ;
	setAttr ".vn[13].nxyz" -type "float3" 0 -1 -9.7768759e-007 ;
	setAttr ".vn[14].nxyz" -type "float3" 0 -1 5.5402319e-007 ;
	setAttr ".vn[15].nxyz" -type "float3" 0.55000454 -0.79848677 -0.24477342 ;
	setAttr ".vn[16].nxyz" -type "float3" 0.40276358 -0.79870123 -0.44705456 ;
	setAttr ".vn[17].nxyz" -type "float3" 0.18602578 -0.79901713 -0.57180953 ;
	setAttr ".vn[18].nxyz" -type "float3" -0.062572852 -0.79937947 -0.59755939 ;
	setAttr ".vn[19].nxyz" -type "float3" -0.30000827 -0.79972559 -0.52003276 ;
	setAttr ".vn[20].nxyz" -type "float3" -0.4853344 -0.79999566 -0.35278535 ;
	setAttr ".vn[21].nxyz" -type "float3" -0.58669138 -0.80014342 -0.12475467 ;
	setAttr ".vn[22].nxyz" -type "float3" -0.58669138 -0.80014348 0.12475394 ;
	setAttr ".vn[23].nxyz" -type "float3" -0.48533463 -0.79999578 0.35278463 ;
	setAttr ".vn[24].nxyz" -type "float3" -0.30000821 -0.79972547 0.520033 ;
	setAttr ".vn[25].nxyz" -type "float3" -0.062573321 -0.79937929 0.59755945 ;
	setAttr ".vn[26].nxyz" -type "float3" 0.18602613 -0.79901713 0.57180941 ;
	setAttr ".vn[27].nxyz" -type "float3" 0.40276369 -0.79870135 0.4470543 ;
	setAttr ".vn[28].nxyz" -type "float3" 0.55000436 -0.79848671 0.24477351 ;
	setAttr ".vn[29].nxyz" -type "float3" 0.60211319 -0.79841077 3.1595886e-007 ;
	setAttr ".vn[30].nxyz" -type "float3" 0.75190341 -0.56805658 -0.33459398 ;
	setAttr ".vn[31].nxyz" -type "float3" 0.55041796 -0.56910741 -0.61086559 ;
	setAttr ".vn[32].nxyz" -type "float3" 0.25411597 -0.57065129 -0.78088552 ;
	setAttr ".vn[33].nxyz" -type "float3" -0.085324064 -0.57241803 -0.81551051 ;
	setAttr ".vn[34].nxyz" -type "float3" -0.40910134 -0.57410145 -0.7092557 ;
	setAttr ".vn[35].nxyz" -type "float3" -0.66153181 -0.57541239 -0.48091188 ;
	setAttr ".vn[36].nxyz" -type "float3" -0.79948133 -0.5761283 -0.17001705 ;
	setAttr ".vn[37].nxyz" -type "float3" -0.79948139 -0.57612824 0.17001687 ;
	setAttr ".vn[38].nxyz" -type "float3" -0.66153193 -0.57541233 0.48091182 ;
	setAttr ".vn[39].nxyz" -type "float3" -0.4091014 -0.57410145 0.70925564 ;
	setAttr ".vn[40].nxyz" -type "float3" -0.085324965 -0.57241821 0.81551033 ;
	setAttr ".vn[41].nxyz" -type "float3" 0.25411627 -0.57065189 0.78088492 ;
	setAttr ".vn[42].nxyz" -type "float3" 0.55041826 -0.56910747 0.61086541 ;
	setAttr ".vn[43].nxyz" -type "float3" 0.75190324 -0.5680567 0.33459398 ;
	setAttr ".vn[44].nxyz" -type "float3" 0.82324642 -0.56768429 -7.1489126e-008 ;
	setAttr ".vn[45].nxyz" -type "float3" 0.91280335 0.034968138 -0.40689969 ;
	setAttr ".vn[46].nxyz" -type "float3" 0.66810697 0.03506596 -0.74323851 ;
	setAttr ".vn[47].nxyz" -type "float3" 0.30782452 0.035210237 -0.95079148 ;
	setAttr ".vn[48].nxyz" -type "float3" -0.10555513 0.035375431 -0.99378401 ;
	setAttr ".vn[49].nxyz" -type "float3" -0.50051063 0.035532944 -0.8650009 ;
	setAttr ".vn[50].nxyz" -type "float3" -0.80888277 0.035655819 -0.5868879 ;
	setAttr ".vn[51].nxyz" -type "float3" -0.97757095 0.03572296 -0.20755483 ;
	setAttr ".vn[52].nxyz" -type "float3" -0.97757089 0.035722546 0.20755509 ;
	setAttr ".vn[53].nxyz" -type "float3" -0.80888283 0.035655633 0.58688784 ;
	setAttr ".vn[54].nxyz" -type "float3" -0.50051099 0.035532285 0.86500067 ;
	setAttr ".vn[55].nxyz" -type "float3" -0.10555589 0.035375193 0.99378401 ;
	setAttr ".vn[56].nxyz" -type "float3" 0.30782449 0.035210479 0.95079148 ;
	setAttr ".vn[57].nxyz" -type "float3" 0.66810727 0.035066057 0.74323827 ;
	setAttr ".vn[58].nxyz" -type "float3" 0.91280317 0.034968849 0.40689981 ;
	setAttr ".vn[59].nxyz" -type "float3" 0.99938965 0.034934193 2.9292989e-008 ;
	setAttr ".vn[60].nxyz" -type "float3" 0.71063185 0.62850791 -0.31619665 ;
	setAttr ".vn[61].nxyz" -type "float3" 0.52013415 0.62954491 -0.57717735 ;
	setAttr ".vn[62].nxyz" -type "float3" 0.24010985 0.6310674 -0.73763216 ;
	setAttr ".vn[63].nxyz" -type "float3" -0.080506191 0.63280803 -0.77011216 ;
	setAttr ".vn[64].nxyz" -type "float3" -0.38614947 0.63446498 -0.6695841 ;
	setAttr ".vn[65].nxyz" -type "float3" -0.62432331 0.63575488 -0.45391208 ;
	setAttr ".vn[66].nxyz" -type "float3" -0.75443769 0.63645828 -0.16045171 ;
	setAttr ".vn[67].nxyz" -type "float3" -0.75443763 0.63645816 0.1604521 ;
	setAttr ".vn[68].nxyz" -type "float3" -0.62432361 0.63575464 0.45391211 ;
	setAttr ".vn[69].nxyz" -type "float3" -0.38615009 0.63446504 0.66958362 ;
	setAttr ".vn[70].nxyz" -type "float3" -0.080505699 0.63280821 0.7701121 ;
	setAttr ".vn[71].nxyz" -type "float3" 0.24010944 0.63106775 0.73763198 ;
	setAttr ".vn[72].nxyz" -type "float3" 0.52013397 0.62954509 0.57717741 ;
	setAttr ".vn[73].nxyz" -type "float3" 0.71063179 0.62850791 0.31619653 ;
	setAttr ".vn[74].nxyz" -type "float3" 0.77809995 0.62814051 -7.0152694e-008 ;
	setAttr ".vn[75].nxyz" -type "float3" 0.90828365 0.10767845 -0.40426004 ;
	setAttr ".vn[76].nxyz" -type "float3" 0.6653865 0.10797058 -0.73864961 ;
	setAttr ".vn[77].nxyz" -type "float3" 0.30746964 0.10840089 -0.94536322 ;
	setAttr ".vn[78].nxyz" -type "float3" -0.10360957 0.10889427 -0.988639 ;
	setAttr ".vn[79].nxyz" -type "float3" -0.4967742 0.10936671 -0.86096132 ;
	setAttr ".vn[80].nxyz" -type "float3" -0.80402726 0.10973614 -0.58437848 ;
	setAttr ".vn[81].nxyz" -type "float3" -0.97220546 0.10993821 -0.20671268 ;
	setAttr ".vn[82].nxyz" -type "float3" -0.97220558 0.10993805 0.20671251 ;
	setAttr ".vn[83].nxyz" -type "float3" -0.8040272 0.1097361 0.58437854 ;
	setAttr ".vn[84].nxyz" -type "float3" -0.49677485 0.10936685 0.86096096 ;
	setAttr ".vn[85].nxyz" -type "float3" -0.10360812 0.10889437 0.98863918 ;
	setAttr ".vn[86].nxyz" -type "float3" 0.3074685 0.10840047 0.94536364 ;
	setAttr ".vn[87].nxyz" -type "float3" 0.6653862 0.10797041 0.73864985 ;
	setAttr ".vn[88].nxyz" -type "float3" 0.90828389 0.10767861 0.40425944 ;
	setAttr ".vn[89].nxyz" -type "float3" 0.99419695 0.10757539 3.224647e-007 ;
	setAttr ".vn[90].nxyz" -type "float3" 0.87634951 -0.2825928 -0.39006785 ;
	setAttr ".vn[91].nxyz" -type "float3" 0.64185154 -0.28330201 -0.7125774 ;
	setAttr ".vn[92].nxyz" -type "float3" 0.29648131 -0.28434616 -0.91172695 ;
	setAttr ".vn[93].nxyz" -type "float3" -0.099936135 -0.28554446 -0.95314074 ;
	setAttr ".vn[94].nxyz" -type "float3" -0.47882986 -0.28668979 -0.82977772 ;
	setAttr ".vn[95].nxyz" -type "float3" -0.77475643 -0.28758422 -0.56307 ;
	setAttr ".vn[96].nxyz" -type "float3" -0.93667173 -0.28807375 -0.19914752 ;
	setAttr ".vn[97].nxyz" -type "float3" -0.93667173 -0.28807345 0.19914748 ;
	setAttr ".vn[98].nxyz" -type "float3" -0.77475679 -0.28758419 0.56306958 ;
	setAttr ".vn[99].nxyz" -type "float3" -0.47882965 -0.2866897 0.82977778 ;
	setAttr ".vn[100].nxyz" -type "float3" -0.099936657 -0.28554448 0.95314068 ;
	setAttr ".vn[101].nxyz" -type "float3" 0.29648101 -0.28434625 0.91172707 ;
	setAttr ".vn[102].nxyz" -type "float3" 0.64185107 -0.28330207 0.71257782 ;
	setAttr ".vn[103].nxyz" -type "float3" 0.87634951 -0.28259292 0.39006773 ;
	setAttr ".vn[104].nxyz" -type "float3" 0.95931381 -0.28234193 -3.5803872e-008 ;
	setAttr ".vn[105].nxyz" -type "float3" 0.75478232 0.56323522 -0.33625862 ;
	setAttr ".vn[106].nxyz" -type "float3" 0.55281693 0.56285614 -0.61448061 ;
	setAttr ".vn[107].nxyz" -type "float3" 0.25511608 0.56229746 -0.78659856 ;
	setAttr ".vn[108].nxyz" -type "float3" -0.086943522 0.56165636 -0.82278979 ;
	setAttr ".vn[109].nxyz" -type "float3" -0.41424182 0.56104481 -0.71668154 ;
	setAttr ".vn[110].nxyz" -type "float3" -0.67011458 0.5605666 -0.48653015 ;
	setAttr ".vn[111].nxyz" -type "float3" -0.81020623 0.56030536 -0.17211577 ;
	setAttr ".vn[112].nxyz" -type "float3" -0.81020606 0.56030548 0.17211591 ;
	setAttr ".vn[113].nxyz" -type "float3" -0.67011505 0.56056666 0.48652947 ;
	setAttr ".vn[114].nxyz" -type "float3" -0.41424108 0.56104428 0.71668243 ;
	setAttr ".vn[115].nxyz" -type "float3" -0.08694423 0.56165653 0.82278949 ;
	setAttr ".vn[116].nxyz" -type "float3" 0.25511608 0.56229728 0.78659886 ;
	setAttr ".vn[117].nxyz" -type "float3" 0.55281615 0.56285584 0.61448157 ;
	setAttr ".vn[118].nxyz" -type "float3" 0.7547825 0.56323534 0.33625787 ;
	setAttr ".vn[119].nxyz" -type "float3" 0.82620502 0.56336963 4.3606016e-010 ;
	setAttr ".vn[120].nxyz" -type "float3" -0.51847446 0.82330692 0.23097619 ;
	setAttr ".vn[121].nxyz" -type "float3" -0.37937778 0.82356083 0.42168716 ;
	setAttr ".vn[122].nxyz" -type "float3" -0.17483462 0.82393545 0.53903925 ;
	setAttr ".vn[123].nxyz" -type "float3" 0.059476916 0.82436413 0.56292653 ;
	setAttr ".vn[124].nxyz" -type "float3" 0.28296316 0.82477278 0.48957306 ;
	setAttr ".vn[125].nxyz" -type "float3" 0.4572002 0.8250916 0.33195144 ;
	setAttr ".vn[126].nxyz" -type "float3" 0.55241692 0.82526559 0.11735525 ;
	setAttr ".vn[127].nxyz" -type "float3" 0.55241704 0.82526588 -0.11735341 ;
	setAttr ".vn[128].nxyz" -type "float3" 0.45720011 0.82509154 -0.33195186 ;
	setAttr ".vn[129].nxyz" -type "float3" 0.28296474 0.82477301 -0.48957163 ;
	setAttr ".vn[130].nxyz" -type "float3" 0.059475277 0.82436401 -0.56292695 ;
	setAttr ".vn[131].nxyz" -type "float3" -0.17483433 0.82393497 -0.53903997 ;
	setAttr ".vn[132].nxyz" -type "float3" -0.37937751 0.82356107 -0.42168716 ;
	setAttr ".vn[133].nxyz" -type "float3" -0.51847488 0.82330632 -0.23097703 ;
	setAttr ".vn[134].nxyz" -type "float3" -0.56772786 0.82321638 -1.4480671e-006 ;
	setAttr ".vn[135].nxyz" -type "float3" 0 -1 -6.9524667e-008 ;
	setAttr ".vn[136].nxyz" -type "float3" -0.87969464 0.26985899 0.39155263 ;
	setAttr ".vn[137].nxyz" -type "float3" -0.64431459 0.27054074 0.71530861 ;
	setAttr ".vn[138].nxyz" -type "float3" -0.29763061 0.27154642 0.91524786 ;
	setAttr ".vn[139].nxyz" -type "float3" 0.10032458 0.27269936 0.95685428 ;
	setAttr ".vn[140].nxyz" -type "float3" 0.48070559 0.27380216 0.83303934 ;
	setAttr ".vn[141].nxyz" -type "float3" 0.77781582 0.27466303 0.56529897 ;
	setAttr ".vn[142].nxyz" -type "float3" 0.940386 0.27513355 0.19993956 ;
	setAttr ".vn[143].nxyz" -type "float3" 0.94038647 0.27513427 -0.19993651 ;
	setAttr ".vn[144].nxyz" -type "float3" 0.77781594 0.27466249 -0.56529903 ;
	setAttr ".vn[145].nxyz" -type "float3" 0.48070836 0.27380159 -0.83303791 ;
	setAttr ".vn[146].nxyz" -type "float3" 0.10032084 0.27269912 -0.9568547 ;
	setAttr ".vn[147].nxyz" -type "float3" -0.29762995 0.2715449 -0.91524845 ;
	setAttr ".vn[148].nxyz" -type "float3" -0.64431423 0.27054068 -0.71530896 ;
	setAttr ".vn[149].nxyz" -type "float3" -0.8796953 0.26985785 -0.39155188 ;
	setAttr ".vn[150].nxyz" -type "float3" -0.96296781 0.26961631 -2.8985216e-006 ;
	setAttr ".vn[151].nxyz" -type "float3" -0.90767902 -0.11358338 0.40400204 ;
	setAttr ".vn[152].nxyz" -type "float3" -0.66492987 -0.11388928 0.73817176 ;
	setAttr ".vn[153].nxyz" -type "float3" -0.30724815 -0.11434308 0.94473499 ;
	setAttr ".vn[154].nxyz" -type "float3" 0.10356267 -0.11486322 0.98796821 ;
	setAttr ".vn[155].nxyz" -type "float3" 0.49644923 -0.11536053 0.86036628 ;
	setAttr ".vn[156].nxyz" -type "float3" 0.80348027 -0.11574972 0.58397055 ;
	setAttr ".vn[157].nxyz" -type "float3" 0.97153598 -0.11596225 0.20656854 ;
	setAttr ".vn[158].nxyz" -type "float3" 0.97153676 -0.11596173 -0.20656577 ;
	setAttr ".vn[159].nxyz" -type "float3" 0.80348039 -0.11574847 -0.58397061 ;
	setAttr ".vn[160].nxyz" -type "float3" 0.49645486 -0.11536071 -0.86036295 ;
	setAttr ".vn[161].nxyz" -type "float3" 0.10355867 -0.1148636 -0.98796862 ;
	setAttr ".vn[162].nxyz" -type "float3" -0.30724329 -0.11434366 -0.9447366 ;
	setAttr ".vn[163].nxyz" -type "float3" -0.66493106 -0.11389171 -0.73817033 ;
	setAttr ".vn[164].nxyz" -type "float3" -0.90768176 -0.11358484 -0.40399534 ;
	setAttr ".vn[165].nxyz" -type "float3" -0.99354076 -0.11347571 -2.4077888e-006 ;
	setAttr ".vn[166].nxyz" -type "float3" -0.7139771 -0.62394768 0.31768855 ;
	setAttr ".vn[167].nxyz" -type "float3" -0.52259594 -0.62498266 0.57990533 ;
	setAttr ".vn[168].nxyz" -type "float3" -0.24126332 -0.62651229 0.74113053 ;
	setAttr ".vn[169].nxyz" -type "float3" 0.080887713 -0.62825555 0.77379072 ;
	setAttr ".vn[170].nxyz" -type "float3" 0.38799855 -0.629915 0.67280322 ;
	setAttr ".vn[171].nxyz" -type "float3" 0.62733132 -0.63120854 0.45610443 ;
	setAttr ".vn[172].nxyz" -type "float3" 0.75808364 -0.63191289 0.16123068 ;
	setAttr ".vn[173].nxyz" -type "float3" 0.75808287 -0.63191396 -0.1612301 ;
	setAttr ".vn[174].nxyz" -type "float3" 0.62733281 -0.63120514 -0.45610702 ;
	setAttr ".vn[175].nxyz" -type "float3" 0.38800594 -0.6299156 -0.67279845 ;
	setAttr ".vn[176].nxyz" -type "float3" 0.080884777 -0.62825549 -0.77379119 ;
	setAttr ".vn[177].nxyz" -type "float3" -0.24125412 -0.62651032 -0.74113512 ;
	setAttr ".vn[178].nxyz" -type "float3" -0.52259356 -0.62498665 -0.57990324 ;
	setAttr ".vn[179].nxyz" -type "float3" -0.71398109 -0.62394702 -0.31768078 ;
	setAttr ".vn[180].nxyz" -type "float3" -0.78176123 -0.62357801 -1.893952e-006 ;
	setAttr ".vn[181].nxyz" -type "float3" -0.91300124 -0.028029997 0.40699267 ;
	setAttr ".vn[182].nxyz" -type "float3" -0.66825628 -0.028034963 0.74340272 ;
	setAttr ".vn[183].nxyz" -type "float3" -0.30790558 -0.028041819 0.95100355 ;
	setAttr ".vn[184].nxyz" -type "float3" 0.10558325 -0.028048728 0.9940148 ;
	setAttr ".vn[185].nxyz" -type "float3" 0.5006277 -0.028054895 0.86520797 ;
	setAttr ".vn[186].nxyz" -type "float3" 0.80907774 -0.028059151 0.58703142 ;
	setAttr ".vn[187].nxyz" -type "float3" 0.97780961 -0.028061302 0.20760754 ;
	setAttr ".vn[188].nxyz" -type "float3" 0.97780979 -0.028061289 -0.20760705 ;
	setAttr ".vn[189].nxyz" -type "float3" 0.80907732 -0.028058948 -0.58703208 ;
	setAttr ".vn[190].nxyz" -type "float3" 0.50063699 -0.028054861 -0.86520261 ;
	setAttr ".vn[191].nxyz" -type "float3" 0.10557954 -0.028048597 -0.99401522 ;
	setAttr ".vn[192].nxyz" -type "float3" -0.30789277 -0.028041961 -0.95100772 ;
	setAttr ".vn[193].nxyz" -type "float3" -0.66825414 -0.028035145 -0.74340469 ;
	setAttr ".vn[194].nxyz" -type "float3" -0.91300523 -0.028030301 -0.40698364 ;
	setAttr ".vn[195].nxyz" -type "float3" -0.99960715 -0.028028643 -1.6958943e-006 ;
	setAttr ".vn[196].nxyz" -type "float3" -0.37498537 0.91190267 0.16679215 ;
	setAttr ".vn[197].nxyz" -type "float3" -0.27441242 0.91217548 0.30435789 ;
	setAttr ".vn[198].nxyz" -type "float3" 0 1 1.7067894e-008 ;
	setAttr ".vn[199].nxyz" -type "float3" -0.12669416 0.91257811 0.38878 ;
	setAttr ".vn[200].nxyz" -type "float3" 0.042276699 0.91303688 0.40568027 ;
	setAttr ".vn[201].nxyz" -type "float3" 0.20317703 0.91347295 0.35254276 ;
	setAttr ".vn[202].nxyz" -type "float3" 0.32844582 0.9138124 0.23889372 ;
	setAttr ".vn[203].nxyz" -type "float3" 0.39683858 0.91399735 0.084428437 ;
	setAttr ".vn[204].nxyz" -type "float3" 0.39683807 0.91399759 -0.084427834 ;
	setAttr ".vn[205].nxyz" -type "float3" 0.32844669 0.91381174 -0.23889533 ;
	setAttr ".vn[206].nxyz" -type "float3" 0.20318149 0.91347289 -0.35254022 ;
	setAttr ".vn[207].nxyz" -type "float3" 0.042274747 0.91303682 -0.40568069 ;
	setAttr ".vn[208].nxyz" -type "float3" -0.12668759 0.91257763 -0.3887831 ;
	setAttr ".vn[209].nxyz" -type "float3" -0.27441022 0.91217631 -0.30435747 ;
	setAttr ".vn[210].nxyz" -type "float3" -0.37498799 0.91190243 -0.16678759 ;
	setAttr ".vn[211].nxyz" -type "float3" -0.41062316 0.91180509 -8.6942634e-007 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 212 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0.60396957 0 -0.27549455 0.43842044
		 0 -0.50335377 0.19450511 0 -0.64417839 -0.085601307 0 -0.67361903 -0.35346591 0 -0.58658397
		 -0.56277221 0 -0.39812431 -0.67732918 0 -0.14082472 -0.67732906 0 0.14082448 -0.56277245
		 0 0.39812404 -0.35346603 0 0.58658391 -0.085601598 0 0.6736185 0.19450496 0 0.64417821
		 0.43842039 0 0.50335354 0.60396975 0 0.27549455 0.6625281 0 -1.782319e-007 1.22274053
		 0 -0.55098903 0.89164227 0 -1.0067074299 0.40381122 0 -1.28835642 -0.1564015 0 -1.34723783
		 -0.69213027 0 -1.17316878 -1.11074328 0 -0.7962482 -1.33985758 0 -0.28164956 -1.33985734
		 0 0.28164923 -1.11074352 0 0.79624808 -0.69213063 0 1.17316794 -0.15640165 0 1.34723783
		 0.40381089 0 1.28835678 0.89164221 0 1.0067071915 1.22274053 0 0.55098927 1.33985758
		 0 -9.7487884e-008 -1.29603374 -0.53038388 0.58401626 -0.94508886 -0.53038388 1.067050815
		 -0.42801625 -0.53038388 1.36558342 0.16577634 -0.53038388 1.42799342 0.73361784 -0.53038388
		 1.2434907 1.17732263 -0.53038388 0.84397715 1.42017055 -0.53038388 0.2985324 1.42017043
		 -0.53038388 -0.2985315 1.17732286 -0.53038388 -0.84397638 0.73361808 -0.53038388
		 -1.24348962 0.16577473 -0.53038388 -1.42799318 -0.42801654 -0.53038388 -1.3655839
		 -0.94508827 -0.53038388 -1.06704998 -1.29603422 -0.53038388 -0.5840165 -1.42017043
		 -0.53038388 2.1504002e-007 -4.84037066 0.00059205474 2.18115616 -3.52967501 0.00059205474
		 3.98517442 -1.5985353 0.00059205474 5.1001153 0.61913502 0.00059205474 5.33320236
		 2.73988104 0.00059205474 4.64413309 4.39701223 0.00059205474 3.15204453 5.3039875
		 0.00059205474 1.11494386 5.3039875 0.00059205474 -1.11494529 4.39701176 0.00059205474
		 -3.15204406 2.73988223 0.00059205474 -4.64413309 0.61913693 0.00059205474 -5.33320236
		 -1.59853506 0.00059205474 -5.1001215 -3.52967548 0.00059205474 -3.9851737 -4.8403697
		 0.00059205474 -2.18115973 -5.3039875 0.00059205474 0 -1.77037919 -0.00047653014 0.79776657
		 -1.29099274 -0.00047653014 1.45758998 -0.58467096 -0.00047653014 1.86538756 0.22645032
		 -0.00047653014 1.95063686 1.0021218061 -0.00047653014 1.69860363 1.60822308 -0.00047653014
		 1.15287185 1.93995035 -0.00047653014 0.40779221 1.93994927 -0.00047653014 -0.40779406
		 1.60822368 -0.00047653014 -1.15286958 1.0021216869 -0.00047653014 -1.69860518 0.22645363
		 -0.00047653014 -1.95063639 -0.58467156 -0.00047653014 -1.8653841 -1.29098976 -0.00047653014
		 -1.45759094 -1.77037978 -0.00047653014 -0.79776484 -1.93995011 -0.00047653014 2.5871964e-006
		 2.84523964 -2.37884855 -1.2821151 2.074789524 -2.37884855 -2.34253812 0.93964124
		 -2.37884855 -2.99792004 -0.36393502 -2.37884855 -3.13493395 -1.61054397 -2.37884855
		 -2.72988439 -2.58462238 -2.37884855 -1.8528167 -3.11775756 -2.37884855 -0.65537822
		 -3.11775827 -2.37884855 0.65537822 -2.58462286 -2.37884855 1.85281587 -1.61054158
		 -2.37884855 2.72988605 -0.36393854 -2.37884855 3.13493299 0.93964285 -2.37884855
		 2.99791813 2.074790478 -2.37884855 2.34254408 2.84523487 -2.37884855 1.28211403 3.11775827
		 -2.37884855 -8.17233e-007 3.45343351 -3.78840208 -1.55617702 2.51829815 -3.78840208
		 -2.84328485 1.14050341 -3.78840208 -3.63875628 -0.44173056 -3.78840208 -3.80505562
		 -1.95480967 -3.78840208 -3.3134253 -3.13711071 -3.78840208 -2.24887514 -3.78421116
		 -3.78840208 -0.79547209 -3.78420949 -3.78840208 0.79547137 -3.13711166 -3.78840208
		 2.24887753 -1.95481157 -3.78840208 3.31342387 -0.4417311 -3.78840208 3.80505562 1.14049959
		 -3.78840208 3.63875771 2.5182991 -3.78840208 2.84328294 3.45343447 -3.78840208 1.55618131
		 3.78421116 -3.78840208 1.1473668e-006 1.27776301 -5.3298645 -0.57578301 0.93176574
		 -5.3298645 -1.052008271 0.42198244 -5.3298645 -1.34633112 -0.16343924 -5.3298645
		 -1.40786171 -0.72327507 -5.3298645 -1.2259599 -1.16072488 -5.3298645 -0.83207852
		 -1.4001497 -5.3298645 -0.29432356 -1.40014887 -5.3298645 0.29432321 -1.16072524 -5.3298645
		 0.83207852 -0.72327524 -5.3298645 1.22595906 -0.1634393 -5.3298645 1.40786171 0.42198232
		 -5.3298645 1.34633172 0.93176568 -5.3298645 1.052008152 1.27776325 -5.3298645 0.57578361
		 1.40014982 -5.3298645 -1.4558022e-008 1.17578018 -5.3298645 -0.53331184 0.85530341
		 -5.3298645 -0.97440726 0.38312125 -5.3298645 -1.24702358 -0.1591153 -5.3298645 -1.30401266
		 -0.67765695 -5.3298645 -1.1355288 -1.08283937 -5.3298645 -0.77070093 -1.30460036
		 -5.3298645 -0.27261668 -1.30460405 -5.3298645 0.27261266 -1.082838297 -5.3298645
		 0.77070028 -0.67765707 -5.3298645 1.13552868 -0.15911591 -5.3298645 1.30401289 0.38311955
		 -5.3298645 1.24701941 0.85530114 -5.3298645 0.97441018 1.17577696 -5.3298645 0.53331101
		 1.28913534 -5.3298645 -9.4244513e-007 -0.014800905 0 -9.7487884e-008 3.038112879
		 -3.80169368 -1.38598287 2.20524788 -3.80169368 -2.53231716 0.97812688 -3.80169368
		 -3.24079943 -0.43105209 -3.80169368 -3.38889527 -1.77865374 -3.80169368 -2.95103788
		 -2.83165026 -3.80169368 -2.0029139519 -3.40797019 -3.80169368 -0.70848125 -3.40797758
		 -3.80169368 0.70847625 -2.83164978 -3.80169368 2.002913475 -1.7786541 -3.80169368
		 2.95103931 -0.43105346 -3.80169368 3.38890934 0.97812438 -3.80169368 3.24079394 2.20524216
		 -3.80169368 2.53233051 3.038104534 -3.80169368 1.38598716 3.33270216 -3.80169368
		 3.4525442e-007 2.55192685 -2.3599 -1.16878474 1.84958899 -2.3599 -2.13544369 0.81478852
		 -2.3599 -2.73289108 -0.37353873 -2.3599 -2.85777664 -1.50993907 -2.3599 -2.48853254
		 -2.39790797 -2.3599 -1.68900919 -2.88390565 -2.3599 -0.59745413 -2.88390994 -2.3599
		 0.59744239 -2.39790678 -2.3599 1.68901014 -1.50993931 -2.3599 2.48854446 -0.37354013
		 -2.3599 2.85778642 0.81478661 -2.3599 2.73288536 1.84958744 -2.3599 2.13545346 2.55192018
		 -2.3599 1.16877067 2.80034471 -2.3599 -1.701333e-005;
	setAttr ".tk[166:211]" -1.63848758 0.00047653014 0.7447567 -1.19094956 0.00047653014
		 1.36071897 -0.53155702 0.00047653014 1.74143362 0.22566396 0.00047653014 1.82102096
		 0.94979674 0.00047653014 1.58573425 1.51562321 0.00047653014 1.076264858 1.82530868
		 0.00047653014 0.38069594 1.82531357 0.00047653014 -0.38069764 1.5156225 0.00047653014
		 -1.076249599 0.94979644 0.00047653014 -1.58573747 0.2256649 0.00047653014 -1.82102394
		 -0.53155512 0.00047653014 -1.74143553 -1.1909467 0.00047653014 -1.3607434 -1.63848412
		 0.00047653014 -0.74475706 -1.79678607 0.00047653014 1.2721388e-005 -4.65524054 -0.00059205474
		 2.10469627 -3.39046955 -0.00059205474 3.8454473 -1.52700531 -0.00059205474 4.92138052
		 0.61293411 -0.00059205474 5.14628363 2.65936279 -0.00059205474 4.48134661 4.25841141
		 -0.00059205474 3.041576385 5.13359261 -0.00059205474 1.075865269 5.133605 -0.00059205474
		 -1.075866342 4.25841045 -0.00059205474 -3.041525126 2.65936303 -0.00059205474 -4.48135519
		 0.61293644 -0.00059205474 -5.14628792 -1.52699971 -0.00059205474 -4.92136526 -3.39046264
		 -0.00059205474 -3.8455143 -4.655231 -0.00059205474 -2.10470343 -5.10258913 -0.00059205474
		 2.6826796e-005 -0.83294791 0.53038388 0.38099936 -0.603993 0.53038388 0.69611567
		 0.022806577 0.53038388 -3.4731438e-006 -0.26665828 0.53038388 0.89088136 0.12072099
		 0.53038388 0.93160021 0.49116933 0.53038388 0.81122726 0.78063625 0.53038388 0.55059719
		 0.93906581 0.53038388 0.19475833 0.93906659 0.53038388 -0.194757 0.78063625 0.53038388
		 -0.55058831 0.49116963 0.53038388 -0.81122994 0.12072133 0.53038388 -0.93160278 -0.26665828
		 0.53038388 -0.89088261 -0.603993 0.53038388 -0.69613874 -0.83294791 0.53038388 -0.38100427
		 -0.91392124 0.53038388 3.8575317e-006;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 2 "f[135:149]" "f[195:224]";
createNode polyCloseBorder -n "polyCloseBorder1";
	setAttr ".ics" -type "componentList" 1 "e[*]";
createNode polyPoke -n "polyPoke1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[180]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.5 0 1;
	setAttr ".ws" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polyPoke1.out" "goblet0Shape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "goblet0Shape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "goblet0Shape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace3.ip";
connectAttr "goblet0Shape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace4.ip";
connectAttr "goblet0Shape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace5.ip";
connectAttr "goblet0Shape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak5.ip";
connectAttr "polyExtrudeFace5.out" "polyNormalPerVertex1.ip";
connectAttr "polyTweak6.out" "polySoftEdge1.ip";
connectAttr "goblet0Shape1.wm" "polySoftEdge1.mp";
connectAttr "polyNormalPerVertex1.out" "polyTweak6.ip";
connectAttr "polySoftEdge1.out" "polySoftEdge2.ip";
connectAttr "goblet0Shape1.wm" "polySoftEdge2.mp";
connectAttr "polySoftEdge2.out" "polySoftEdge3.ip";
connectAttr "goblet0Shape1.wm" "polySoftEdge3.mp";
connectAttr "polySoftEdge3.out" "polyNormalPerVertex2.ip";
connectAttr "polyNormalPerVertex2.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polyPoke1.ip";
connectAttr "goblet0Shape1.wm" "polyPoke1.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "goblet0Shape1.iog" ":initialShadingGroup.dsm" -na;
// End of goblet01.ma
