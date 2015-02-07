//Maya ASCII 2015 scene
//Name: room.ma
//Last modified: Sat, Feb 07, 2015 03:43:23 AM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201402282131-909040";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1535.2949514764866 897.79177570116008 -338.40251225518642 ;
	setAttr ".r" -type "double3" -25.538352739553908 1539.7999999990932 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 2281.3603302302809;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -495.50015258789063 -25 0.14150440692901611 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -499.36502983112905 152.67262821040191 3.0322656208986709 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 10.206423542677925;
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
	setAttr ".ow" 1346.4867586469843;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 132.81192001196018 -25 1.4011014570769476e-013 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 418.98285038438797;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".s" -type "double3" 100 25 70 ;
createNode transform -n "polySurface1" -p "pCube1";
createNode transform -n "Walls" -p "polySurface1";
	setAttr ".s" -type "double3" 10 10 10 ;
	setAttr ".rp" -type "double3" 0 -5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
	setAttr ".spt" -type "double3" 0 -4.5 0 ;
createNode mesh -n "polySurfaceShape1" -p "Walls";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.375 0.25
		 0.625 0.25 0.625 0 0.375 0.5 0.375 0.75 0.625 0.75 0.625 0.5 0.875 0.25 0.875 0 0.125
		 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 2 0 2 3 0 3 1 0 1 0 0 4 6 0 6 7 0 7 5 0
		 5 4 0 3 5 0 7 1 0 4 2 0 0 6 0;
	setAttr -s 16 ".n[0:15]" -type "float3"  0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 1 0 0 1 0 0 1 0 0 1 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 0 0 1 0 0 1 0 0 1 0 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 -3 8 -7 9
		mu 0 4 3 2 8 9
		f 4 -5 10 -1 11
		mu 0 4 10 11 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface2" -p "Walls";
createNode transform -n "polySurface3" -p "polySurface2";
createNode transform -n "transform4" -p "|pCube1|polySurface1|Walls|polySurface2|polySurface3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface4" -p "polySurface2";
createNode transform -n "transform3" -p "polySurface4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform2" -p "polySurface2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform1" -p "Walls";
	setAttr ".v" no;
createNode mesh -n "WallsShape" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.24935050308704376 0.0083915665745735168 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
createNode transform -n "floor" -p "polySurface1";
	setAttr ".t" -type "double3" 0 -4.5 0 ;
	setAttr ".s" -type "double3" 10 1 10 ;
	setAttr ".rp" -type "double3" 0 4.5 0 ;
	setAttr ".sp" -type "double3" -4.3021142204224817e-017 4.5 -2.2204460492503132e-017 ;
	setAttr ".spt" -type "double3" 4.3021142204224836e-017 0 2.2204460492503151e-017 ;
createNode mesh -n "floorShape" -p "floor";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.375 0.75 0.375
		 1 0.625 1 0.625 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 4 ".vt[0:3]"  -0.5 -0.5 -0.5 -0.5 -0.5 0.5 0.5 -0.5 0.5
		 0.5 -0.5 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 2 0 2 3 0 3 0 0;
	setAttr -s 4 ".n[0:3]" -type "float3"  0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface3";
createNode transform -n "walls" -p "|polySurface3";
createNode mesh -n "wallsShape" -p "walls";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "panels" -p "|polySurface3";
createNode mesh -n "panelsShape" -p "panels";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform5" -p "|polySurface3";
	setAttr ".v" no;
createNode mesh -n "polySurface3Shape" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.3750000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "door";
	setAttr ".t" -type "double3" -498.00015258789062 -25 0 ;
	setAttr ".s" -type "double3" 5 200 150 ;
	setAttr ".rp" -type "double3" -1.4210854715202004e-013 -100 74.780166625976563 ;
	setAttr ".sp" -type "double3" -2.8421709430404007e-014 -0.5 0.49853444417317705 ;
	setAttr ".spt" -type "double3" -1.1368683772161603e-013 -99.5 74.281632181803388 ;
createNode transform -n "transform7" -p "door";
	setAttr ".v" no;
createNode mesh -n "doorShape" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 3 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.5 0.37499998137354851 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "ring";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".t" -type "double3" -495 0 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode transform -n "transform6" -p "ring";
	setAttr ".v" no;
createNode mesh -n "ringShape" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 3 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 3 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0.85714287 0.1
		 0.85714287 0.2 0.85714287 0.30000001 0.85714287 0.40000001 0.85714287 0.5 0.85714287
		 0.60000002 0.85714287 0.70000005 0.85714287 0.80000007 0.85714287 0.9000001 0.85714287
		 1.000000119209 0.85714287 0 0.71428573 0.1 0.71428573 0.2 0.71428573 0.30000001 0.71428573
		 0.40000001 0.71428573 0.5 0.71428573 0.60000002 0.71428573 0.70000005 0.71428573
		 0.80000007 0.71428573 0.9000001 0.71428573 1.000000119209 0.71428573 0 0.5714286
		 0.1 0.5714286 0.2 0.5714286 0.30000001 0.5714286 0.40000001 0.5714286 0.5 0.5714286
		 0.60000002 0.5714286 0.70000005 0.5714286 0.80000007 0.5714286 0.9000001 0.5714286
		 1.000000119209 0.5714286 0 0.42857146 0.1 0.42857146 0.2 0.42857146 0.30000001 0.42857146
		 0.40000001 0.42857146 0.5 0.42857146 0.60000002 0.42857146 0.70000005 0.42857146
		 0.80000007 0.42857146 0.9000001 0.42857146 1.000000119209 0.42857146 0 0.28571433
		 0.1 0.28571433 0.2 0.28571433 0.30000001 0.28571433 0.40000001 0.28571433 0.5 0.28571433
		 0.60000002 0.28571433 0.70000005 0.28571433 0.80000007 0.28571433 0.9000001 0.28571433
		 1.000000119209 0.28571433 0 0.14285718 0.1 0.14285718 0.2 0.14285718 0.30000001 0.14285718
		 0.40000001 0.14285718 0.5 0.14285718 0.60000002 0.14285718 0.70000005 0.14285718
		 0.80000007 0.14285718 0.9000001 0.14285718 1.000000119209 0.14285718;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 60 ".vt[0:59]"  1.062201381 0.85730749 -0.77173465 0.40572473 0.85730749 -1.24869275
		 -0.405725 0.85730749 -1.24869263 -1.0622015 0.85730749 -0.77173442 -1.31295311 0.85730749 7.8258097e-008
		 -1.062201381 0.85730749 0.77173454 -0.40572476 0.85730749 1.24869263 0.40572482 0.85730749 1.24869251
		 1.062201262 0.85730749 0.77173442 1.312953 0.85730749 0 1.26753259 0.91523641 -0.9209165
		 0.48415422 0.91523641 -1.49007404 -0.48415455 0.91523641 -1.49007392 -1.26753271 0.91523641 -0.9209162
		 -1.56675649 0.91523641 9.338595e-008 -1.26753259 0.91523641 0.92091638 -0.48415428 0.91523641 1.49007392
		 0.48415437 0.91523641 1.4900738 1.26753247 0.91523641 0.9209162 1.56675625 0.91523641 0
		 1.43219531 0.75292313 -1.040551066 0.54704982 0.75292313 -1.6836468 -0.54705018 0.75292313 -1.68364656
		 -1.43219554 0.75292313 -1.040550709 -1.77029085 0.75292313 1.0551754e-007 -1.43219531 0.75292313 1.040550947
		 -0.54704982 0.75292313 1.68364656 0.54704994 0.75292313 1.68364644 1.43219519 0.75292313 1.040550709
		 1.77029061 0.75292313 0 1.43219531 -0.13016514 -1.040551066 0.54704982 -0.13016514 -1.6836468
		 -0.54705018 -0.13016514 -1.68364656 -1.43219554 -0.13016514 -1.040550709 -1.77029085 -0.13016514 1.0551754e-007
		 -1.43219531 -0.13016514 1.040550947 -0.54704982 -0.13016514 1.68364656 0.54704994 -0.13016514 1.68364644
		 1.43219519 -0.13016514 1.040550709 1.77029061 -0.13016514 0 1.26753259 -0.29247838 -0.9209165
		 0.48415422 -0.29247838 -1.49007404 -0.48415455 -0.29247838 -1.49007392 -1.26753271 -0.29247838 -0.9209162
		 -1.56675649 -0.29247838 9.338595e-008 -1.26753259 -0.29247838 0.92091638 -0.48415428 -0.29247838 1.49007392
		 0.48415437 -0.29247838 1.4900738 1.26753247 -0.29247838 0.9209162 1.56675625 -0.29247838 0
		 1.062201381 -0.23454942 -0.77173465 0.40572473 -0.23454942 -1.24869275 -0.405725 -0.23454942 -1.24869263
		 -1.0622015 -0.23454942 -0.77173442 -1.31295311 -0.23454942 7.8258097e-008 -1.062201381 -0.23454942 0.77173454
		 -0.40572476 -0.23454942 1.24869263 0.40572482 -0.23454942 1.24869251 1.062201262 -0.23454942 0.77173442
		 1.312953 -0.23454942 0;
	setAttr -s 120 ".ed[0:119]"  1 0 0 0 10 0 10 11 0 11 1 0 2 1 0 11 12 0
		 12 2 0 3 2 0 12 13 0 13 3 0 4 3 0 13 14 0 14 4 0 5 4 0 14 15 0 15 5 0 6 5 0 15 16 0
		 16 6 0 7 6 0 16 17 0 17 7 0 8 7 0 17 18 0 18 8 0 9 8 0 18 19 0 19 9 0 0 9 0 19 10 0
		 10 20 0 20 21 0 21 11 0 21 22 0 22 12 0 22 23 0 23 13 0 23 24 0 24 14 0 24 25 0 25 15 0
		 25 26 0 26 16 0 26 27 0 27 17 0 27 28 0 28 18 0 28 29 0 29 19 0 29 20 0 20 30 0 30 31 0
		 31 21 0 31 32 0 32 22 0 32 33 0 33 23 0 33 34 0 34 24 0 34 35 0 35 25 0 35 36 0 36 26 0
		 36 37 0 37 27 0 37 38 0 38 28 0 38 39 0 39 29 0 39 30 0 30 40 0 40 41 0 41 31 0 41 42 0
		 42 32 0 42 43 0 43 33 0 43 44 0 44 34 0 44 45 0 45 35 0 45 46 0 46 36 0 46 47 0 47 37 0
		 47 48 0 48 38 0 48 49 0 49 39 0 49 40 0 40 50 0 50 51 0 51 41 0 51 52 0 52 42 0 52 53 0
		 53 43 0 53 54 0 54 44 0 54 55 0 55 45 0 55 56 0 56 46 0 56 57 0 57 47 0 57 58 0 58 48 0
		 58 59 0 59 49 0 59 50 0 1 51 0 50 0 0 2 52 0 3 53 0 4 54 0 5 55 0 6 56 0 7 57 0 8 58 0
		 9 59 0;
	setAttr -s 240 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.13716736 0.9723897 0.18879485 -0.13716736
		 0.9723897 0.18879485 -0.13716735 0.9723897 0.18879485 -0.13716735 0.97238964 0.18879485
		 0 0.97238964 0.23336308 0 0.97238964 0.23336308 0 0.9723897 0.23336312 0 0.9723897
		 0.23336312 0.13716745 0.9723897 0.18879467 0.13716744 0.9723897 0.18879469 0.13716744
		 0.97238958 0.18879467 0.13716744 0.9723897 0.18879467 0.22194144 0.9723897 0.072113134
		 0.22194141 0.9723897 0.072113134 0.22194141 0.9723897 0.072113134 0.22194141 0.9723897
		 0.072113134 0.22194152 0.9723897 -0.072113156 0.22194152 0.9723897 -0.072113156 0.22194153
		 0.97238964 -0.072113156 0.22194152 0.9723897 -0.072113156 0.13716738 0.97238964 -0.18879472
		 0.13716739 0.9723897 -0.18879475 0.13716739 0.97238964 -0.18879473 0.13716739 0.9723897
		 -0.18879475 -6.745681e-008 0.97238958 -0.23336339 -6.745681e-008 0.97238958 -0.2333634
		 -6.745681e-008 0.97238964 -0.23336339 -6.745681e-008 0.97238958 -0.23336339 -0.13716738
		 0.97238964 -0.1887947 -0.13716738 0.97238964 -0.1887947 -0.13716738 0.9723897 -0.18879472
		 -0.13716738 0.97238964 -0.1887947 -0.22194153 0.9723897 -0.072113238 -0.22194152
		 0.97238964 -0.072113231 -0.22194153 0.9723897 -0.072113238 -0.22194155 0.9723897
		 -0.072113246 -0.22194149 0.9723897 0.072113134 -0.22194149 0.97238964 0.072113134
		 -0.22194149 0.97238958 0.072113134 -0.22194149 0.9723897 0.072113141 0.37766603 0.76626569
		 -0.51981276 0.377666 0.76626563 -0.5198127 0.37766606 0.76626563 -0.51981276 0.37766603
		 0.76626569 -0.51981276 -2.2880766e-007 0.76626557 -0.642524 -2.2880766e-007 0.76626557
		 -0.642524 -2.2880765e-007 0.76626557 -0.64252394 -2.2880765e-007 0.76626557 -0.64252394
		 -0.37766612 0.76626563 -0.51981252 -0.37766618 0.76626575 -0.51981264 -0.37766615
		 0.76626569 -0.51981258 -0.37766615 0.76626575 -0.51981258 -0.61107618 0.76626599
		 -0.19855072 -0.61107618 0.76626599 -0.19855072 -0.61107624 0.76626599 -0.1985507
		 -0.61107624 0.76626599 -0.1985507 -0.61107677 0.76626551 0.19855088 -0.61107677 0.76626551
		 0.19855087 -0.61107671 0.76626545 0.19855084 -0.61107677 0.76626545 0.19855087 -0.37766594
		 0.76626557 0.51981282 -0.37766597 0.76626563 0.51981294 -0.37766597 0.76626563 0.51981288
		 -0.37766597 0.76626563 0.51981288 0 0.76626551 0.64252418 0 0.76626551 0.64252418
		 0 0.76626545 0.64252406 0 0.76626551 0.64252406 0.37766618 0.76626551 0.51981288
		 0.37766615 0.76626551 0.51981288 0.37766612 0.76626551 0.51981288 0.37766618 0.76626551
		 0.51981294 0.61107647 0.76626563 0.19855082 0.61107653 0.76626563 0.19855082 0.61107659
		 0.76626569 0.19855084 0.61107653 0.76626563 0.19855082 0.61107665 0.76626557 -0.19855067
		 0.61107659 0.76626557 -0.19855067 0.61107659 0.76626557 -0.19855067 0.61107665 0.76626563
		 -0.19855069 0.58778512 0 -0.809017 0.58778512 0 -0.809017 0.58778512 0 -0.809017
		 0.58778512 0 -0.809017 -2.467624e-007 0 -0.99999994 -2.467624e-007 0 -0.99999994
		 -2.467624e-007 0 -0.99999994 -2.467624e-007 0 -0.99999994 -0.5877853 0 -0.809017
		 -0.5877853 0 -0.809017 -0.5877853 0 -0.809017 -0.5877853 0 -0.809017 -0.95105654
		 0 -0.30901685 -0.95105654 0 -0.30901685 -0.95105654 0 -0.30901685 -0.95105654 0 -0.30901685
		 -0.95105654 0 0.30901709 -0.95105654 0 0.30901709 -0.95105654 0 0.30901709 -0.95105654
		 0 0.30901709 -0.58778512 0 0.80901706 -0.58778512 0 0.80901706 -0.58778512 0 0.80901706
		 -0.58778512 0 0.80901706 1.233812e-007 0 1 1.233812e-007 0 1 1.233812e-007 0 1 1.233812e-007
		 0 1 0.58778524 0 0.809017 0.58778524 0 0.809017 0.58778524 0 0.809017 0.58778524
		 0 0.809017 0.95105648 0 0.309017 0.95105648 0 0.309017 0.95105648 0 0.309017 0.95105648
		 0 0.309017 0.9510566 0 -0.30901679 0.9510566 0 -0.30901679 0.9510566 0 -0.30901679
		 0.9510566 0 -0.30901679 0.377666 -0.76626575 -0.51981264 0.377666 -0.76626575 -0.5198127
		 0.37766597 -0.76626575 -0.5198127 0.37766597 -0.76626575 -0.5198127 -1.1440386e-007
		 -0.76626569 -0.64252377 -1.1440385e-007 -0.76626575 -0.64252383 -1.1440385e-007 -0.76626575
		 -0.64252383 -1.1440385e-007 -0.76626575 -0.64252383 -0.37766612 -0.76626575 -0.51981264
		 -0.37766609 -0.76626575 -0.51981258 -0.37766609 -0.76626581 -0.51981258 -0.37766603
		 -0.76626575 -0.51981252 -0.61107612 -0.76626611 -0.19855063 -0.61107612 -0.76626611
		 -0.19855063 -0.61107612 -0.76626605 -0.1985506 -0.61107606 -0.76626605 -0.19855058
		 -0.61107659 -0.76626557 0.19855087 -0.61107659 -0.76626557 0.19855088 -0.61107665
		 -0.76626557 0.19855088 -0.61107671 -0.76626557 0.19855089 -0.37766597 -0.76626563
		 0.51981276 -0.37766603 -0.76626563 0.51981276 -0.37766597 -0.76626563 0.5198127 -0.37766597
		 -0.76626563 0.5198127 0 -0.76626563 0.64252394 0 -0.76626563 0.64252394 0 -0.76626557
		 0.64252388 0 -0.76626557 0.64252388 0.37766618 -0.76626557 0.51981282 0.37766615
		 -0.76626557 0.51981276 0.37766618 -0.76626557 0.51981282 0.37766615 -0.76626551 0.51981276
		 0.61107647 -0.76626575 0.19855076 0.61107647 -0.76626569 0.19855076 0.61107641 -0.76626575
		 0.19855076 0.61107647 -0.76626575 0.19855078 0.61107647 -0.76626569 -0.1985506 0.61107653
		 -0.76626569 -0.19855064 0.61107641 -0.76626575 -0.19855063 0.61107653 -0.76626575
		 -0.19855064 -0.13716744 -0.97238964 0.18879497 -0.13716744 -0.97238958 0.18879497
		 -0.13716745 -0.97238958 0.18879497 -0.13716745 -0.97238958 0.18879497 0 -0.9723897
		 0.23336329 0 -0.9723897 0.23336329;
	setAttr ".n[166:239]" -type "float3"  0 -0.97238964 0.23336326 0 -0.97238964
		 0.23336326 0.13716756 -0.9723897 0.18879476 0.13716754 -0.9723897 0.18879475 0.13716756
		 -0.97238964 0.18879475 0.13716754 -0.97238964 0.18879472 0.22194168 -0.9723897 0.072113164
		 0.22194168 -0.9723897 0.072113164 0.22194166 -0.9723897 0.072113156 0.22194164 -0.97238958
		 0.072113149 0.22194169 -0.9723897 -0.072113223 0.22194168 -0.9723897 -0.072113231
		 0.22194165 -0.97238958 -0.072113208 0.22194165 -0.97238958 -0.072113208 0.1371675
		 -0.97238958 -0.18879496 0.13716748 -0.97238952 -0.18879497 0.13716748 -0.97238964
		 -0.18879496 0.13716748 -0.97238958 -0.18879494 -6.745681e-008 -0.97238958 -0.23336335
		 -6.745681e-008 -0.97238964 -0.23336335 -6.745681e-008 -0.97238958 -0.23336335 -6.745681e-008
		 -0.97238958 -0.23336333 -0.1371675 -0.9723897 -0.18879484 -0.1371675 -0.9723897 -0.18879484
		 -0.1371675 -0.97238964 -0.18879484 -0.13716748 -0.97238958 -0.18879482 -0.22194166
		 -0.97238958 -0.072113201 -0.22194169 -0.9723897 -0.072113208 -0.22194169 -0.97238964
		 -0.072113201 -0.22194169 -0.9723897 -0.072113216 -0.22194166 -0.9723897 0.072113156
		 -0.22194166 -0.97238964 0.072113149 -0.22194165 -0.97238964 0.072113156 -0.22194166
		 -0.97238958 0.072113156 -0.58778524 0 0.809017 -0.58778524 0 0.809017 -0.58778524
		 0 0.809017 -0.58778524 0 0.809017 1.3454969e-007 0 1 1.3454969e-007 0 1 1.3454969e-007
		 0 1 1.3454969e-007 0 1 0.58778536 0 0.80901688 0.58778536 0 0.80901688 0.58778536
		 0 0.80901688 0.58778536 0 0.80901688 0.95105654 0 0.30901682 0.95105654 0 0.30901682
		 0.95105654 0 0.30901682 0.95105654 0 0.30901682 0.95105654 0 -0.30901694 0.95105654
		 0 -0.30901694 0.95105654 0 -0.30901694 0.95105654 0 -0.30901694 0.58778524 0 -0.809017
		 0.58778524 0 -0.809017 0.58778524 0 -0.809017 0.58778524 0 -0.809017 -1.3454972e-007
		 0 -1 -1.3454972e-007 0 -1 -1.3454972e-007 0 -1 -1.3454972e-007 0 -1 -0.58778536 0
		 -0.80901694 -0.58778536 0 -0.80901694 -0.58778536 0 -0.80901694 -0.58778536 0 -0.80901694
		 -0.95105648 0 -0.30901697 -0.95105648 0 -0.30901697 -0.95105648 0 -0.30901697 -0.95105648
		 0 -0.30901697 -0.95105654 0 0.30901676 -0.95105654 0 0.30901676 -0.95105654 0 0.30901676
		 -0.95105654 0 0.30901676;
	setAttr -s 60 -ch 240 ".fc[0:59]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 1 0 11 12
		f 4 4 -4 5 6
		mu 0 4 2 1 12 13
		f 4 7 -7 8 9
		mu 0 4 3 2 13 14
		f 4 10 -10 11 12
		mu 0 4 4 3 14 15
		f 4 13 -13 14 15
		mu 0 4 5 4 15 16
		f 4 16 -16 17 18
		mu 0 4 6 5 16 17
		f 4 19 -19 20 21
		mu 0 4 7 6 17 18
		f 4 22 -22 23 24
		mu 0 4 8 7 18 19
		f 4 25 -25 26 27
		mu 0 4 9 8 19 20
		f 4 28 -28 29 -2
		mu 0 4 10 9 20 21
		f 4 -3 30 31 32
		mu 0 4 12 11 22 23
		f 4 -6 -33 33 34
		mu 0 4 13 12 23 24
		f 4 -9 -35 35 36
		mu 0 4 14 13 24 25
		f 4 -12 -37 37 38
		mu 0 4 15 14 25 26
		f 4 -15 -39 39 40
		mu 0 4 16 15 26 27
		f 4 -18 -41 41 42
		mu 0 4 17 16 27 28
		f 4 -21 -43 43 44
		mu 0 4 18 17 28 29
		f 4 -24 -45 45 46
		mu 0 4 19 18 29 30
		f 4 -27 -47 47 48
		mu 0 4 20 19 30 31
		f 4 -30 -49 49 -31
		mu 0 4 21 20 31 32
		f 4 -32 50 51 52
		mu 0 4 23 22 33 34
		f 4 -34 -53 53 54
		mu 0 4 24 23 34 35
		f 4 -36 -55 55 56
		mu 0 4 25 24 35 36
		f 4 -38 -57 57 58
		mu 0 4 26 25 36 37
		f 4 -40 -59 59 60
		mu 0 4 27 26 37 38
		f 4 -42 -61 61 62
		mu 0 4 28 27 38 39
		f 4 -44 -63 63 64
		mu 0 4 29 28 39 40
		f 4 -46 -65 65 66
		mu 0 4 30 29 40 41
		f 4 -48 -67 67 68
		mu 0 4 31 30 41 42
		f 4 -50 -69 69 -51
		mu 0 4 32 31 42 43
		f 4 -52 70 71 72
		mu 0 4 34 33 44 45
		f 4 -54 -73 73 74
		mu 0 4 35 34 45 46
		f 4 -56 -75 75 76
		mu 0 4 36 35 46 47
		f 4 -58 -77 77 78
		mu 0 4 37 36 47 48
		f 4 -60 -79 79 80
		mu 0 4 38 37 48 49
		f 4 -62 -81 81 82
		mu 0 4 39 38 49 50
		f 4 -64 -83 83 84
		mu 0 4 40 39 50 51
		f 4 -66 -85 85 86
		mu 0 4 41 40 51 52
		f 4 -68 -87 87 88
		mu 0 4 42 41 52 53
		f 4 -70 -89 89 -71
		mu 0 4 43 42 53 54
		f 4 -72 90 91 92
		mu 0 4 45 44 55 56
		f 4 -74 -93 93 94
		mu 0 4 46 45 56 57
		f 4 -76 -95 95 96
		mu 0 4 47 46 57 58
		f 4 -78 -97 97 98
		mu 0 4 48 47 58 59
		f 4 -80 -99 99 100
		mu 0 4 49 48 59 60
		f 4 -82 -101 101 102
		mu 0 4 50 49 60 61
		f 4 -84 -103 103 104
		mu 0 4 51 50 61 62
		f 4 -86 -105 105 106
		mu 0 4 52 51 62 63
		f 4 -88 -107 107 108
		mu 0 4 53 52 63 64
		f 4 -90 -109 109 -91
		mu 0 4 54 53 64 65
		f 4 110 -92 111 -1
		mu 0 4 1 56 55 0
		f 4 112 -94 -111 -5
		mu 0 4 2 57 56 1
		f 4 113 -96 -113 -8
		mu 0 4 3 58 57 2
		f 4 114 -98 -114 -11
		mu 0 4 4 59 58 3
		f 4 115 -100 -115 -14
		mu 0 4 5 60 59 4
		f 4 116 -102 -116 -17
		mu 0 4 6 61 60 5
		f 4 117 -104 -117 -20
		mu 0 4 7 62 61 6
		f 4 118 -106 -118 -23
		mu 0 4 8 63 62 7
		f 4 119 -108 -119 -26
		mu 0 4 9 64 63 8
		f 4 -112 -110 -120 -29
		mu 0 4 10 65 64 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "door1";
	setAttr ".rp" -type "double3" -495.50015258789063 -125 75 ;
	setAttr ".sp" -type "double3" -495.50015258789063 -125 75 ;
createNode mesh -n "door1Shape" -p "door1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode lambert -n "lambert3";
createNode shadingEngine -n "WallsSG";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 6 ".gn";
createNode materialInfo -n "materialInfo1";
createNode lambert -n "lambert2";
	setAttr ".c" -type "float3" 0.23100001 0.23100001 0.23100001 ;
createNode shadingEngine -n "floorSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode lambert -n "lambert4";
	setAttr ".c" -type "float3" 0.5 0.076000005 0.076000005 ;
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[0]" "e[2]" "e[4]" "e[6]";
	setAttr ".ix" -type "matrix" 1000 0 0 0 0 250 0 0 0 0 700 0 0 0 0 1;
	setAttr ".wt" 0.93286746740341187;
	setAttr ".dr" no;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[4:7]";
	setAttr ".ix" -type "matrix" 1000 0 0 0 0 250 0 0 0 0 700 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -120 0 ;
	setAttr ".rs" 36703;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 2;
	setAttr ".cbn" -type "double3" -500 -125 -350 ;
	setAttr ".cbx" -type "double3" 500 -115.00000208616257 350 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[8]" -type "float3" 0 -0.027132533 0 ;
	setAttr ".tk[9]" -type "float3" 0 -0.027132533 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.027132533 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.027132533 0 ;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[8:9]" "e[15]" "e[34:35]";
	setAttr ".ix" -type "matrix" 1000 0 0 0 0 250 0 0 0 0 700 0 0 0 0 1;
	setAttr ".wt" 0.39008703827857971;
	setAttr ".re" 34;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[8]" "e[36:37]" "e[39]" "e[41]";
	setAttr ".ix" -type "matrix" 1000 0 0 0 0 250 0 0 0 0 700 0 0 0 0 1;
	setAttr ".wt" 0.36894109845161438;
	setAttr ".re" 39;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyChipOff -n "polyChipOff1";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 1000 0 0 0 0 250 0 0 0 0 700 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 40918;
	setAttr ".dup" no;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[20]" -type "float3" 0 0 -0.0024560925 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.0024560925 ;
	setAttr ".tk[22]" -type "float3" 0 0 -0.0024560925 ;
	setAttr ".tk[23]" -type "float3" 0 0 -0.0024560925 ;
	setAttr ".tk[24]" -type "float3" 0 0 -0.0024560925 ;
	setAttr ".tk[25]" -type "float3" 0 0 0.0076372372 ;
	setAttr ".tk[26]" -type "float3" 0 0 0.0076372372 ;
	setAttr ".tk[27]" -type "float3" 0 0 0.0076372372 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.0076372372 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.0076372372 ;
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 2;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 23 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]";
	setAttr ".gi" 13;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[1]" "e[3]" "e[10]" "e[13]" "e[44]" "e[53]";
	setAttr ".ix" -type "matrix" 1000 0 0 0 0 250 0 0 0 0 700 0 0 0 0 1;
	setAttr ".wt" 0.78050529956817627;
	setAttr ".dr" no;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[1]" "e[3]" "e[54:55]" "e[59]" "e[63]";
	setAttr ".ix" -type "matrix" 1000 0 0 0 0 250 0 0 0 0 700 0 0 0 0 1;
	setAttr ".wt" 0.37961322069168091;
	setAttr ".re" 54;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[9]" "e[15]" "e[34:35]" "e[43]" "e[56]" "e[68]";
	setAttr ".ix" -type "matrix" 1000 0 0 0 0 250 0 0 0 0 700 0 0 0 0 1;
	setAttr ".wt" 0.95181810855865479;
	setAttr ".dr" no;
	setAttr ".re" 34;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[30:41]" -type "float3"  0 0.010714918 0 0 0.010714918
		 0 0 0.010714918 0 0 0.010714918 0 0 0.010714918 0 0 0.010714918 0 0 -0.029275298
		 0 0 -0.029275298 0 0 -0.029275298 0 0 -0.029275298 0 0 -0.029275298 0 0 -0.029275298
		 0;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[8]" "e[45:46]" "e[48]" "e[50]" "e[64]" "e[76]";
	setAttr ".ix" -type "matrix" 1000 0 0 0 0 250 0 0 0 0 700 0 0 0 0 1;
	setAttr ".wt" 0.056392520666122437;
	setAttr ".re" 48;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[42]" -type "float3" 0 0 -0.0042600334 ;
	setAttr ".tk[43]" -type "float3" 0 0 -0.0042600334 ;
	setAttr ".tk[44]" -type "float3" 0 0 -0.0042600334 ;
	setAttr ".tk[45]" -type "float3" 0 0 -0.0042600334 ;
	setAttr ".tk[46]" -type "float3" 0 0 -0.0042600334 ;
	setAttr ".tk[47]" -type "float3" 0 0 -0.0042600334 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.0042600334 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk[49:55]" -type "float3"  0 0 0.0074590361 0 0 0.0074590361
		 0 0 0.0074590361 0 0 0.0074590361 0 0 0.0074590361 0 0 0.0074590361 0 0 0.0074590361;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[18]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "f[17]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 2 "e[83]" "e[85]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 2 "e[62]" "e[74]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 3 "e[67]" "e[69]" "e[71]";
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 3 "e[56]" "e[58]" "e[60]";
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 2 "f[20:22]" "f[28:29]";
	setAttr ".ix" -type "matrix" 1000 0 0 0 0 250 0 0 0 0 700 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -500 -15.000011 -0.013301894 ;
	setAttr ".rs" 55044;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 2;
	setAttr ".cbn" -type "double3" -500 -115.00000953674316 -85.503839701414108 ;
	setAttr ".cbx" -type "double3" -500 84.999985992908478 85.477235913276672 ;
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 1 "f[27]";
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 1 "f[42]";
createNode deleteComponent -n "deleteComponent9";
	setAttr ".dc" -type "componentList" 1 "f[19]";
createNode deleteComponent -n "deleteComponent10";
	setAttr ".dc" -type "componentList" 1 "f[34]";
createNode deleteComponent -n "deleteComponent11";
	setAttr ".dc" -type "componentList" 4 "e[54]" "e[60]" "e[71]" "e[83]";
createNode deleteComponent -n "deleteComponent12";
	setAttr ".dc" -type "componentList" 4 "vtx[24]" "vtx[29]" "vtx[48]" "vtx[55]";
createNode deleteComponent -n "deleteComponent13";
	setAttr ".dc" -type "componentList" 2 "vtx[29:30]" "vtx[35:36]";
createNode deleteComponent -n "deleteComponent14";
	setAttr ".dc" -type "componentList" 2 "vtx[30]" "vtx[34]";
createNode deleteComponent -n "deleteComponent15";
	setAttr ".dc" -type "componentList" 2 "vtx[29]" "vtx[32]";
createNode deleteComponent -n "deleteComponent16";
	setAttr ".dc" -type "componentList" 1 "f[22]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[88]";
	setAttr ".ix" -type "matrix" 1000 0 0 0 0 250 0 0 0 0 700 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -499 -115.00001 74.780167 ;
	setAttr ".rs" 39350;
	setAttr ".c[0]"  0 1 1;
	setAttr ".sma" 0;
	setAttr ".cbn" -type "double3" -500 -115.00000953674316 74.780166149139404 ;
	setAttr ".cbx" -type "double3" -498.00002574920654 -115.00000953674316 74.780166149139404 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk";
	setAttr ".tk[23]" -type "float3" 0 0 -0.00062807277 ;
	setAttr ".tk[28]" -type "float3" 0 0 -0.00062807277 ;
	setAttr ".tk[30]" -type "float3" 0 0 -0.00062806904 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.00065775588 ;
	setAttr ".tk[35]" -type "float3" 0 0 -0.00073546544 ;
	setAttr ".tk[36]" -type "float3" 0 0 -0.00073546544 ;
	setAttr ".tk[37]" -type "float3" 0 0 -0.00073546544 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.00078178197 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.00078178197 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.00078178197 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.00065775588 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.00065775588 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.00078178197 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.00078178197 ;
	setAttr ".tk[48]" -type "float3" 0 0 0.00065775588 ;
	setAttr ".tk[49]" -type "float3" 0 0 0.00078178197 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.00062806904 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.00062807277 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.00073546544 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.00073546544 ;
	setAttr ".tk[54]" -type "float3" 0 0 -0.00062807277 ;
	setAttr ".tk[55]" -type "float3" 0 0 -0.00073546544 ;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:38]";
	setAttr ".gi" 16;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[20]" -type "float3" 0 0 -0.00062807649 ;
	setAttr ".tk[24]" -type "float3" 0 0 0.00065776706 ;
	setAttr ".tk[56]" -type "float3" 0 -0.039999962 0 ;
	setAttr ".tk[57]" -type "float3" 0 -0.039999962 0 ;
createNode deleteComponent -n "deleteComponent17";
	setAttr ".dc" -type "componentList" 1 "f[17]";
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[66]";
	setAttr ".ix" -type "matrix" 1000 0 0 0 0 250 0 0 0 0 700 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -499.00003 -115.00001 -74.769783 ;
	setAttr ".rs" 54094;
	setAttr ".c[0]"  0 1 1;
	setAttr ".sma" 0;
	setAttr ".cbn" -type "double3" -500 -115.00000953674316 -74.769787490367889 ;
	setAttr ".cbx" -type "double3" -498.00005555152893 -115.00000953674316 -74.769777059555054 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[27]" -type "float3" 0 0 0.00065776706 ;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:38]";
createNode polyChipOff -n "polyChipOff2";
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 1000 0 0 0 0 250 0 0 0 0 700 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 61009;
	setAttr ".dup" no;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[58:59]" -type "float3"  0 -0.039999962 0 0 -0.039999962
		 0;
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[0]" "f[1]" "f[2]" "f[3]";
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 35 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]";
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1000 0 0 0 0 250 0 0 0 0 700 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode deleteComponent -n "deleteComponent18";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode polyUnite -n "polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:37]";
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[3:6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16151811182498932;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 120 0 ;
	setAttr ".rs" 63694;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 2;
	setAttr ".cbn" -type "double3" -500.00003051757812 115 -350 ;
	setAttr ".cbx" -type "double3" 500.00003051757812 125 350 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[52]" -type "float3" 0 28.764343 0 ;
	setAttr ".tk[53]" -type "float3" 0 28.764343 0 ;
	setAttr ".tk[54]" -type "float3" 0 28.764343 0 ;
	setAttr ".tk[55]" -type "float3" 0 28.764343 0 ;
createNode polyChipOff -n "polyChipOff3";
	setAttr ".ics" -type "componentList" 1 "f[38:41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 54891;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate3";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 2 ;
	setAttr -s 2 ".out";
createNode lambert -n "walls1";
	setAttr ".c" -type "float3" 0 1 1 ;
createNode shadingEngine -n "lambert5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode lambert -n "lambert6";
	setAttr ".c" -type "float3" 0.579 0.36652356 0.045162003 ;
createNode shadingEngine -n "lambert6SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
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
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n"
		+ "                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "lambert7";
createNode shadingEngine -n "ringSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode lambert -n "lambert8";
	setAttr ".c" -type "float3" 1 1 0 ;
createNode shadingEngine -n "lambert8SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.49905663728713989;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[4:5]" "e[8:9]" "e[16]" "e[19]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.50766938924789429;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 -0.00094336271 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.00094336271 ;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[4:5]" "e[19]" "e[25]" "e[27]" "e[29]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.99552488327026367;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[4:5]" "e[19]" "e[37]" "e[39]" "e[41]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.99501925706863403;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[4:5]" "e[19]" "e[49]" "e[51]" "e[53]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.99880564212799072;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[4:5]" "e[19]" "e[61]" "e[63]" "e[65]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.99115937948226929;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[4:5]" "e[19]" "e[73]" "e[75]" "e[77]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.99782925844192505;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[4:5]" "e[19]" "e[85]" "e[87]" "e[89]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.9966084361076355;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[4:5]" "e[19]" "e[97]" "e[99]" "e[101]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.99514085054397583;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[4:5]" "e[19]" "e[109]" "e[111]" "e[113]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.99587976932525635;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[10:13]" "e[28]" "e[31]" "e[40]" "e[43]" "e[52]" "e[55]" "e[64]" "e[67]" "e[76]" "e[79]" "e[88]" "e[91]" "e[100]" "e[103]" "e[112]" "e[115]" "e[124]" "e[127]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.98979461193084717;
	setAttr ".dr" no;
	setAttr ".re" 67;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[10:11]" "e[31]" "e[43]" "e[55]" "e[67]" "e[79]" "e[91]" "e[103]" "e[115]" "e[127]" "e[143]" "e[145]" "e[147]" "e[149]" "e[151]" "e[153]" "e[155]" "e[157]" "e[159]" "e[161]" "e[163]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.99542522430419922;
	setAttr ".dr" no;
	setAttr ".re" 31;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[10:11]" "e[31]" "e[43]" "e[55]" "e[67]" "e[79]" "e[91]" "e[103]" "e[115]" "e[127]" "e[193]" "e[195]" "e[197]" "e[199]" "e[201]" "e[203]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.99769753217697144;
	setAttr ".dr" no;
	setAttr ".re" 31;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[10:11]" "e[31]" "e[43]" "e[55]" "e[67]" "e[79]" "e[91]" "e[103]" "e[115]" "e[127]" "e[237]" "e[239]" "e[241]" "e[243]" "e[245]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[257]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.99372285604476929;
	setAttr ".dr" no;
	setAttr ".re" 31;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[6:7]" "e[15]" "e[17]" "e[22]" "e[26]" "e[34]" "e[38]" "e[46]" "e[50]" "e[58]" "e[62]" "e[70]" "e[74]" "e[82]" "e[86]" "e[94]" "e[98]" "e[106]" "e[110]" "e[118]" "e[122]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.0094301933422684669;
	setAttr ".re" 58;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[6:7]" "e[26]" "e[38]" "e[50]" "e[62]" "e[74]" "e[86]" "e[98]" "e[110]" "e[122]" "e[304:305]" "e[307]" "e[309]" "e[311]" "e[313]" "e[315]" "e[317]" "e[341]" "e[343]" "e[345]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.0038763897027820349;
	setAttr ".re" 341;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[6:7]" "e[26]" "e[38]" "e[50]" "e[62]" "e[74]" "e[86]" "e[98]" "e[110]" "e[122]" "e[348:349]" "e[351]" "e[353]" "e[355]" "e[357]" "e[359]" "e[361]" "e[363]" "e[365]" "e[367]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.003886084072291851;
	setAttr ".re" 348;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[6:7]" "e[26]" "e[38]" "e[50]" "e[62]" "e[74]" "e[86]" "e[98]" "e[110]" "e[122]" "e[392:393]" "e[395]" "e[397]" "e[399]" "e[401]" "e[403]" "e[405]" "e[407]" "e[409]" "e[411]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.0048664016649127007;
	setAttr ".re" 392;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[8:9]" "e[16]" "e[20:21]" "e[23]" "e[162]" "e[166]" "e[212]" "e[215]" "e[256]" "e[259]" "e[300]" "e[303]" "e[338]" "e[342]" "e[388]" "e[391]" "e[432]" "e[435]" "e[476]" "e[479]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
	setAttr ".wt" 0.0087484503164887428;
	setAttr ".re" 388;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 88 ".tk";
	setAttr ".tk[12]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[18]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[19]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[20]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[21]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[22]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[23]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[24]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[25]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[26]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[27]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[29]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[30]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[31]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[32]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[34]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[66]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[79]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[80]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[81]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[82]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[85]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[86]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[87]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[88]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[89]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[90]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[91]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[104]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[105]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[106]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[107]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[110]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[111]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[112]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[113]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[126]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[127]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[128]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[129]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[132]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[133]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[134]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[135]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[148]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[149]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[150]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[151]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[154]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[167]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[168]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[169]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[170]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[173]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[174]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[175]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[176]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[177]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[178]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[179]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[192]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[193]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[194]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[195]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[198]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[199]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[200]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[201]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[214]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[215]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[216]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[217]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[220]" -type "float3" 0 -0.00050841284 0 ;
	setAttr ".tk[221]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[222]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[223]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[236]" -type "float3" 0 -0.0002510114 0 ;
	setAttr ".tk[237]" -type "float3" 0 -0.0001450046 0 ;
	setAttr ".tk[238]" -type "float3" 0 -8.6503103e-005 0 ;
	setAttr ".tk[239]" -type "float3" 0 -0.00050841284 0 ;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 193 ".tk";
	setAttr ".tk[9]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[15]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[27]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[36]" -type "float3" 0 1.1641532e-010 0 ;
	setAttr ".tk[37]" -type "float3" 0 1.1641532e-010 0 ;
	setAttr ".tk[38]" -type "float3" 0 1.1641532e-010 0 ;
	setAttr ".tk[39]" -type "float3" 0 1.1641532e-010 -0.00060092844 ;
	setAttr ".tk[40]" -type "float3" 0 1.1641532e-010 0 ;
	setAttr ".tk[41]" -type "float3" 0 1.1641532e-010 0 ;
	setAttr ".tk[42]" -type "float3" 0 0.0005062595 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.0005062595 0 ;
	setAttr ".tk[44]" -type "float3" 0 0.0005062595 0 ;
	setAttr ".tk[45]" -type "float3" 0 0.0005062595 -0.00060092844 ;
	setAttr ".tk[46]" -type "float3" 0 0.0005062595 0 ;
	setAttr ".tk[47]" -type "float3" 0 0.0005062595 0 ;
	setAttr ".tk[48]" -type "float3" 0 -0.00038471143 0 ;
	setAttr ".tk[49]" -type "float3" 0 -0.00038471143 0 ;
	setAttr ".tk[50]" -type "float3" 0 -0.00038471143 0 ;
	setAttr ".tk[51]" -type "float3" 0 -0.00038471143 -0.00060092844 ;
	setAttr ".tk[52]" -type "float3" 0 -0.00038471143 0 ;
	setAttr ".tk[53]" -type "float3" 0 -0.00038471143 0 ;
	setAttr ".tk[54]" -type "float3" 0 0.00017095578 0 ;
	setAttr ".tk[55]" -type "float3" 0 0.00017095578 0 ;
	setAttr ".tk[56]" -type "float3" 0 0.00017095578 0 ;
	setAttr ".tk[57]" -type "float3" 0 0.00017095578 -0.00060092844 ;
	setAttr ".tk[58]" -type "float3" 0 0.00017095578 0 ;
	setAttr ".tk[59]" -type "float3" 0 0.00017095578 0 ;
	setAttr ".tk[60]" -type "float3" 0 0.00051038573 0 ;
	setAttr ".tk[61]" -type "float3" 0 0.00051038573 0 ;
	setAttr ".tk[62]" -type "float3" 0 0.00051038573 0 ;
	setAttr ".tk[63]" -type "float3" 0 0.00051038573 -0.00060092844 ;
	setAttr ".tk[64]" -type "float3" 0 0.00051038573 0 ;
	setAttr ".tk[65]" -type "float3" 0 0.00051038573 0 ;
	setAttr ".tk[67]" -type "float3" 0 1.1641532e-010 0 ;
	setAttr ".tk[68]" -type "float3" 0 0.0005062595 0 ;
	setAttr ".tk[69]" -type "float3" 0 -0.00038471143 0 ;
	setAttr ".tk[70]" -type "float3" 0 0.00017095578 0 ;
	setAttr ".tk[71]" -type "float3" 0 0.00051038573 0 ;
	setAttr ".tk[73]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[74]" -type "float3" 0 0.00051038573 -0.00060092844 ;
	setAttr ".tk[75]" -type "float3" 0 0.00017095578 -0.00060092844 ;
	setAttr ".tk[76]" -type "float3" 0 -0.00038471143 -0.00060092844 ;
	setAttr ".tk[77]" -type "float3" 0 0.0005062595 -0.00060092844 ;
	setAttr ".tk[78]" -type "float3" 0 1.1641532e-010 -0.00060092844 ;
	setAttr ".tk[79]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[80]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[81]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[82]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[83]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[92]" -type "float3" 0 1.1641532e-010 0 ;
	setAttr ".tk[93]" -type "float3" 0 0.0005062595 0 ;
	setAttr ".tk[94]" -type "float3" 0 -0.00038471143 0 ;
	setAttr ".tk[95]" -type "float3" 0 0.00017095578 0 ;
	setAttr ".tk[96]" -type "float3" 0 0.00051038573 0 ;
	setAttr ".tk[98]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[99]" -type "float3" 0 0.00051038573 -0.00060092844 ;
	setAttr ".tk[100]" -type "float3" 0 0.00017095578 -0.00060092844 ;
	setAttr ".tk[101]" -type "float3" 0 -0.00038471143 -0.00060092844 ;
	setAttr ".tk[102]" -type "float3" 0 0.0005062595 -0.00060092844 ;
	setAttr ".tk[103]" -type "float3" 0 1.1641532e-010 -0.00060092844 ;
	setAttr ".tk[104]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[105]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[106]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[107]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[108]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[114]" -type "float3" 0 1.1641532e-010 0 ;
	setAttr ".tk[115]" -type "float3" 0 0.0005062595 0 ;
	setAttr ".tk[116]" -type "float3" 0 -0.00038471143 0 ;
	setAttr ".tk[117]" -type "float3" 0 0.00017095578 0 ;
	setAttr ".tk[118]" -type "float3" 0 0.00051038573 0 ;
	setAttr ".tk[120]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[121]" -type "float3" 0 0.00051038573 -0.00060092844 ;
	setAttr ".tk[122]" -type "float3" 0 0.00017095578 -0.00060092844 ;
	setAttr ".tk[123]" -type "float3" 0 -0.00038471143 -0.00060092844 ;
	setAttr ".tk[124]" -type "float3" 0 0.0005062595 -0.00060092844 ;
	setAttr ".tk[125]" -type "float3" 0 1.1641532e-010 -0.00060092844 ;
	setAttr ".tk[126]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[127]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[128]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[129]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[130]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[136]" -type "float3" 0 1.1641532e-010 0 ;
	setAttr ".tk[137]" -type "float3" 0 0.0005062595 0 ;
	setAttr ".tk[138]" -type "float3" 0 -0.00038471143 0 ;
	setAttr ".tk[139]" -type "float3" 0 0.00017095578 0 ;
	setAttr ".tk[140]" -type "float3" 0 0.00051038573 0 ;
	setAttr ".tk[142]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[143]" -type "float3" 0 0.00051038573 -0.00060092844 ;
	setAttr ".tk[144]" -type "float3" 0 0.00017095578 -0.00060092844 ;
	setAttr ".tk[145]" -type "float3" 0 -0.00038471143 -0.00060092844 ;
	setAttr ".tk[146]" -type "float3" 0 0.0005062595 -0.00060092844 ;
	setAttr ".tk[147]" -type "float3" 0 1.1641532e-010 -0.00060092844 ;
	setAttr ".tk[148]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[149]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[150]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[151]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[152]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[154]" -type "float3" 0 0 -3.7427068e-005 ;
	setAttr ".tk[155]" -type "float3" 0 1.1641532e-010 -3.7427068e-005 ;
	setAttr ".tk[156]" -type "float3" 0 0.0005062595 -3.7427068e-005 ;
	setAttr ".tk[157]" -type "float3" 0 -0.00038471143 -3.7427068e-005 ;
	setAttr ".tk[158]" -type "float3" 0 0.00017095578 -3.7427068e-005 ;
	setAttr ".tk[159]" -type "float3" 0 0.00051038573 -3.7427068e-005 ;
	setAttr ".tk[160]" -type "float3" 0 0 -3.7427068e-005 ;
	setAttr ".tk[161]" -type "float3" 0 0 -0.0006383555 ;
	setAttr ".tk[162]" -type "float3" 0 0.00051038573 -0.0006383555 ;
	setAttr ".tk[163]" -type "float3" 0 0.00017095578 -0.0006383555 ;
	setAttr ".tk[164]" -type "float3" 0 -0.00038471143 -0.0006383555 ;
	setAttr ".tk[165]" -type "float3" 0 0.0005062595 -0.0006383555 ;
	setAttr ".tk[166]" -type "float3" 0 1.1641532e-010 -0.0006383555 ;
	setAttr ".tk[167]" -type "float3" 0 0 -0.0006383555 ;
	setAttr ".tk[168]" -type "float3" 0 0 -0.0006383555 ;
	setAttr ".tk[169]" -type "float3" 0 0 -0.0006383555 ;
	setAttr ".tk[170]" -type "float3" 0 0 -0.0006383555 ;
	setAttr ".tk[171]" -type "float3" 0 0 -0.0006383555 ;
	setAttr ".tk[172]" -type "float3" 0 0 -3.7427068e-005 ;
	setAttr ".tk[173]" -type "float3" 0 0 -3.7427068e-005 ;
	setAttr ".tk[174]" -type "float3" 0 0 -3.7427068e-005 ;
	setAttr ".tk[175]" -type "float3" 0 0 -3.7427068e-005 ;
	setAttr ".tk[180]" -type "float3" 0 1.1641532e-010 0 ;
	setAttr ".tk[181]" -type "float3" 0 0.0005062595 0 ;
	setAttr ".tk[182]" -type "float3" 0 -0.00038471143 0 ;
	setAttr ".tk[183]" -type "float3" 0 0.00017095578 0 ;
	setAttr ".tk[184]" -type "float3" 0 0.00051038573 0 ;
	setAttr ".tk[186]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[187]" -type "float3" 0 0.00051038573 -0.00060092844 ;
	setAttr ".tk[188]" -type "float3" 0 0.00017095578 -0.00060092844 ;
	setAttr ".tk[189]" -type "float3" 0 -0.00038471143 -0.00060092844 ;
	setAttr ".tk[190]" -type "float3" 0 0.0005062595 -0.00060092844 ;
	setAttr ".tk[191]" -type "float3" 0 1.1641532e-010 -0.00060092844 ;
	setAttr ".tk[192]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[193]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[194]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[195]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[196]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[202]" -type "float3" 0 1.1641532e-010 0 ;
	setAttr ".tk[203]" -type "float3" 0 0.0005062595 0 ;
	setAttr ".tk[204]" -type "float3" 0 -0.00038471143 0 ;
	setAttr ".tk[205]" -type "float3" 0 0.00017095578 0 ;
	setAttr ".tk[206]" -type "float3" 0 0.00051038573 0 ;
	setAttr ".tk[208]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[209]" -type "float3" 0 0.00051038573 -0.00060092844 ;
	setAttr ".tk[210]" -type "float3" 0 0.00017095578 -0.00060092844 ;
	setAttr ".tk[211]" -type "float3" 0 -0.00038471143 -0.00060092844 ;
	setAttr ".tk[212]" -type "float3" 0 0.0005062595 -0.00060092844 ;
	setAttr ".tk[213]" -type "float3" 0 1.1641532e-010 -0.00060092844 ;
	setAttr ".tk[214]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[215]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[216]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[217]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[218]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[224]" -type "float3" 0 1.1641532e-010 0 ;
	setAttr ".tk[225]" -type "float3" 0 0.0005062595 0 ;
	setAttr ".tk[226]" -type "float3" 0 -0.00038471143 0 ;
	setAttr ".tk[227]" -type "float3" 0 0.00017095578 0 ;
	setAttr ".tk[228]" -type "float3" 0 0.00051038573 0 ;
	setAttr ".tk[230]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[231]" -type "float3" 0 0.00051038573 -0.00060092844 ;
	setAttr ".tk[232]" -type "float3" 0 0.00017095578 -0.00060092844 ;
	setAttr ".tk[233]" -type "float3" 0 -0.00038471143 -0.00060092844 ;
	setAttr ".tk[234]" -type "float3" 0 0.0005062595 -0.00060092844 ;
	setAttr ".tk[235]" -type "float3" 0 1.1641532e-010 -0.00060092844 ;
	setAttr ".tk[236]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[237]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[238]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[239]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[240]" -type "float3" 0 0 -0.00060092844 ;
	setAttr ".tk[242]" -type "float3" 0 -0.0026211061 -0.00060092844 ;
	setAttr ".tk[243]" -type "float3" 0 -0.0026211061 -0.0006383555 ;
	setAttr ".tk[244]" -type "float3" 0 -0.0026211061 -0.00060092844 ;
	setAttr ".tk[245]" -type "float3" 0 -0.0026211061 -0.00060092844 ;
	setAttr ".tk[246]" -type "float3" 0 -0.0026211061 -0.00060092844 ;
	setAttr ".tk[247]" -type "float3" 0 -0.0026211061 -0.00060092844 ;
	setAttr ".tk[248]" -type "float3" 0 -0.0026211061 -0.00060092844 ;
	setAttr ".tk[249]" -type "float3" 0 -0.0026211061 0 ;
	setAttr ".tk[250]" -type "float3" 0 -0.0026211061 0 ;
	setAttr ".tk[251]" -type "float3" 0 -0.0026211061 0 ;
	setAttr ".tk[252]" -type "float3" 0 -0.0026211061 0 ;
	setAttr ".tk[253]" -type "float3" 0 -0.0026211061 0 ;
	setAttr ".tk[254]" -type "float3" 0 -0.0026211061 0 ;
	setAttr ".tk[255]" -type "float3" 0 -0.0026211061 0 ;
	setAttr ".tk[256]" -type "float3" 0 -0.0026211061 -3.7427068e-005 ;
	setAttr ".tk[257]" -type "float3" 0 -0.0026211061 0 ;
	setAttr ".tk[258]" -type "float3" 0 -0.0026211061 0 ;
	setAttr ".tk[259]" -type "float3" 0 -0.0026211061 0 ;
	setAttr ".tk[260]" -type "float3" 0 -0.0026211061 0 ;
	setAttr ".tk[261]" -type "float3" 0 -0.0026211061 0 ;
	setAttr ".tk[262]" -type "float3" 0 -0.0026211061 -0.00060092844 ;
	setAttr ".tk[263]" -type "float3" 0 -0.0026211061 -0.00060092844 ;
createNode deleteComponent -n "deleteComponent19";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent20";
	setAttr ".dc" -type "componentList" 18 "e[14]" "e[18]" "e[142]" "e[164]" "e[192]" "e[214]" "e[236]" "e[258]" "e[280]" "e[302]" "e[318]" "e[340]" "e[368]" "e[390]" "e[412]" "e[434]" "e[456]" "e[478]";
createNode deleteComponent -n "deleteComponent21";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent22";
	setAttr ".dc" -type "componentList" 74 "e[15]" "e[17:18]" "e[20]" "e[23:24]" "e[26]" "e[29:30]" "e[32]" "e[35:36]" "e[38]" "e[41:42]" "e[44]" "e[47:48]" "e[50]" "e[53:54]" "e[56]" "e[59:60]" "e[62]" "e[65:66]" "e[68]" "e[71:72]" "e[74]" "e[77:78]" "e[80]" "e[83:84]" "e[86]" "e[89:90]" "e[92]" "e[95:96]" "e[98]" "e[101:102]" "e[104]" "e[107:108]" "e[110]" "e[113:114]" "e[116]" "e[119:120]" "e[122]" "e[125:136]" "e[138]" "e[140:157]" "e[159]" "e[161:184]" "e[186]" "e[188:205]" "e[207]" "e[209:226]" "e[228]" "e[230:247]" "e[249]" "e[251:268]" "e[270]" "e[272:289]" "e[291]" "e[293:304]" "e[306]" "e[308:325]" "e[327]" "e[329:352]" "e[354]" "e[356:373]" "e[375]" "e[377:394]" "e[396]" "e[398:415]" "e[417]" "e[419:436]" "e[438]" "e[440:457]" "e[459]" "e[461:474]" "e[476]" "e[479:496]" "e[498]" "e[501:505]";
createNode deleteComponent -n "deleteComponent23";
	setAttr ".dc" -type "componentList" 2 "vtx[8:11]" "vtx[48:79]";
createNode deleteComponent -n "deleteComponent24";
	setAttr ".dc" -type "componentList" 0;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 10 "vtx[11]" "vtx[15]" "vtx[19]" "vtx[23]" "vtx[27]" "vtx[31]" "vtx[35]" "vtx[39]" "vtx[43]" "vtx[45]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[11]" -type "float3" 0 -0.0071741967 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.0053242263 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.0027484701 0 ;
	setAttr ".tk[23]" -type "float3" 0 -0.0020418442 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.0021476077 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.0027220286 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.0052977884 0 ;
	setAttr ".tk[39]" -type "float3" 0 0.0071477578 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.0088382335 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.0088646784 0 ;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 1 "vtx[11]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 9 "vtx[10]" "vtx[14]" "vtx[17]" "vtx[20]" "vtx[23]" "vtx[26]" "vtx[29]" "vtx[32]" "vtx[35:36]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[10]" -type "float3" 0 -0.0071741967 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.0053242263 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.0027484701 0 ;
	setAttr ".tk[20]" -type "float3" 0 -0.0020418442 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.0021476077 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.0027220286 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.0052977884 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.0071477578 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.0088382335 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.0088646784 0 ;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 10 "vtx[8]" "vtx[12]" "vtx[14]" "vtx[16]" "vtx[18]" "vtx[20]" "vtx[22]" "vtx[24]" "vtx[26]" "vtx[28]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[8]" -type "float3" 0 -0.0071741976 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.0053242277 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.002748471 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.0020418451 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.0021476068 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.0027220277 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.0052977875 0 ;
	setAttr ".tk[24]" -type "float3" 0 0.0071477564 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.0088382326 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.0088646691 0 ;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12:20]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 200 0 0 0 0 150 0 -498.00015258789062 -25 0 1;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[9]" -type "float3" 0 -0.0071741976 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.0053242277 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.002748471 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.0020418451 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.0021476068 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.0027220277 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.0052977875 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.0071477564 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.0088382326 0 ;
	setAttr ".tk[20]" -type "float3" 0 -0.0088646691 0 ;
createNode deleteComponent -n "deleteComponent25";
	setAttr ".dc" -type "componentList" 1 "e[9]";
createNode deleteComponent -n "deleteComponent26";
	setAttr ".dc" -type "componentList" 1 "e[8]";
createNode deleteComponent -n "deleteComponent27";
	setAttr ".dc" -type "componentList" 1 "vtx[8:9]";
createNode deleteComponent -n "deleteComponent28";
	setAttr ".dc" -type "componentList" 1 "vtx[8:9]";
createNode polyCBoolOp -n "polyCBoolOp1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".mg" -type "Int32Array" 2 -34 -36 ;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode lambert -n "lambert9";
	setAttr ".c" -type "float3" 0.579 0.36652356 0.045162003 ;
createNode shadingEngine -n "lambert9SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
createNode polyNormalPerVertex -n "polyNormalPerVertex1";
	setAttr ".uopa" yes;
	setAttr -s 58 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[0].vfnl[1].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[0].vfnl[2].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[1].vfnl[2].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[2].vfnl[3].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[3].vfnl[5].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[4].vfnl[6].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[5].vfnl[6].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[6].vfnl[4].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[6].vfnl[6].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[7].vfnl[5].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[7].vfnl[6].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[8].vfnl";
	setAttr ".vn[8].vfnl[3].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[8].vfnl[4].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[8].vfnl[38].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[8].vfnl[44].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[9].vfnl";
	setAttr ".vn[9].vfnl[3].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[9].vfnl[44].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[9].vfnl[46].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[10].vfnl";
	setAttr ".vn[10].vfnl[3].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[10].vfnl[45].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[10].vfnl[46].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[11].vfnl";
	setAttr ".vn[11].vfnl[3].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[11].vfnl[41].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[11].vfnl[45].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[12].vfnl";
	setAttr ".vn[12].vfnl[3].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[12].vfnl[34].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[12].vfnl[41].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[13].vfnl";
	setAttr ".vn[13].vfnl[3].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[13].vfnl[4].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[13].vfnl[26].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[13].vfnl[34].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[14].vfnl";
	setAttr ".vn[14].vfnl[4].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[14].vfnl[18].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[14].vfnl[26].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[15].vfnl";
	setAttr ".vn[15].vfnl[4].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[15].vfnl[18].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[15].vfnl[22].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[16].vfnl";
	setAttr ".vn[16].vfnl[4].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[16].vfnl[22].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[16].vfnl[30].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[17].vfnl";
	setAttr ".vn[17].vfnl[4].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[17].vfnl[30].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[17].vfnl[38].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[18].vfnl";
	setAttr ".vn[18].vfnl[7].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[18].vfnl[8].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[18].vfnl[9].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[18].vfnl[13].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[19].vfnl";
	setAttr ".vn[19].vfnl[7].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[19].vfnl[8].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[19].vfnl[11].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[19].vfnl[14].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[20].vfnl";
	setAttr ".vn[20].vfnl[7].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[20].vfnl[10].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[20].vfnl[11].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[20].vfnl[17].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[21].vfnl";
	setAttr ".vn[21].vfnl[7].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[21].vfnl[9].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[21].vfnl[10].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[21].vfnl[15].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[22].vfnl";
	setAttr ".vn[22].vfnl[8].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[22].vfnl[12].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[22].vfnl[13].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[22].vfnl[20].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[23].vfnl";
	setAttr ".vn[23].vfnl[8].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[23].vfnl[12].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[23].vfnl[14].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[23].vfnl[21].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[24].vfnl";
	setAttr ".vn[24].vfnl[9].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[24].vfnl[15].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[24].vfnl[47].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[25].vfnl";
	setAttr ".vn[25].vfnl[9].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[25].vfnl[13].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[25].vfnl[47].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[26].vfnl";
	setAttr ".vn[26].vfnl[10].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[26].vfnl[16].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[26].vfnl[17].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[26].vfnl[25].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[27].vfnl";
	setAttr ".vn[27].vfnl[10].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[27].vfnl[15].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[27].vfnl[16].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[27].vfnl[23].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[28].vfnl";
	setAttr ".vn[28].vfnl[11].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[28].vfnl[14].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[28].vfnl[18].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[28].vfnl[22].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[29].vfnl";
	setAttr ".vn[29].vfnl[11].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[29].vfnl[17].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[29].vfnl[18].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[29].vfnl[26].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[30].vfnl";
	setAttr ".vn[30].vfnl[12].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[30].vfnl[19].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[30].vfnl[20].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[30].vfnl[28].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[31].vfnl";
	setAttr ".vn[31].vfnl[12].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[31].vfnl[19].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[31].vfnl[21].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[31].vfnl[29].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[32].vfnl";
	setAttr ".vn[32].vfnl[13].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[32].vfnl[20].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[32].vfnl[47].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[33].vfnl";
	setAttr ".vn[33].vfnl[14].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[33].vfnl[21].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[33].vfnl[22].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[33].vfnl[30].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[34].vfnl";
	setAttr ".vn[34].vfnl[15].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[34].vfnl[23].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[34].vfnl[47].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[35].vfnl";
	setAttr ".vn[35].vfnl[16].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[35].vfnl[24].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[35].vfnl[25].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[35].vfnl[33].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[36].vfnl";
	setAttr ".vn[36].vfnl[16].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[36].vfnl[23].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[36].vfnl[24].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[36].vfnl[31].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[37].vfnl";
	setAttr ".vn[37].vfnl[17].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[37].vfnl[25].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[37].vfnl[26].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[37].vfnl[34].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[38].vfnl";
	setAttr ".vn[38].vfnl[19].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[38].vfnl[27].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[38].vfnl[28].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[38].vfnl[36].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[39].vfnl";
	setAttr ".vn[39].vfnl[19].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[39].vfnl[27].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[39].vfnl[29].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[39].vfnl[37].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[40].vfnl";
	setAttr ".vn[40].vfnl[20].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[40].vfnl[28].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[40].vfnl[47].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[41].vfnl";
	setAttr ".vn[41].vfnl[21].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[41].vfnl[29].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[41].vfnl[30].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[41].vfnl[38].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[42].vfnl";
	setAttr ".vn[42].vfnl[23].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[42].vfnl[31].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[42].vfnl[47].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[43].vfnl";
	setAttr ".vn[43].vfnl[24].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[43].vfnl[32].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[43].vfnl[33].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[43].vfnl[40].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[44].vfnl";
	setAttr ".vn[44].vfnl[24].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[44].vfnl[31].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[44].vfnl[32].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[44].vfnl[39].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[45].vfnl";
	setAttr ".vn[45].vfnl[25].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[45].vfnl[33].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[45].vfnl[34].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[45].vfnl[41].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[46].vfnl";
	setAttr ".vn[46].vfnl[27].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[46].vfnl[35].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[46].vfnl[36].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[46].vfnl[42].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[47].vfnl";
	setAttr ".vn[47].vfnl[27].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[47].vfnl[35].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[47].vfnl[37].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[47].vfnl[43].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[48].vfnl";
	setAttr ".vn[48].vfnl[28].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[48].vfnl[36].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[48].vfnl[47].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[49].vfnl";
	setAttr ".vn[49].vfnl[29].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[49].vfnl[37].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[49].vfnl[38].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[49].vfnl[44].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[50].vfnl";
	setAttr ".vn[50].vfnl[31].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[50].vfnl[39].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[50].vfnl[47].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[51].vfnl";
	setAttr ".vn[51].vfnl[32].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[51].vfnl[35].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[51].vfnl[40].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[51].vfnl[43].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[52].vfnl";
	setAttr ".vn[52].vfnl[32].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[52].vfnl[35].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[52].vfnl[39].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[52].vfnl[42].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[53].vfnl";
	setAttr ".vn[53].vfnl[33].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[53].vfnl[40].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[53].vfnl[41].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[53].vfnl[45].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[54].vfnl";
	setAttr ".vn[54].vfnl[36].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[54].vfnl[42].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[54].vfnl[47].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[55].vfnl";
	setAttr ".vn[55].vfnl[37].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[55].vfnl[43].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[55].vfnl[44].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[55].vfnl[46].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 3 ".vn[56].vfnl";
	setAttr ".vn[56].vfnl[39].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[56].vfnl[42].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[56].vfnl[47].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr -s 4 ".vn[57].vfnl";
	setAttr ".vn[57].vfnl[40].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[57].vfnl[43].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[57].vfnl[45].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[57].vfnl[46].fnxy" -type "float3" 1e+020 1e+020 1e+020 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 10 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.75213248 0.47617304 0.058854047 ;
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
connectAttr "groupParts5.og" "polySurfaceShape3.i";
connectAttr "groupId4.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr "WallsSG.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "deleteComponent18.og" "polySurfaceShape4.i";
connectAttr "groupId5.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr "WallsSG.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "polyChipOff2.out" "polySurfaceShape2.i";
connectAttr "groupId3.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr "WallsSG.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupId1.id" "WallsShape.iog.og[0].gid";
connectAttr "WallsSG.mwc" "WallsShape.iog.og[0].gco";
connectAttr "groupParts1.og" "WallsShape.i";
connectAttr "groupId2.id" "WallsShape.ciog.cog[0].cgid";
connectAttr "polySeparate3.out[0]" "wallsShape.i";
connectAttr "polySeparate3.out[1]" "panelsShape.i";
connectAttr "polyChipOff3.out" "polySurface3Shape.i";
connectAttr "groupId6.id" "polySurface3Shape.iog.og[0].gid";
connectAttr "WallsSG.mwc" "polySurface3Shape.iog.og[0].gco";
connectAttr "deleteComponent28.og" "doorShape.i";
connectAttr "groupId8.id" "doorShape.ciog.cog[2].cgid";
connectAttr "groupId10.id" "ringShape.ciog.cog[2].cgid";
connectAttr "polyNormalPerVertex1.out" "door1Shape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WallsSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "floorSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ringSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WallsSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "floorSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ringSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lambert3.oc" "WallsSG.ss";
connectAttr "WallsShape.iog.og[0]" "WallsSG.dsm" -na;
connectAttr "WallsShape.ciog.cog[0]" "WallsSG.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" "WallsSG.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" "WallsSG.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" "WallsSG.dsm" -na;
connectAttr "polySurface3Shape.iog.og[0]" "WallsSG.dsm" -na;
connectAttr "groupId1.msg" "WallsSG.gn" -na;
connectAttr "groupId2.msg" "WallsSG.gn" -na;
connectAttr "groupId3.msg" "WallsSG.gn" -na;
connectAttr "groupId4.msg" "WallsSG.gn" -na;
connectAttr "groupId5.msg" "WallsSG.gn" -na;
connectAttr "groupId6.msg" "WallsSG.gn" -na;
connectAttr "WallsSG.msg" "materialInfo1.sg";
connectAttr "lambert3.msg" "materialInfo1.m";
connectAttr "lambert2.oc" "floorSG.ss";
connectAttr "floorShape.iog" "floorSG.dsm" -na;
connectAttr "floorSG.msg" "materialInfo2.sg";
connectAttr "lambert2.msg" "materialInfo2.m";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "polySurfaceShape1.o" "polySplitRing1.ip";
connectAttr "WallsShape.wm" "polySplitRing1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "WallsShape.wm" "polyExtrudeFace1.mp";
connectAttr "polySplitRing1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace1.out" "polySplitRing2.ip";
connectAttr "WallsShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "WallsShape.wm" "polySplitRing3.mp";
connectAttr "polyTweak2.out" "polyChipOff1.ip";
connectAttr "WallsShape.wm" "polyChipOff1.mp";
connectAttr "polySplitRing3.out" "polyTweak2.ip";
connectAttr "WallsShape.o" "polySeparate1.ip";
connectAttr "polyChipOff1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySeparate1.out[0]" "groupParts2.ig";
connectAttr "groupParts2.og" "polySplitRing4.ip";
connectAttr "polySurfaceShape2.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "polySurfaceShape2.wm" "polySplitRing5.mp";
connectAttr "polyTweak3.out" "polySplitRing6.ip";
connectAttr "polySurfaceShape2.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polySplitRing7.ip";
connectAttr "polySurfaceShape2.wm" "polySplitRing7.mp";
connectAttr "polySplitRing6.out" "polyTweak4.ip";
connectAttr "polySplitRing7.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyExtrudeFace2.ip";
connectAttr "polySurfaceShape2.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "polyTweak6.out" "polyExtrudeEdge1.ip";
connectAttr "polySurfaceShape2.wm" "polyExtrudeEdge1.mp";
connectAttr "deleteComponent16.og" "polyTweak6.ip";
connectAttr "polyExtrudeEdge1.out" "groupParts3.ig";
connectAttr "groupParts3.og" "polyTweak7.ip";
connectAttr "polyTweak7.out" "deleteComponent17.ig";
connectAttr "polyTweak8.out" "polyExtrudeEdge2.ip";
connectAttr "polySurfaceShape2.wm" "polyExtrudeEdge2.mp";
connectAttr "deleteComponent17.og" "polyTweak8.ip";
connectAttr "polyExtrudeEdge2.out" "groupParts4.ig";
connectAttr "groupId3.id" "groupParts4.gi";
connectAttr "polyTweak9.out" "polyChipOff2.ip";
connectAttr "polySurfaceShape2.wm" "polyChipOff2.mp";
connectAttr "groupParts4.og" "polyTweak9.ip";
connectAttr "polySurfaceShape2.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts5.ig";
connectAttr "groupId4.id" "groupParts5.gi";
connectAttr "polySeparate2.out[1]" "groupParts6.ig";
connectAttr "groupId5.id" "groupParts6.gi";
connectAttr "groupParts6.og" "polyMergeVert1.ip";
connectAttr "polySurfaceShape4.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "deleteComponent18.ig";
connectAttr "polySurfaceShape3.o" "polyUnite1.ip[0]";
connectAttr "polySurfaceShape4.o" "polyUnite1.ip[1]";
connectAttr "polySurfaceShape3.wm" "polyUnite1.im[0]";
connectAttr "polySurfaceShape4.wm" "polyUnite1.im[1]";
connectAttr "polyUnite1.out" "groupParts7.ig";
connectAttr "groupId6.id" "groupParts7.gi";
connectAttr "groupParts7.og" "polyMergeVert2.ip";
connectAttr "polySurface3Shape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polySplitRing8.ip";
connectAttr "polySurface3Shape.wm" "polySplitRing8.mp";
connectAttr "polyTweak10.out" "polyExtrudeFace3.ip";
connectAttr "polySurface3Shape.wm" "polyExtrudeFace3.mp";
connectAttr "polySplitRing8.out" "polyTweak10.ip";
connectAttr "polyExtrudeFace3.out" "polyChipOff3.ip";
connectAttr "polySurface3Shape.wm" "polyChipOff3.mp";
connectAttr "polySurface3Shape.o" "polySeparate3.ip";
connectAttr "walls1.oc" "lambert5SG.ss";
connectAttr "wallsShape.iog" "lambert5SG.dsm" -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "walls1.msg" "materialInfo4.m";
connectAttr "lambert6.oc" "lambert6SG.ss";
connectAttr "panelsShape.iog" "lambert6SG.dsm" -na;
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "lambert6.msg" "materialInfo5.m";
connectAttr "lambert7.oc" "ringSG.ss";
connectAttr "ringSG.msg" "materialInfo6.sg";
connectAttr "lambert7.msg" "materialInfo6.m";
connectAttr "lambert8.oc" "lambert8SG.ss";
connectAttr "ringShape.ciog.cog[2]" "lambert8SG.dsm" -na;
connectAttr "groupId10.msg" "lambert8SG.gn" -na;
connectAttr "lambert8SG.msg" "materialInfo7.sg";
connectAttr "lambert8.msg" "materialInfo7.m";
connectAttr "polyCube1.out" "polySplitRing9.ip";
connectAttr "doorShape.wm" "polySplitRing9.mp";
connectAttr "polyTweak11.out" "polySplitRing10.ip";
connectAttr "doorShape.wm" "polySplitRing10.mp";
connectAttr "polySplitRing9.out" "polyTweak11.ip";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "doorShape.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "doorShape.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "doorShape.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "doorShape.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "doorShape.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "doorShape.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "doorShape.wm" "polySplitRing17.mp";
connectAttr "polySplitRing17.out" "polySplitRing18.ip";
connectAttr "doorShape.wm" "polySplitRing18.mp";
connectAttr "polySplitRing18.out" "polySplitRing19.ip";
connectAttr "doorShape.wm" "polySplitRing19.mp";
connectAttr "polySplitRing19.out" "polySplitRing20.ip";
connectAttr "doorShape.wm" "polySplitRing20.mp";
connectAttr "polySplitRing20.out" "polySplitRing21.ip";
connectAttr "doorShape.wm" "polySplitRing21.mp";
connectAttr "polySplitRing21.out" "polySplitRing22.ip";
connectAttr "doorShape.wm" "polySplitRing22.mp";
connectAttr "polySplitRing22.out" "polySplitRing23.ip";
connectAttr "doorShape.wm" "polySplitRing23.mp";
connectAttr "polySplitRing23.out" "polySplitRing24.ip";
connectAttr "doorShape.wm" "polySplitRing24.mp";
connectAttr "polySplitRing24.out" "polySplitRing25.ip";
connectAttr "doorShape.wm" "polySplitRing25.mp";
connectAttr "polySplitRing25.out" "polySplitRing26.ip";
connectAttr "doorShape.wm" "polySplitRing26.mp";
connectAttr "polyTweak12.out" "polySplitRing27.ip";
connectAttr "doorShape.wm" "polySplitRing27.mp";
connectAttr "polySplitRing26.out" "polyTweak12.ip";
connectAttr "polySplitRing27.out" "polyTweak13.ip";
connectAttr "polyTweak13.out" "deleteComponent19.ig";
connectAttr "deleteComponent19.og" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "deleteComponent21.og" "deleteComponent22.ig";
connectAttr "deleteComponent22.og" "deleteComponent23.ig";
connectAttr "deleteComponent23.og" "deleteComponent24.ig";
connectAttr "polyTweak14.out" "polyMergeVert3.ip";
connectAttr "doorShape.wm" "polyMergeVert3.mp";
connectAttr "deleteComponent24.og" "polyTweak14.ip";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "doorShape.wm" "polyMergeVert4.mp";
connectAttr "polyTweak15.out" "polyMergeVert5.ip";
connectAttr "doorShape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert4.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyMergeVert6.ip";
connectAttr "doorShape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert5.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyMergeVert7.ip";
connectAttr "doorShape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert6.out" "polyTweak17.ip";
connectAttr "polyMergeVert7.out" "deleteComponent25.ig";
connectAttr "deleteComponent25.og" "deleteComponent26.ig";
connectAttr "deleteComponent26.og" "deleteComponent27.ig";
connectAttr "deleteComponent27.og" "deleteComponent28.ig";
connectAttr "doorShape.o" "polyCBoolOp1.ip[0]";
connectAttr "ringShape.o" "polyCBoolOp1.ip[1]";
connectAttr "doorShape.wm" "polyCBoolOp1.im[0]";
connectAttr "ringShape.wm" "polyCBoolOp1.im[1]";
connectAttr "lambert9.oc" "lambert9SG.ss";
connectAttr "door1Shape.iog" "lambert9SG.dsm" -na;
connectAttr "lambert9SG.msg" "materialInfo8.sg";
connectAttr "lambert9.msg" "materialInfo8.m";
connectAttr "polyCBoolOp1.out" "polyNormalPerVertex1.ip";
connectAttr "WallsSG.pa" ":renderPartition.st" -na;
connectAttr "floorSG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "ringSG.pa" ":renderPartition.st" -na;
connectAttr "lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "walls1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert6.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert7.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert8.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert9.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "doorShape.ciog.cog[2]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
// End of room.ma
