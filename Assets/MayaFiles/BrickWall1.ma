//Maya ASCII 2018 scene
//Name: BrickWall1.ma
//Last modified: Wed, Apr 01, 2020 08:18:49 PM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "921DD9CA-4EF9-9AA0-9E05-B09141AD5D79";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.2138113852574302 3.6333593636965449 -7.0642806979914878 ;
	setAttr ".r" -type "double3" -26.138352735562862 -557.3999999992925 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "61822F32-4D20-3E73-4228-47A1C9B01686";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 8.2463743618652199;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0.00049999999999994493 2.3365021029064792e-08 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "2FE50BC2-4FCC-4CA6-67D4-82BE2FB80181";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.38912582248253824 1000.1 -0.025995926827908966 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "DB743C06-44E4-97AA-9CC1-87A03E29A05C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 6.6594156792330041;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "4F0548E9-45B9-2F45-A357-A4876B56D68B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5406BAF4-44EF-B4DE-CE3D-2288173A475F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "658EFF8C-4F01-9575-5B85-27A2E9C3FC19";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0.013655431427317399 0.058887550124463672 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "9F640C18-4604-414B-2B27-42B4CB37FC92";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 3.5869290282512369;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "8FEB7B30-4BA3-2CE2-9CF9-1AAA47D74D70";
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "5FF86550-42D5-5207-18A2-F98D51E9FCF2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998359999154 -1.2097448110580444 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt";
	setAttr ".pt[16]" -type "float3" -1.4901161e-08 1.4901161e-08 0 ;
	setAttr ".pt[17]" -type "float3" 0 1.4901161e-08 0 ;
	setAttr ".pt[18]" -type "float3" -1.4901161e-08 1.4901161e-08 0 ;
	setAttr ".pt[19]" -type "float3" 0 1.4901161e-08 0 ;
	setAttr ".pt[76]" -type "float3" 2.9802322e-08 2.9802322e-08 0 ;
	setAttr ".pt[77]" -type "float3" 1.4901161e-08 2.2351742e-08 0 ;
	setAttr ".pt[78]" -type "float3" 1.4901161e-08 2.2351742e-08 0 ;
	setAttr ".pt[79]" -type "float3" 1.4901161e-08 2.2351742e-08 0 ;
	setAttr ".pt[80]" -type "float3" 1.4901161e-08 2.2351742e-08 0 ;
	setAttr ".pt[81]" -type "float3" 2.9802322e-08 4.4703484e-08 0 ;
	setAttr ".pt[82]" -type "float3" 2.9802322e-08 2.9802322e-08 0 ;
	setAttr ".pt[83]" -type "float3" 2.9802322e-08 4.4703484e-08 0 ;
	setAttr ".pt[84]" -type "float3" 1.4901161e-08 2.2351742e-08 0 ;
	setAttr ".pt[85]" -type "float3" 1.4901161e-08 2.2351742e-08 0 ;
	setAttr ".pt[86]" -type "float3" 1.4901161e-08 2.2351742e-08 0 ;
	setAttr ".pt[87]" -type "float3" 1.4901161e-08 2.2351742e-08 0 ;
	setAttr ".pt[88]" -type "float3" 2.9802322e-08 1.4901161e-08 0 ;
	setAttr ".pt[89]" -type "float3" 2.9802322e-08 1.4901161e-08 0 ;
	setAttr ".pt[90]" -type "float3" 2.9802322e-08 1.4901161e-08 0 ;
	setAttr ".pt[91]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[92]" -type "float3" 0 -2.9802322e-08 0 ;
	setAttr ".pt[93]" -type "float3" 0 -2.9802322e-08 0 ;
	setAttr ".pt[94]" -type "float3" 0 -2.9802322e-08 0 ;
	setAttr ".pt[95]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".pt[96]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".pt[97]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".pt[98]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".pt[99]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".pt[100]" -type "float3" 0 -2.9802322e-08 0 ;
	setAttr ".pt[101]" -type "float3" 0 -2.9802322e-08 0 ;
	setAttr ".pt[102]" -type "float3" 0 -2.9802322e-08 0 ;
	setAttr ".pt[103]" -type "float3" 0 -2.9802322e-08 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Wall_Rough1";
	rename -uid "EE0E3ACE-4A06-E699-6E80-D09FC474F10B";
	setAttr ".r" -type "double3" 180 0 0 ;
createNode mesh -n "polySurfaceShape1" -p "Wall_Rough1";
	rename -uid "A0482603-4A5E-413F-8627-BE94EF12EB90";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49952802062034607 0.37600135803222656 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 136 ".uvst[0].uvsp[0:135]" -type "float2" 0.37523881 0.0022130013
		 0.45809829 0.0022130013 0.54095781 0.0022130013 0.62381721 0.0022130013 0.37523881
		 0.086332679 0.45809829 0.086332679 0.54095781 0.086332679 0.62381721 0.086332679
		 0.37523881 0.16919231 0.45809829 0.16919231 0.54095781 0.16919231 0.62381721 0.16919231
		 0.37524277 0.25170654 0.45809841 0.25170654 0.54095775 0.25172055 0.62381327 0.25172055
		 0.37524337 0.30887204 0.45809889 0.30887169 0.54095715 0.30887169 0.62381268 0.30887204
		 0.37524325 0.44313103 0.45817387 0.44313103 0.54095697 0.44313103 0.81489599 0.22343552
		 0.37523881 0.50063014 0.45809829 0.50063014 0.54095781 0.50063014 0.62381721 0.50063014
		 0.37523881 0.58348972 0.45809829 0.58348972 0.54095781 0.58348972 0.62381721 0.58348972
		 0.37523881 0.66634911 0.45809829 0.66634911 0.54095781 0.66634911 0.62381721 0.66634911
		 0.37523881 0.74920857 0.45809829 0.74920857 0.54095781 0.74920857 0.62381721 0.74920857
		 0.37524194 0.80670762 0.45809856 0.8067075 0.54095751 0.8067075 0.62381405 0.80670762
		 0.37524134 0.94096732 0.45809835 0.94096774 0.54095769 0.94096774 0.62381464 0.94096732
		 0.37523881 0.99778694 0.45809829 0.99778694 0.54095781 0.99778694 0.62381721 0.99778694
		 0.87333965 0.0022144318 0.81489658 0.0022164583 0.68063688 0.0022159815 0.87333965
		 0.086332679 0.81489682 0.086333036 0.68063664 0.086332917 0.87333965 0.16919231 0.81489599
		 0.16919208 0.68063664 0.16919231 0.87333965 0.25142241 0.68063748 0.22343576 0.12666023
		 0.0022130013 0.18415952 0.0022164583 0.31841916 0.0022159815 0.12666023 0.086332679
		 0.18415928 0.086333036 0.3184194 0.086332917 0.12666023 0.16919231 0.18415928 0.16919208
		 0.3184194 0.16919231 0.12666023 0.25205183 0.1841622 0.2234292 0.31841862 0.22343576
		 0.17454708 0.25205183 0.37524325 0.45274341 0.73324376 0.41698629 0.81776136 0.41698629
		 0.89821053 0.41698679 0.82450902 0.25142241 0.824512 0.16919219 0.82450753 0.086333156
		 0.62381458 0.79709709 0.8245073 0.0022157431 0.54095751 0.79709685 0.4580985 0.79709685
		 0.1745488 0.0022157431 0.3752414 0.79709709 0.17454863 0.086333156 0.17454863 0.16919219
		 0.32764232 0.22343624 0.81776094 0.32958308 0.73324364 0.32958308 0.64872634 0.32958308
		 0.67141366 0.22343624 0.67141527 0.16919243 0.67141527 0.086332917 0.62381506 0.95018882
		 0.67141545 0.0022150278 0.54095769 0.95018899 0.45809835 0.95018899 0.32764065 0.0022150278
		 0.37524095 0.95018882 0.32764083 0.086332917 0.32764083 0.16919243 0.45809898 0.4527427
		 0.17454708 0.2234292 0.54095703 0.4527427 0.824512 0.22343552 0.45809883 0.29964912
		 0.32764232 0.2517066 0.54095721 0.29964912 0.64872634 0.35872048 0.64872676 0.38791534
		 0.81776148 0.38778001 0.89821053 0.38778001 0.62381279 0.45274341 0.73324448 0.38784894
		 0.54095703 0.4527427 0.37524325 0.45274341 0.64872593 0.41698346 0.45809898 0.4527427
		 0.73324364 0.35872048 0.67141366 0.25172055 0.62381327 0.29964828 0.81776094 0.35872048
		 0.54095721 0.29964912 0.89821029 0.35872048 0.37524277 0.29964828 0.89821029 0.32958308
		 0.45809883 0.29964912 0.6238122 0.44313046 0.62381279 0.45274341 0.62381327 0.29964828
		 0.37524277 0.29964828;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[15]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".pt[71]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr -s 88 ".vt[0:87]"  -1.5 -1.5 1.5 -0.5 -1.5 1.5 0.5 -1.5 1.5
		 1.5 -1.5 1.5 -1.5 -0.5 1.5 -0.5 -0.5 1.5 0.5 -0.5 1.5 1.5 -0.5 1.5 -1.5 0.5 1.5 -0.5 0.5 1.5
		 0.5 0.5 1.5 1.5 0.5 1.5 -1.5 1.5 1.5 -0.5 1.5 1.5 0.5 1.5 1.5 1.5 1.5 1.5 -1.5 1.15467167 0.81427163
		 -0.5 1.15467167 0.81427163 0.5 1.15467167 0.81427163 1.5 1.15467167 0.81427163 -1.5 1.15467167 -0.806072
		 -0.5 1.15467167 -0.806072 0.5 1.15467167 -0.806072 1.5 1.15467167 -0.806072 -1.5 1.5 -1.5
		 -0.5 1.5 -1.5 0.5 1.5 -1.5 1.5 1.5 -1.5 -1.5 0.5 -1.5 -0.5 0.5 -1.5 0.5 0.5 -1.5
		 1.5 0.5 -1.5 -1.5 -0.5 -1.5 -0.5 -0.5 -1.5 0.5 -0.5 -1.5 1.5 -0.5 -1.5 -1.5 -1.5 -1.5
		 -0.5 -1.5 -1.5 0.5 -1.5 -1.5 1.5 -1.5 -1.5 -1.5 -1.5 -0.80607206 -0.5 -1.5 -0.80607206
		 0.5 -1.5 -0.80607206 1.5 -1.5 -0.80607206 -1.5 -1.5 0.81427163 -0.5 -1.5 0.81427163
		 0.5 -1.5 0.81427163 1.5 -1.5 0.81427163 1.5 -0.5 -0.80607206 1.5 -0.5 0.81427163
		 1.5 0.5 -0.80607206 1.5 0.5 0.81427163 -1.5 -0.5 -0.80607206 -1.5 -0.5 0.81427163
		 -1.5 0.5 -0.80607206 -1.5 0.5 0.81427163 -1.5 1.49982977 -0.92205858 -0.5 1.49982977 -0.92205858
		 0.5 1.49982977 -0.92205858 1.5 1.49982977 -0.92205858 1.5 0.5 -0.92205864 1.5 -0.5 -0.92205864
		 1.5 -1.5 -0.92205864 0.5 -1.5 -0.92205864 -0.5 -1.5 -0.92205864 -1.5 -1.5 -0.92205864
		 -1.5 -0.5 -0.92205864 -1.5 0.5 -0.92205864 -1.5 1.15467179 0.92556059 -0.5 1.15467179 0.92556059
		 0.5 1.15467179 0.92556059 1.5 1.15467179 0.92556059 1.5 0.5 0.92556053 1.5 -0.5 0.92556053
		 1.5 -1.5 0.92556053 0.5 -1.5 0.92556053 -0.5 -1.5 0.92556053 -1.5 -1.5 0.92556053
		 -1.5 -0.5 0.92556053 -1.5 0.5 0.92556053 -0.5 1.153566 -0.92205858 -1.5 1.15356565 -0.92205858
		 0.5 1.153566 -0.92205858 1.5 1.15356553 -0.92205858 -0.5 1.49942291 0.92556059 -1.5 1.49942291 0.92556059
		 0.5 1.49942291 0.92556059 1.5 1.49942291 0.92556059;
	setAttr -s 174 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 4 5 1 5 6 1 6 7 1 8 9 1 9 10 1 10 11 1
		 12 13 0 13 14 0 14 15 0 16 17 1 17 18 1 18 19 1 20 21 0 21 22 0 22 23 0 24 25 0 25 26 0
		 26 27 0 28 29 1 29 30 1 30 31 1 32 33 1 33 34 1 34 35 1 36 37 0 37 38 0 38 39 0 40 41 1
		 41 42 1 42 43 1 44 45 1 45 46 1 46 47 1 0 4 0 1 5 1 2 6 1 3 7 0 4 8 0 5 9 1 6 10 1
		 7 11 0 8 12 0 9 13 1 10 14 1 11 15 0 12 68 0 15 71 0 16 20 0 17 21 1 18 22 1 19 23 0
		 24 28 0 25 29 1 26 30 1 27 31 0 28 32 0 29 33 1 30 34 1 31 35 0 32 36 0 33 37 1 34 38 1
		 35 39 0 36 65 0 37 64 1 38 63 1 39 62 0 40 44 0 41 45 1 42 46 1 43 47 0 44 77 0 45 76 1
		 46 75 1 47 74 0 35 61 1 48 49 1 49 73 1 31 60 1 50 51 1 51 72 1 43 48 1 47 49 1 48 50 1
		 49 51 1 50 23 1 51 19 1 32 66 1 52 53 1 53 78 1 28 67 1 54 55 1 55 79 1 40 52 1 44 53 1
		 52 54 1 53 55 1 54 20 1 55 16 1 56 24 0 57 25 1 58 26 1 59 27 0 60 50 1 61 48 1 62 43 0
		 63 42 1 64 41 1 65 40 0 66 52 1 67 54 1 56 57 0 57 58 0 58 59 0 60 61 1 61 62 1 62 63 1
		 63 64 1 64 65 1 65 66 1 66 67 1 67 81 1 68 16 0 69 17 1 70 18 1 71 19 0 72 11 1 73 7 1
		 74 3 0 75 2 1 76 1 1 77 0 0 78 4 1 79 8 1 68 69 0 69 70 0 70 71 0 71 72 1 72 73 1
		 73 74 1 74 75 1 75 76 1 76 77 1 77 78 1 78 79 1 79 68 1 57 80 0 21 80 1 56 81 0 81 80 0
		 20 81 0 58 82 0 22 82 1 80 82 0 59 83 0 23 83 0 82 83 0 69 84 0 13 84 1 68 85 0 85 84 0
		 12 85 0 70 86 0;
	setAttr ".ed[166:173]" 14 86 1 84 86 0 71 87 0 15 87 0 86 87 0 81 24 1 83 60 1
		 83 27 1;
	setAttr -s 88 -ch 348 ".fc[0:87]" -type "polyFaces" 
		f 4 0 37 -4 -37
		mu 0 4 0 1 5 4
		f 4 1 38 -5 -38
		mu 0 4 1 2 6 5
		f 4 2 39 -6 -39
		mu 0 4 2 3 7 6
		f 4 3 41 -7 -41
		mu 0 4 4 5 9 8
		f 4 4 42 -8 -42
		mu 0 4 5 6 10 9
		f 4 5 43 -9 -43
		mu 0 4 6 7 11 10
		f 4 6 45 -10 -45
		mu 0 4 8 9 13 12
		f 4 7 46 -11 -46
		mu 0 4 9 10 14 13
		f 4 8 47 -12 -47
		mu 0 4 10 11 15 14
		f 4 137 126 -13 -126
		mu 0 4 129 131 17 16
		f 4 138 127 -14 -127
		mu 0 4 131 127 18 17
		f 4 139 128 -15 -128
		mu 0 4 127 125 19 18
		f 4 12 51 -16 -51
		mu 0 4 16 17 21 20
		f 4 13 52 -17 -52
		mu 0 4 17 18 22 21
		f 4 14 53 -18 -53
		mu 0 4 18 19 132 22
		f 4 114 103 -19 -103
		mu 0 4 76 122 25 24
		f 4 115 104 -20 -104
		mu 0 4 122 119 26 25
		f 4 116 105 -21 -105
		mu 0 4 119 117 27 26
		f 4 18 55 -22 -55
		mu 0 4 24 25 29 28
		f 4 19 56 -23 -56
		mu 0 4 25 26 30 29
		f 4 20 57 -24 -57
		mu 0 4 26 27 31 30
		f 4 21 59 -25 -59
		mu 0 4 28 29 33 32
		f 4 22 60 -26 -60
		mu 0 4 29 30 34 33
		f 4 23 61 -27 -61
		mu 0 4 30 31 35 34
		f 4 24 63 -28 -63
		mu 0 4 32 33 37 36
		f 4 25 64 -29 -64
		mu 0 4 33 34 38 37
		f 4 26 65 -30 -65
		mu 0 4 34 35 39 38
		f 4 27 67 121 -67
		mu 0 4 36 37 86 88
		f 4 28 68 120 -68
		mu 0 4 37 38 85 86
		f 4 29 69 119 -69
		mu 0 4 38 39 83 85
		f 4 30 71 -34 -71
		mu 0 4 40 41 45 44
		f 4 31 72 -35 -72
		mu 0 4 41 42 46 45
		f 4 32 73 -36 -73
		mu 0 4 42 43 47 46
		f 4 33 75 145 -75
		mu 0 4 44 45 101 103
		f 4 34 76 144 -76
		mu 0 4 45 46 100 101
		f 4 35 77 143 -77
		mu 0 4 46 47 98 100
		f 4 118 -70 -66 78
		mu 0 4 82 84 52 55
		f 4 -74 84 79 -86
		mu 0 4 54 53 56 57
		f 4 142 -78 85 80
		mu 0 4 97 99 54 57
		f 4 117 -79 -62 81
		mu 0 4 81 82 55 58
		f 4 -80 86 82 -88
		mu 0 4 57 56 59 60
		f 4 141 -81 87 83
		mu 0 4 96 97 57 60
		f 3 157 173 -106
		mu 0 3 80 109 61
		f 4 -83 88 -54 -90
		mu 0 4 60 59 23 62
		f 4 140 -84 89 -129
		mu 0 4 95 96 60 62
		f 4 66 122 -91 62
		mu 0 4 63 87 89 66
		f 4 70 97 -92 -97
		mu 0 4 64 65 68 67
		f 4 74 146 -93 -98
		mu 0 4 65 102 104 68
		f 4 90 123 -94 58
		mu 0 4 66 89 90 69
		f 4 91 99 -95 -99
		mu 0 4 67 68 71 70
		f 4 92 147 -96 -100
		mu 0 4 68 104 105 71
		f 4 93 124 171 54
		mu 0 4 69 90 107 72
		f 4 94 101 50 -101
		mu 0 4 70 71 74 73
		f 4 95 148 125 -102
		mu 0 4 71 105 91 74
		f 4 15 150 -153 -154
		mu 0 4 20 21 106 120
		f 4 16 155 -157 -151
		mu 0 4 21 22 108 106
		f 4 17 158 -160 -156
		mu 0 4 22 132 133 108
		f 4 -108 -118 106 -87
		mu 0 4 56 82 81 59
		f 4 -109 -119 107 -85
		mu 0 4 53 84 82 56
		f 4 -120 108 -33 -110
		mu 0 4 85 83 43 42
		f 4 -121 109 -32 -111
		mu 0 4 86 85 42 41
		f 4 -122 110 -31 -112
		mu 0 4 88 86 41 40
		f 4 -123 111 96 -113
		mu 0 4 89 87 64 67
		f 4 -124 112 98 -114
		mu 0 4 90 89 67 70
		f 4 -125 113 100 153
		mu 0 4 107 90 70 73
		f 4 9 161 -164 -165
		mu 0 4 12 13 110 135
		f 4 10 166 -168 -162
		mu 0 4 13 14 112 110
		f 4 11 169 -171 -167
		mu 0 4 14 15 134 112
		f 4 -130 -141 -50 -48
		mu 0 4 11 96 95 15
		f 4 -131 -142 129 -44
		mu 0 4 7 97 96 11
		f 4 -132 -143 130 -40
		mu 0 4 3 99 97 7
		f 4 -144 131 -3 -133
		mu 0 4 100 98 51 50
		f 4 -145 132 -2 -134
		mu 0 4 101 100 50 49
		f 4 -146 133 -1 -135
		mu 0 4 103 101 49 48
		f 4 -147 134 36 -136
		mu 0 4 104 102 0 4
		f 4 -148 135 40 -137
		mu 0 4 105 104 4 8
		f 4 -149 136 44 48
		mu 0 4 91 105 8 12
		f 4 -115 151 152 -150
		mu 0 4 77 121 114 118
		f 4 -116 149 156 -155
		mu 0 4 78 77 118 115
		f 4 -117 154 159 -158
		mu 0 4 79 78 115 116
		f 4 -138 162 163 -161
		mu 0 4 92 130 128 126
		f 3 -49 164 -163
		mu 0 3 91 12 111
		f 4 -139 160 167 -166
		mu 0 4 93 92 126 123
		f 3 49 168 -170
		mu 0 3 15 95 124
		f 4 -140 165 170 -169
		mu 0 4 94 93 123 113
		f 3 -172 -152 102
		mu 0 3 72 107 75
		f 4 -159 -89 -107 -173
		mu 0 4 109 23 59 81
		f 4 -174 172 -82 -58
		mu 0 4 61 109 81 58;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Wall_Rough2";
	rename -uid "EF60A2B7-4574-9CF6-AF99-A69EBC0A4B6D";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".rp" -type "double3" 0 0.00049999999999983391 1.1102230246251565e-16 ;
	setAttr ".sp" -type "double3" 0 0.00049999999999983391 1.1102230246251565e-16 ;
createNode mesh -n "Wall_Rough2Shape" -p "Wall_Rough2";
	rename -uid "D7D57D09-4376-E32E-C8D7-AF878D24FAA4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 540 ".pt";
	setAttr ".pt[536]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[537]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[538]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[539]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[540]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[541]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[542]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[543]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[544]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[545]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[546]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[547]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[548]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[549]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[550]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[551]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[552]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[553]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[554]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[555]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[556]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[557]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[558]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[559]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[560]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[561]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[562]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[563]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[564]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[565]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[566]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[567]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[568]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[569]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[570]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[571]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[572]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[573]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[574]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[575]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[576]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[577]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[578]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[579]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[580]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[581]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[582]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[583]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[584]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[585]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[586]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[587]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[588]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[589]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[590]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[591]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[592]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[593]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[594]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[595]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[596]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[597]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[598]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[599]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[600]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[601]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[602]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[603]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[604]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[605]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[606]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[607]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[608]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[609]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[610]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[611]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[612]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[613]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[614]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[615]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[616]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[617]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[618]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[619]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[620]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[621]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[622]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[623]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[624]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[625]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[626]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[627]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[628]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[629]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[630]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[631]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[632]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[633]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[634]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[635]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[636]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[637]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[638]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[639]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[640]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[641]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[642]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[643]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[644]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[645]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[646]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[647]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[648]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[649]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[650]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[651]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[652]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[653]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[654]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[655]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[656]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[657]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[658]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[659]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[660]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[661]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[662]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[663]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[664]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[665]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[666]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[667]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[668]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[669]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[670]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[671]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[672]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[673]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[674]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[675]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[676]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[677]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[678]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[679]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[680]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[681]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[682]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[683]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[684]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[685]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[686]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[687]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[688]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[689]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[690]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[691]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[692]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[693]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[694]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[695]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[696]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[697]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[698]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[699]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[700]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[701]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[702]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[703]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[704]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[705]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[706]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[707]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[708]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[709]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[710]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[711]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[712]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[713]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[714]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[715]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[716]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[717]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[718]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[719]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[720]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[721]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[722]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[723]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[724]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[725]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[726]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[727]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[728]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[729]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[730]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[731]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[732]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[733]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[734]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[735]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[736]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[737]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[738]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[739]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[740]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[741]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[742]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[743]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[744]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[745]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[746]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[747]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[748]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[749]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[750]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[751]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[752]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[753]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[754]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[755]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[756]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[757]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[758]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[759]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[760]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[761]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[762]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[763]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[764]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[765]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[766]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[767]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[768]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[769]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[770]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[771]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[772]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[773]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[774]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[775]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[776]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[777]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[778]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[779]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[780]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[781]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[782]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[783]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[784]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[785]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[786]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[787]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[788]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[789]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[790]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[791]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[792]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[793]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[794]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[795]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[796]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[797]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[798]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[799]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[800]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[801]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[802]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[803]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[804]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[805]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[806]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[807]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[808]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[809]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[810]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[811]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[812]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[813]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[814]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[815]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[816]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[817]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[818]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[819]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[820]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[821]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[822]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[823]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[824]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[825]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[826]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[827]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[828]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[829]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[830]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[831]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[832]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[833]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[834]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[835]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[836]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[837]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[838]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[839]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[840]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[841]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[842]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[843]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[844]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[845]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[846]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[847]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[848]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[849]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[850]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[851]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[852]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[853]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[854]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[855]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[856]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[857]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[858]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[859]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[860]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[861]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[862]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[863]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[864]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[865]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[866]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[867]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[868]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[869]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[870]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[871]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[872]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[873]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[874]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[875]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[876]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[877]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[878]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[879]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[880]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[881]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[882]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[883]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[884]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[885]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[886]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[887]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[888]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[889]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[890]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[891]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[892]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[893]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[894]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[895]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[896]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[897]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[898]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[899]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[900]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[901]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[902]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[903]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[904]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[905]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[906]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[907]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[908]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[909]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[910]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[911]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[912]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[913]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[914]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[915]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[916]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[917]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[918]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[919]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[920]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[921]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[922]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[923]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[924]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[925]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[926]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[927]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[928]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[929]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[930]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[931]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[932]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[933]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[934]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[935]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[936]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[937]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[938]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[939]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[940]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[941]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[942]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[943]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[944]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[945]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[946]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[947]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[948]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[949]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[950]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[951]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[952]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[953]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[954]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[955]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[956]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[957]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[958]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[959]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[960]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[961]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[962]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[963]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[964]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[965]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[966]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[967]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[968]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[969]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[970]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[971]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[972]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[973]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[974]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[975]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[976]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[977]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[978]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[979]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[980]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[981]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[982]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[983]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[984]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[985]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[986]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[987]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[988]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[989]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[990]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[991]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[992]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[993]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[994]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[995]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[996]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[997]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[998]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[999]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1000]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1001]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1002]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1003]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1004]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1005]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1006]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1007]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1008]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1009]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1010]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1011]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1012]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1013]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1014]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1015]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1016]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1017]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1018]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1019]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1020]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1021]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1022]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1023]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1024]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1025]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1026]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1027]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1028]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1029]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1030]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1031]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1032]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1033]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1034]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1035]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1036]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1037]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1038]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1039]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1040]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1041]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1042]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1043]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1044]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1045]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1046]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1047]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1048]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1049]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1050]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1051]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1052]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1053]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1054]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1055]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1056]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1057]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1058]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1059]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1060]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1061]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1062]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1063]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1064]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1065]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1066]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1067]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1068]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1069]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1070]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1071]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape2" -p "Wall_Rough2";
	rename -uid "2D9C6011-4477-78A8-2ACD-1D8B7D6E392D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:957]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1072 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.17508554 0 0.17508554 0 0.32508558
		 0 0.32508558 0 0.50841892 0 0.50841892 0 0.65841889 0 0.65841889 0 0.84175229 0 0.84175229
		 0 1 0 1 0 0.17508554 0.22857612 0.17508554 0.1914798 0.32508558 0.1914798 0.32508558
		 0.22857612 0.50841892 0.22857612 0.50841892 0.1914798 0.65841889 0.1914798 0.65841889
		 0.22857612 0.84175229 0.22857612 0.84175229 0.1914798 1 0.1914798 1 0.22857612 0.17508554
		 0.59000862 0.17508554 0.57214046 0.32508558 0.57214046 0.32508558 0.59000862 0.32508558
		 0.60787678 0.17508554 0.60787678 0.50841892 0.59000862 0.50841892 0.57214046 0.65841889
		 0.57214046 0.65841889 0.59000862 0.65841889 0.60787678 0.50841892 0.60787678 0.84175229
		 0.59000862 0.84175229 0.57214046 1 0.57214046 1 0.59000862 1 0.60787678 0.84175229
		 0.60787678 0.17995083 1 0.17995083 0.8073529 0.32022029 0.8073529 0.32022029 1 0.51328421
		 1 0.51328421 0.8073529 0.65355372 0.8073529 0.65355372 1 0.84661758 1 0.84661758
		 0.8073529 1 0.8073529 1 1 0.17508554 1 0.17508554 1 0.32508558 1 0.32508558 1 0.50841892
		 1 0.50841892 1 0.65841889 1 0.65841889 1 0.84175229 1 0.84175229 1 1 1 1 0.59000862
		 1 0.57214046 1 0.57214046 1 0.6078769 1 0.6078769 1 0.1914798 1 0.1914798 1 0.22857612
		 1 0.22857612 1 0.8073529 0 0.6078769 0 0.57214046 0 0.57214046 0 0.59000862 0 0.6078769
		 0 0.22857612 0 0.1914798 0 0.1914798 0 0.22857612 0 1 0 0.8073529 0 0.8073529 0 1
		 0 0.57214046 0 0.59000862 0 0.60787678 0 0.1914798 0 0.22857612 0.17508554 0.8073529
		 0.17508554 0.76869071 0.32508558 0.76869071 0.32508558 0.8073529 0.50841892 0.8073529
		 0.50841892 0.76869071 0.65841889 0.76869071 0.65841889 0.8073529 0.84175229 0.8073529
		 0.84175229 0.76869071 1 0.76869071 0 0.76869071 0 0.76869071 0.17994583 0.1914798
		 0.17994583 0 0.3202253 0 0.3202253 0.1914798 0.5132792 0.1914798 0.5132792 0 0.65355873
		 0 0.65355873 0.1914798 0.84661245 0.1914798 0.84661245 0 1 0 1 0.1914798 0 0 0 0
		 0 0 0.32508558 0.8073529 0.17508554 0.8073529 0.65841889 0.8073529 0.50841892 0.8073529
		 0.84175229 0.8073529 0 0.1914798 0.84175229 0.1914798 0 0.8073529 1 0.76869071 1
		 0.8073529 0.49175227 1 0.49175227 1 0.50841892 1 0.49175227 0.8073529 0.50841892
		 0.8073529 0.50841892 0.8073529 0.49175227 0.8073529 0.49175227 0.8073529 0.49175227
		 0.76869071 0.49175227 0.59000862 0.49175227 0.57214046 0.49175227 0.60787678 0.49175227
		 0.22857612 0.49175227 0.1914798 0.50841892 0.1914798 0.50841892 0.1914798 0.49175227
		 0.1914798 0.49175227 0.1914798 0.49175227 0 0.50841892 0 0.49175227 0 0.49175227
		 0 0.15841889 1 0.15841889 1 0.17508554 1 0.15841889 0.8073529 0.17508554 0.8073529
		 0.17508554 0.8073529 0.15841889 0.8073529 0.15841889 0.8073529 0.15841889 0.76869071
		 0.15841889 0.59000862 0.15841889 0.57214046 0.15841889 0.60787678 0.15841889 0.22857612
		 0.15841889 0.1914798 0.17508554 0.1914798 0.17508554 0.1914798 0.15841889 0.1914798
		 0.15841889 0.1914798 0.15841889 0 0.17508554 0 0.15841889 0 0.15841889 0 0.82508564
		 1 0.82508564 1 0.84175229 1 0.82508564 0.8073529 0.84175229 0.8073529 0.84175229
		 0.8073529 0.82508564 0.8073529 0.82508564 0.8073529 0.82508564 0.76869071 0.82508564
		 0.59000862 0.82508564 0.57214046 0.82508564 0.60787678 0.82508564 0.22857612 0.82508564
		 0.1914798 0.84175229 0.1914798 0.84175229 0.1914798 0.82508564 0.1914798 0.82508564
		 0.1914798 0.82508564 0 0.84175229 0 0.82508564 0 0.82508564 0 0.34175229 0 0.34175229
		 0 0.32508558 0 0.34175229 0 0.32508558 0.1914798 0.34175229 0.1914798 0.34175229
		 0.1914798 0.32508558 0.1914798 0.34175229 0.1914798 0.34175229 0.22857612 0.34175229
		 0.57214046 0.34175229 0.59000862 0.34175229 0.60787678 0.34175229 0.76869071 0.34175229
		 0.8073529 0.34175229 0.8073529 0.32508558 0.8073529 0.32508558 0.8073529 0.34175229
		 0.8073529 0.32508558 1 0.34175229 1 0.34175229 1 0.15355366 1 0.15841889 1 0.15355366
		 0.8073529 0.15841889 0.8073529 0.15355867 0 0.15355867 0.1914798 0.15841889 0 0.34661752
		 1 0.34661752 0.8073529 0.48688698 0.8073529 0.48688698 1 0.49175227 0.8073529 0.34175229
		 0.8073529 0.34661251 0.1914798 0.34661251 0 0.48689198 0 0.48689198 0.1914798 0.49175227
		 0 0.34175229 0 0.67508554 0 0.67508554 0 0.65841889 0 0.67508554 0 0.65841889 0.1914798
		 0.67508554 0.1914798 0.67508554 0.1914798 0.65841889 0.1914798 0.67508554 0.1914798
		 0.67508554 0.22857612 0.67508554 0.57214046 0.67508554 0.59000862;
	setAttr ".uvst[0].uvsp[250:499]" 0.67508554 0.60787678 0.67508554 0.76869071
		 0.67508554 0.8073529 0.67508554 0.8073529 0.65841889 0.8073529 0.65841889 0.8073529
		 0.67508554 0.8073529 0.65841889 1 0.67508554 1 0.67508554 1 0.67995083 1 0.67995083
		 0.8073529 0.82022035 0.8073529 0.82022035 1 0.82508564 0.8073529 0.67508554 0.8073529
		 0.67994583 0.1914798 0.67994583 0 0.82022536 0 0.82022536 0.1914798 0.82508564 0
		 0.67508554 0 0.49175227 1 0.49175227 1 0.49175227 0.8073529 0.50841892 0.8073529
		 0.50841892 1 0.49175227 0.1914798 0.49175227 0.1914798 0.49175227 0 0.50841892 0
		 0.50841892 0.1914798 0.50841892 0 0.15841889 1 0.15841889 0.8073529 0.17508554 0.8073529
		 0.17508554 1 0.15841889 0.1914798 0.15841889 0.1914798 0.15841889 0 0.17508554 0
		 0.17508554 0.1914798 0.17508554 0 0.82508564 1 0.82508564 1 0.82508564 0.8073529
		 0.84175229 0.8073529 0.84175229 1 0.82508564 0.1914798 0.82508564 0.1914798 0.82508564
		 0 0.84175229 0 0.84175229 0.1914798 0.84175229 0 0.34175229 0 0.32508558 0.1914798
		 0.32508558 0 0.34175229 0.1914798 0.32508558 0.1914798 0.34175229 0.8073529 0.32508558
		 1 0.32508558 0.8073529 0.34175229 1 0.67508554 0 0.65841889 0.1914798 0.65841889
		 0 0.67508554 0.1914798 0.65841889 0.1914798 0.67508554 0.8073529 0.65841889 1 0.65841889
		 0.8073529 0.67508554 1 0.15841889 0.42740798 0.17508554 0.42740798 0.49175227 0.42740798
		 0.50841892 0.42740798 0.82508564 0.42740798 0.84175229 0.42740798 1 0.42740798 1
		 0.42740798 0 0.42740798 0 0.42740798 0 0.42740798 0.15841889 0.41132659 0 0.41132659
		 0 0.39305151 0.15841889 0.39305156 0.17508554 0.41132659 0.17508554 0.39305156 0.32508558
		 0.41132659 0.32508558 0.42740798 0.32508558 0.39305151 0.34175229 0.41132659 0.34175229
		 0.42740798 0.34175229 0.39305151 0.49175227 0.41132659 0.49175227 0.39305156 0.50841892
		 0.41132659 0.50841892 0.39305156 0.65841889 0.41132659 0.65841889 0.42740798 0.65841889
		 0.39305151 0.67508554 0.41132659 0.67508554 0.42740798 0.67508554 0.39305151 0.82508564
		 0.41132659 0.82508564 0.39305156 0.84175229 0.41132659 0.84175229 0.39305156 1 0.41132659
		 1 0.39305151 1 0.41132659 1 0.39305156 1 0.39305156 1 0.42740798 0 0.41132659 0 0.39305156
		 0 0.39305156 0.51186073 0.56869853 0.50841892 0.57214046 0.50841892 0.42740798 0.51186073
		 0.43084985 0.65841889 0.56869853 0.65841889 0.57214046 0.67508554 0.56869853 0.67508554
		 0.57214046 0.65841889 0.42740798 0.65841889 0.43084979 0.67508554 0.42740798 0.67508554
		 0.43084979 0.82164371 0.56869853 0.82508564 0.57214046 0.82508564 0.42740798 0.82164371
		 0.43084985 0.84175229 0.60787678 0.84175229 0.61131871 0.82508564 0.61131871 0.82508564
		 0.60787678 1 0.60787678 0.99655819 0.61131871 1 0.76869071 0.99655819 0.76524878
		 0.84175229 0.76869071 0.84175229 0.76524878 0.82508564 0.76869071 0.82508564 0.76524878
		 0.67852747 0.61131871 0.67508554 0.60787678 0.67508554 0.76869071 0.67852747 0.76524878
		 0.50841892 0.60787678 0.50841892 0.61131871 0.49175227 0.61131871 0.49175227 0.60787678
		 0.65841889 0.60787678 0.65497708 0.61131871 0.65841889 0.76869071 0.65497708 0.76524878
		 0.50841892 0.76869071 0.50841892 0.76524878 0.49175227 0.76869071 0.49175227 0.76524878
		 0.3451941 0.61131871 0.34175229 0.60787678 0.34175229 0.76869071 0.3451941 0.76524878
		 0.17508554 0.60787678 0.17508554 0.61131871 0.15841889 0.61131871 0.15841889 0.60787678
		 0.32508558 0.60787678 0.32164371 0.61131871 0.32508558 0.76869071 0.32164371 0.76524878
		 0.17508554 0.76869071 0.17508554 0.76524878 0.15841889 0.76869071 0.15841889 0.76524878
		 0.0034418702 0.61131871 0 0.60787678 0 0.76869071 0.0034418106 0.76524878 0 0.42740798
		 0.0034418702 0.43084979 0.0034418106 0.56869853 0 0.57214046 0.15841889 0.42740798
		 0.15497708 0.43084985 0.15841889 0.57214046 0.15497708 0.56869853 0.17852741 0.56869853
		 0.17508554 0.57214046 0.17508554 0.42740798 0.17852741 0.43084985 0.32508558 0.56869853
		 0.32508558 0.57214046 0.34175229 0.56869853 0.34175229 0.57214046 0.32508558 0.42740798
		 0.32508558 0.43084979 0.34175229 0.42740798 0.34175229 0.43084979 0.4883104 0.56869853
		 0.49175227 0.57214046 0.49175227 0.42740798 0.4883104 0.43084985 0.8451941 0.56869853
		 0.84175229 0.57214046 0.84175229 0.42740798 0.8451941 0.43084985 0.99655819 0.56869853
		 1 0.57214046 0.99655819 0.43084979 1 0.42740798 0 0.22857612 0.0034418106 0.23201799
		 0.0034418106 0.38960969 0 0.39305151 0.15841889 0.22857612 0.15841889 0.23201799
		 0.17508554 0.22857612 0.17508554 0.23201799 0.15841889 0.39305156 0.15841889 0.38960969
		 0.17508554 0.38960969 0.17508554 0.39305156 0.32164371 0.38960969 0.32508558 0.39305151
		 0.32508558 0.22857612 0.32164371 0.23201799 0.34175229 0.22857612 0.3451941 0.23201799
		 0.3451941 0.38960969 0.34175229 0.39305151 0.49175227 0.22857612 0.49175227 0.23201799
		 0.50841892 0.22857612 0.50841892 0.23201799 0.49175227 0.39305156 0.49175227 0.38960969
		 0.50841892 0.38960969 0.50841892 0.39305156 0.65497708 0.38960969 0.65841889 0.39305151
		 0.65841889 0.22857612 0.65497708 0.23201799 0.67508554 0.22857612 0.67852747 0.23201799
		 0.67852747 0.38960969 0.67508554 0.39305151;
	setAttr ".uvst[0].uvsp[500:749]" 0.82508564 0.22857612 0.82508564 0.23201799
		 0.84175229 0.22857612 0.84175229 0.23201799 0.82508564 0.39305156 0.82508564 0.38960969
		 0.84175229 0.38960969 0.84175229 0.39305156 0.99655819 0.38960969 1 0.39305151 1
		 0.22857612 0.99655819 0.23201799 0.17508554 0.1914798 0.32508558 0 0.67508554 0.1914798
		 0.65841889 0 0.50841892 0.1914798 0.34175229 0.1914798 0.34175229 1 0.67508554 1
		 0 0.76869071 0 0.8073529 0 1 0.15841889 1 0.17508554 1 0.32508558 1 0.34175229 1
		 0.49175227 1 0.50841892 1 0.65841889 1 0.67508554 1 0.82508564 1 0.84175229 1 1 1
		 1 0.8073529 1 0.76869071 0.17508554 1 0.17508554 1 0.32508558 1 0.32508558 1 0.50841892
		 1 0.50841892 1 0.65841889 1 0.65841889 1 0.84175229 1 0.84175229 1 1 1 1 1 0.17508554
		 0.77142394 0.17508554 0.8085202 0.32508558 0.8085202 0.32508558 0.77142394 0.50841892
		 0.77142394 0.50841892 0.8085202 0.65841889 0.8085202 0.65841889 0.77142394 0.84175229
		 0.77142394 0.84175229 0.8085202 1 0.8085202 1 0.77142394 0.17508554 0.40999138 0.17508554
		 0.4278596 0.32508558 0.4278596 0.32508558 0.40999138 0.32508558 0.39212322 0.17508554
		 0.39212316 0.50841892 0.40999138 0.50841892 0.4278596 0.65841889 0.4278596 0.65841889
		 0.40999138 0.65841889 0.39212322 0.50841892 0.39212316 0.84175229 0.40999138 0.84175229
		 0.4278596 1 0.4278596 1 0.40999138 1 0.39212322 0.84175229 0.39212316 0.17995083
		 0 0.17995083 0.19264716 0.32022029 0.19264716 0.32022029 0 0.51328421 0 0.51328421
		 0.19264716 0.65355372 0.19264716 0.65355372 0 0.84661758 0 0.84661758 0.19264716
		 1 0.19264716 1 0 0.17508554 0 0.17508554 0 0.32508558 0 0.32508558 0 0.50841892 0
		 0.50841892 0 0.65841889 0 0.65841889 0 0.84175229 0 0.84175229 0 1 0 1 0.40999138
		 1 0.4278596 1 0.4278596 1 0.39212316 1 0.39212316 1 0.8085202 1 0.8085202 1 0.77142394
		 1 0.77142394 1 0.19264716 0 0.39212316 0 0.4278596 0 0.4278596 0 0.40999138 0 0.39212316
		 0 0.77142394 0 0.8085202 0 0.8085202 0 0.77142394 0 0 0 0.1926471 0 0.19264716 0
		 0 0 0.4278596 0 0.40999138 0 0.39212322 0 0.8085202 0 0.77142394 0.17508554 0.19264716
		 0.17508554 0.23130935 0.32508558 0.23130935 0.32508558 0.19264716 0.50841892 0.19264716
		 0.50841892 0.23130935 0.65841889 0.23130935 0.65841889 0.19264716 0.84175229 0.19264716
		 0.84175229 0.23130935 1 0.23130935 0 0.23130929 0 0.23130935 0.17994583 0.8085202
		 0.17994583 1 0.3202253 1 0.3202253 0.8085202 0.5132792 0.8085202 0.5132792 1 0.65355873
		 1 0.65355873 0.8085202 0.84661245 0.8085202 0.84661245 1 1 1 1 0.8085202 0 1 0 1
		 0 1 0.32508558 0.19264716 0.17508554 0.19264716 0.65841889 0.19264716 0.50841892
		 0.19264716 0.84175229 0.19264716 0 0.8085202 0.84175229 0.8085202 0 0.19264716 1
		 0.23130929 1 0.1926471 0.49175227 0 0.49175227 0 0.50841892 0 0.49175227 0.19264716
		 0.50841892 0.19264716 0.50841892 0.19264716 0.49175227 0.19264716 0.49175227 0.19264716
		 0.49175227 0.23130935 0.49175227 0.40999138 0.49175227 0.4278596 0.49175227 0.39212316
		 0.49175227 0.77142394 0.49175227 0.8085202 0.50841892 0.8085202 0.50841892 0.8085202
		 0.49175227 0.8085202 0.49175227 0.8085202 0.49175227 1 0.50841892 1 0.49175227 1
		 0.49175227 1 0.15841889 0 0.15841889 0 0.17508554 0 0.15841889 0.19264716 0.17508554
		 0.19264716 0.17508554 0.19264716 0.15841889 0.19264716 0.15841889 0.19264716 0.15841889
		 0.23130935 0.15841889 0.40999138 0.15841889 0.4278596 0.15841889 0.39212316 0.15841889
		 0.77142394 0.15841889 0.8085202 0.17508554 0.8085202 0.17508554 0.8085202 0.15841889
		 0.8085202 0.15841889 0.8085202 0.15841889 1 0.17508554 1 0.15841889 1 0.15841889
		 1 0.82508564 0 0.82508564 0 0.84175229 0 0.82508564 0.19264716 0.84175229 0.19264716
		 0.84175229 0.19264716 0.82508564 0.19264716 0.82508564 0.19264716 0.82508564 0.23130935
		 0.82508564 0.40999138 0.82508564 0.4278596 0.82508564 0.39212316 0.82508564 0.77142394
		 0.82508564 0.8085202 0.84175229 0.8085202 0.84175229 0.8085202 0.82508564 0.8085202
		 0.82508564 0.8085202 0.82508564 1 0.84175229 1 0.82508564 1 0.82508564 1 0.34175229
		 1 0.34175229 1 0.32508558 1 0.34175229 1 0.32508558 0.8085202 0.34175229 0.8085202
		 0.34175229 0.8085202 0.32508558 0.8085202 0.34175229 0.8085202 0.34175229 0.77142394
		 0.34175229 0.4278596 0.34175229 0.40999138 0.34175229 0.39212322 0.34175229 0.23130935
		 0.34175229 0.19264716 0.34175229 0.19264716 0.32508558 0.19264716;
	setAttr ".uvst[0].uvsp[750:999]" 0.32508558 0.19264716 0.34175229 0.19264716
		 0.32508558 0 0.34175229 0 0.34175229 0 0.15355366 0 0.15841889 0 0.15355366 0.19264716
		 0.15841889 0.19264716 0.15355867 1 0.15355867 0.8085202 0.15841889 1 0.34661752 0
		 0.34661752 0.19264716 0.48688698 0.19264716 0.48688698 0 0.49175227 0.19264716 0.34175229
		 0.19264716 0.34661251 0.8085202 0.34661251 1 0.48689198 1 0.48689198 0.8085202 0.49175227
		 1 0.34175229 1 0.67508554 1 0.67508554 1 0.65841889 1 0.67508554 1 0.65841889 0.8085202
		 0.67508554 0.8085202 0.67508554 0.8085202 0.65841889 0.8085202 0.67508554 0.8085202
		 0.67508554 0.77142394 0.67508554 0.4278596 0.67508554 0.40999138 0.67508554 0.39212322
		 0.67508554 0.23130935 0.67508554 0.19264716 0.67508554 0.19264716 0.65841889 0.19264716
		 0.65841889 0.19264716 0.67508554 0.19264716 0.65841889 0 0.67508554 0 0.67508554
		 0 0.67995083 0 0.67995083 0.19264716 0.82022035 0.19264716 0.82022035 0 0.82508564
		 0.19264716 0.67508554 0.19264716 0.67994583 0.8085202 0.67994583 1 0.82022536 1 0.82022536
		 0.8085202 0.82508564 1 0.67508554 1 0.49175227 0 0.49175227 0 0.49175227 0.19264716
		 0.50841892 0.19264716 0.50841892 0 0.49175227 0.8085202 0.49175227 0.8085202 0.49175227
		 1 0.50841892 1 0.50841892 0.8085202 0.50841892 1 0.15841889 0 0.15841889 0.19264716
		 0.17508554 0.19264716 0.17508554 0 0.15841889 0.8085202 0.15841889 0.8085202 0.15841889
		 1 0.17508554 1 0.17508554 0.8085202 0.17508554 1 0.82508564 0 0.82508564 0 0.82508564
		 0.19264716 0.84175229 0.19264716 0.84175229 0 0.82508564 0.8085202 0.82508564 0.8085202
		 0.82508564 1 0.84175229 1 0.84175229 0.8085202 0.84175229 1 0.34175229 1 0.32508558
		 0.8085202 0.32508558 1 0.34175229 0.8085202 0.32508558 0.8085202 0.34175229 0.19264716
		 0.32508558 0 0.32508558 0.19264716 0.34175229 0 0.67508554 1 0.65841889 0.8085202
		 0.65841889 1 0.67508554 0.8085202 0.65841889 0.8085202 0.67508554 0.19264716 0.65841889
		 0 0.65841889 0.19264716 0.67508554 0 0.15841889 0.57259202 0.17508554 0.57259202
		 0.49175227 0.57259202 0.50841892 0.57259202 0.82508564 0.57259202 0.84175229 0.57259202
		 1 0.57259202 1 0.57259202 0 0.57259202 0 0.57259202 0 0.57259202 0.15841889 0.58867347
		 0 0.58867347 0 0.60694849 0.15841889 0.60694849 0.17508554 0.58867347 0.17508554
		 0.60694849 0.32508558 0.58867347 0.32508558 0.57259202 0.32508558 0.60694849 0.34175229
		 0.58867347 0.34175229 0.57259202 0.34175229 0.60694849 0.49175227 0.58867347 0.49175227
		 0.60694849 0.50841892 0.58867347 0.50841892 0.60694849 0.65841889 0.58867347 0.65841889
		 0.57259202 0.65841889 0.60694849 0.67508554 0.58867347 0.67508554 0.57259202 0.67508554
		 0.60694849 0.82508564 0.58867347 0.82508564 0.60694849 0.84175229 0.58867347 0.84175229
		 0.60694849 1 0.58867347 1 0.60694849 1 0.58867347 1 0.60694849 1 0.60694849 1 0.57259202
		 0 0.58867347 0 0.60694849 0 0.60694849 0.51186073 0.43130147 0.50841892 0.4278596
		 0.50841892 0.57259202 0.51186073 0.56915021 0.65841889 0.43130147 0.65841889 0.4278596
		 0.67508554 0.43130147 0.67508554 0.4278596 0.65841889 0.57259202 0.65841889 0.56915021
		 0.67508554 0.57259202 0.67508554 0.56915021 0.82164371 0.43130147 0.82508564 0.4278596
		 0.82508564 0.57259202 0.82164371 0.56915021 0.84175229 0.39212316 0.84175229 0.38868129
		 0.82508564 0.38868129 0.82508564 0.39212316 1 0.39212322 0.99655819 0.38868135 1
		 0.23130935 0.99655819 0.23475122 0.84175229 0.23130935 0.84175229 0.23475122 0.82508564
		 0.23130935 0.82508564 0.23475122 0.67852747 0.38868135 0.67508554 0.39212322 0.67508554
		 0.23130935 0.67852747 0.23475122 0.50841892 0.39212316 0.50841892 0.38868129 0.49175227
		 0.38868129 0.49175227 0.39212316 0.65841889 0.39212322 0.65497708 0.38868135 0.65841889
		 0.23130935 0.65497708 0.23475122 0.50841892 0.23130935 0.50841892 0.23475122 0.49175227
		 0.23130935 0.49175227 0.23475122 0.3451941 0.38868135 0.34175229 0.39212322 0.34175229
		 0.23130935 0.3451941 0.23475122 0.17508554 0.39212316 0.17508554 0.38868129 0.15841889
		 0.38868129 0.15841889 0.39212316 0.32508558 0.39212322 0.32164371 0.38868135 0.32508558
		 0.23130935 0.32164371 0.23475122 0.17508554 0.23130935 0.17508554 0.23475122 0.15841889
		 0.23130935 0.15841889 0.23475122 0.0034418702 0.38868135 0 0.39212322 0 0.23130935
		 0.0034418106 0.23475122 0 0.57259202 0.0034418702 0.56915021 0.0034418106 0.43130147
		 0 0.4278596 0.15841889 0.57259202 0.15497708 0.56915021 0.15841889 0.4278596 0.15497708
		 0.43130147 0.17852741 0.43130147 0.17508554 0.4278596 0.17508554 0.57259202 0.17852741
		 0.56915021 0.32508558 0.43130147 0.32508558 0.4278596 0.34175229 0.43130147 0.34175229
		 0.4278596 0.32508558 0.57259202 0.32508558 0.56915021 0.34175229 0.57259202 0.34175229
		 0.56915021 0.4883104 0.43130147 0.49175227 0.4278596 0.49175227 0.57259202 0.4883104
		 0.56915021 0.8451941 0.43130147 0.84175229 0.4278596 0.84175229 0.57259202 0.8451941
		 0.56915021 0.99655819 0.43130147 1 0.4278596 0.99655819 0.56915021 1 0.57259202;
	setAttr ".uvst[0].uvsp[1000:1071]" 0 0.77142394 0.0034418106 0.76798201 0.0034418106
		 0.61039031 0 0.60694849 0.15841889 0.77142394 0.15841889 0.76798201 0.17508554 0.77142394
		 0.17508554 0.76798201 0.15841889 0.60694849 0.15841889 0.61039031 0.17508554 0.61039031
		 0.17508554 0.60694849 0.32164371 0.61039031 0.32508558 0.60694849 0.32508558 0.77142394
		 0.32164371 0.76798201 0.34175229 0.77142394 0.3451941 0.76798201 0.3451941 0.61039031
		 0.34175229 0.60694849 0.49175227 0.77142394 0.49175227 0.76798201 0.50841892 0.77142394
		 0.50841892 0.76798201 0.49175227 0.60694849 0.49175227 0.61039031 0.50841892 0.61039031
		 0.50841892 0.60694849 0.65497708 0.61039031 0.65841889 0.60694849 0.65841889 0.77142394
		 0.65497708 0.76798201 0.67508554 0.77142394 0.67852747 0.76798201 0.67852747 0.61039031
		 0.67508554 0.60694849 0.82508564 0.77142394 0.82508564 0.76798201 0.84175229 0.77142394
		 0.84175229 0.76798201 0.82508564 0.60694849 0.82508564 0.61039031 0.84175229 0.61039031
		 0.84175229 0.60694849 0.99655819 0.61039031 1 0.60694849 1 0.77142394 0.99655819
		 0.76798201 0.17508554 0.8085202 0.32508558 1 0.67508554 0.8085202 0.65841889 1 0.50841892
		 0.8085202 0.34175229 0.8085202 0.34175229 0 0.67508554 0 0 0.23130929 0 0.1926471
		 0 0 0.15841889 0 0.17508554 0 0.32508558 0 0.34175229 0 0.49175227 0 0.50841892 0
		 0.65841889 0 0.67508554 0 0.82508564 0 0.84175229 0 1 0 1 0.1926471 1 0.23130929;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 540 ".pt";
	setAttr ".pt[536]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[537]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[538]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[539]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[540]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[541]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[542]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[543]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[544]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[545]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[546]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[547]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[548]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[549]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[550]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[551]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[552]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[553]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[554]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[555]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[556]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[557]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[558]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[559]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[560]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[561]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[562]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[563]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[564]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[565]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[566]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[567]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[568]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[569]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[570]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[571]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[572]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[573]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[574]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[575]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[576]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[577]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[578]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[579]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[580]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[581]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[582]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[583]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[584]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[585]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[586]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[587]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[588]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[589]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[590]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[591]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[592]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[593]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[594]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[595]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[596]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[597]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[598]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[599]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[600]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[601]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[602]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[603]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[604]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[605]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[606]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[607]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[608]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[609]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[610]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[611]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[612]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[613]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[614]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[615]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[616]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[617]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[618]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[619]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[620]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[621]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[622]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[623]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[624]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[625]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[626]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[627]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[628]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[629]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[630]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[631]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[632]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[633]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[634]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[635]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[636]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[637]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[638]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[639]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[640]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[641]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[642]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[643]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[644]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[645]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[646]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[647]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[648]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[649]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[650]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[651]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[652]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[653]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[654]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[655]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[656]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[657]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[658]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[659]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[660]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[661]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[662]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[663]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[664]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[665]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[666]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[667]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[668]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[669]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[670]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[671]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[672]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[673]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[674]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[675]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[676]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[677]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[678]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[679]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[680]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[681]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[682]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[683]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[684]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[685]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[686]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[687]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[688]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[689]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[690]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[691]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[692]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[693]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[694]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[695]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[696]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[697]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[698]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[699]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[700]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[701]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[702]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[703]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[704]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[705]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[706]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[707]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[708]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[709]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[710]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[711]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[712]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[713]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[714]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[715]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[716]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[717]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[718]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[719]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[720]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[721]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[722]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[723]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[724]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[725]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[726]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[727]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[728]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[729]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[730]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[731]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[732]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[733]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[734]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[735]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[736]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[737]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[738]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[739]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[740]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[741]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[742]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[743]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[744]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[745]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[746]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[747]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[748]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[749]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[750]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[751]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[752]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[753]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[754]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[755]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[756]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[757]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[758]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[759]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[760]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[761]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[762]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[763]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[764]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[765]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[766]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[767]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[768]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[769]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[770]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[771]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[772]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[773]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[774]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[775]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[776]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[777]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[778]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[779]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[780]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[781]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[782]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[783]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[784]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[785]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[786]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[787]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[788]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[789]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[790]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[791]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[792]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[793]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[794]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[795]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[796]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[797]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[798]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[799]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[800]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[801]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[802]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[803]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[804]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[805]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[806]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[807]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[808]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[809]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[810]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[811]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[812]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[813]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[814]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[815]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[816]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[817]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[818]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[819]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[820]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[821]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[822]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[823]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[824]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[825]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[826]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[827]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[828]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[829]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[830]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[831]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[832]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[833]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[834]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[835]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[836]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[837]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[838]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[839]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[840]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[841]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[842]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[843]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[844]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[845]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[846]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[847]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[848]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[849]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[850]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[851]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[852]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[853]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[854]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[855]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[856]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[857]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[858]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[859]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[860]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[861]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[862]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[863]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[864]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[865]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[866]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[867]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[868]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[869]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[870]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[871]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[872]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[873]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[874]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[875]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[876]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[877]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[878]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[879]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[880]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[881]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[882]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[883]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[884]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[885]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[886]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[887]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[888]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[889]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[890]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[891]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[892]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[893]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[894]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[895]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[896]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[897]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[898]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[899]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[900]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[901]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[902]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[903]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[904]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[905]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[906]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[907]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[908]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[909]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[910]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[911]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[912]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[913]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[914]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[915]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[916]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[917]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[918]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[919]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[920]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[921]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[922]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[923]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[924]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[925]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[926]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[927]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[928]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[929]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[930]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[931]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[932]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[933]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[934]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[935]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[936]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[937]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[938]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[939]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[940]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[941]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[942]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[943]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[944]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[945]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[946]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[947]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[948]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[949]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[950]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[951]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[952]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[953]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[954]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[955]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[956]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[957]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[958]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[959]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[960]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[961]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[962]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[963]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[964]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[965]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[966]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[967]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[968]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[969]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[970]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[971]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[972]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[973]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[974]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[975]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[976]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[977]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[978]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[979]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[980]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[981]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[982]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[983]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[984]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[985]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[986]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[987]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[988]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[989]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[990]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[991]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[992]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[993]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[994]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[995]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[996]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[997]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[998]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[999]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1000]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1001]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1002]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1003]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1004]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1005]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1006]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1007]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1008]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1009]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1010]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1011]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1012]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1013]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1014]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1015]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1016]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1017]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1018]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1019]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1020]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1021]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1022]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1023]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1024]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1025]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1026]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1027]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1028]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1029]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1030]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1031]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1032]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1033]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1034]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1035]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1036]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1037]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1038]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1039]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1040]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1041]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1042]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1043]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1044]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1045]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1046]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1047]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1048]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1049]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1050]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1051]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1052]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1053]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1054]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1055]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1056]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1057]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1058]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1059]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1060]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1061]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1062]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1063]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1064]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1065]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1066]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1067]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1068]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1069]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1070]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr ".pt[1071]" -type "float3" 0 1.3824319e-10 0 ;
	setAttr -s 1072 ".vt";
	setAttr ".vt[0:165]"  -1.5 0.50099999 1.5 -0.47474322 0.50099999 1.5 0.52525675 0.50099999 1.5
		 1.5 0.50099999 1.5 -1.5 1.50100005 1.5 1.5 1.50100005 1.5 -1.5 1.15567172 0.81427163
		 -0.47474322 1.15567172 0.81427163 0.52525675 1.15567172 0.81427163 1.5 1.15567172 0.81427163
		 -1.5 1.15567172 -0.806072 -0.47474322 1.15567172 -0.806072 0.52525675 1.15567172 -0.806072
		 1.5 1.15567172 -0.806072 -1.5 1.50100005 -1.5 1.5 1.50100005 -1.5 -1.5 0.50099999 -1.5
		 -0.47474322 0.50099999 -1.5 0.52525675 0.50099999 -1.5 1.5 0.50099999 -1.5 1.5 0.50099999 -0.80607206
		 1.5 0.50099999 0.81427163 -1.5 0.50099999 -0.80607206 -1.5 0.50099999 0.81427163
		 -1.5 1.27783644 -0.92205858 1.5 1.27783644 -0.92205858 1.5 0.50099999 -0.92205864
		 -1.5 0.50099999 -0.92205864 -1.5 1.15567183 0.92556059 -0.47474322 1.15567183 0.92556059
		 0.52525675 1.15567183 0.92556059 1.5 1.15567183 0.92556059 1.5 0.50099999 0.92556053
		 -1.5 0.50099999 0.92556053 -0.47474322 1.15456605 -0.92205858 -1.5 1.15456569 -0.92205858
		 0.52525675 1.15456605 -0.92205858 1.5 1.15456557 -0.92205858 -1.5 1.27742958 0.92556059
		 1.5 1.27742958 0.92556059 0.025256772 0.50099999 -1.5 0.025256772 1.15456605 -0.92205858
		 0.025256772 1.15567172 -0.806072 0.025256772 1.15567172 0.81427163 0.025256772 1.15567183 0.92556059
		 0.025256772 0.50099999 1.5 -0.97474325 0.50099999 -1.5 -0.97474325 1.15456593 -0.92205858
		 -0.97474325 1.15567172 -0.806072 -0.97474325 1.15567172 0.81427163 -0.97474325 1.15567183 0.92556059
		 -0.97474325 0.50099999 1.5 1.025256753 0.50099999 -1.5 1.025256753 1.15456581 -0.92205858
		 1.025256753 1.15567172 -0.806072 1.025256753 1.15567172 0.81427163 1.025256753 1.15567183 0.92556059
		 1.025256753 0.50099999 1.5 -0.52474326 0.50099999 1.5 -0.52474326 1.15567183 0.92556059
		 -0.52474326 1.15567172 0.81427163 -0.52474326 1.15567172 -0.806072 -0.52474326 1.15456593 -0.92205858
		 -0.52474326 0.50099999 -1.5 -1.024743199 0.50099999 -1.5 -1.024743199 1.15456593 -0.92205858
		 -1.024743199 1.15567172 -0.806072 -1.024743199 1.15567172 0.81427163 -1.024743199 1.15567183 0.92556059
		 -1.024743199 0.50099999 1.5 -0.02474324 0.50099999 -1.5 -0.02474324 1.15456593 -0.92205858
		 -0.02474324 1.15567172 -0.806072 -0.02474324 1.15567172 0.81427163 -0.02474324 1.15567183 0.92556059
		 -0.02474324 0.50099999 1.5 0.47525677 0.50099999 1.5 0.47525677 1.15567183 0.92556059
		 0.47525677 1.15567172 0.81427163 0.47525677 1.15567172 -0.806072 0.47525677 1.15456593 -0.92205858
		 0.47525677 0.50099999 -1.5 0.97525674 0.50099999 -1.5 0.97525674 1.15456593 -0.92205858
		 0.97525674 1.15567172 -0.806072 0.97525674 1.15567172 0.81427163 0.97525674 1.15567183 0.92556059
		 0.97525674 0.50099999 1.5 -0.02474324 1.46970463 -1.5 0.025256772 1.46970463 -1.5
		 -0.02474324 1.24654102 -0.92205858 0.025256772 1.24654102 -0.92205858 0.025256772 1.12327063 -0.92205858
		 -0.02474324 1.12327051 -0.92205858 0.025256772 1.12437642 0.92556059 0.025256772 1.24613416 0.92556059
		 -0.02474324 1.12437642 0.92556059 -0.02474324 1.24613416 0.92556059 -0.02474324 1.46970463 1.5
		 0.025256772 1.46970463 1.5 -1.024743199 1.46970463 -1.5 -0.97474325 1.46970463 -1.5
		 -1.024743199 1.2465409 -0.92205858 -0.97474325 1.24654114 -0.92205858 -0.97474325 1.12327063 -0.92205858
		 -1.024743199 1.12327063 -0.92205858 -0.97474325 1.12437642 0.92556059 -0.97474325 1.24613416 0.92556059
		 -1.024743199 1.12437642 0.92556059 -1.024743199 1.24613416 0.92556059 -1.024743199 1.46970463 1.5
		 -0.97474325 1.46970463 1.5 0.97525674 1.46970463 -1.5 1.025256753 1.46970463 -1.5
		 0.97525674 1.24654102 -0.92205858 1.025256753 1.24654102 -0.92205858 1.025256753 1.12327039 -0.92205858
		 0.97525674 1.12327051 -0.92205858 1.025256753 1.12437642 0.92556059 1.025256753 1.24613416 0.92556059
		 0.97525674 1.12437642 0.92556059 0.97525674 1.24613416 0.92556059 0.97525674 1.46970463 1.5
		 1.025256753 1.46970463 1.5 -0.52474326 1.46970463 1.5 -0.47474322 1.46970463 1.5
		 -0.52474326 1.24613416 0.92556059 -0.47474322 1.24613416 0.92556059 -0.52474326 1.12437642 0.92556059
		 -0.47474322 1.12437642 0.92556059 -0.52474326 1.24654102 -0.92205858 -0.47474322 1.24654102 -0.92205858
		 -0.52474326 1.12327051 -0.92205858 -0.47474322 1.12327063 -0.92205858 -0.52474326 1.46970463 -1.5
		 -0.47474322 1.46970463 -1.5 0.47525677 1.46970463 1.5 0.52525675 1.46970463 1.5 0.47525677 1.24613416 0.92556059
		 0.52525675 1.24613416 0.92556059 0.47525677 1.12437642 0.92556059 0.52525675 1.12437642 0.92556059
		 0.47525677 1.24654102 -0.92205858 0.52525675 1.24654102 -0.92205858 0.47525677 1.12327051 -0.92205858
		 0.52525675 1.12327063 -0.92205858 0.47525677 1.46970463 -1.5 0.52525675 1.46970463 -1.5
		 -1.5 1.15567172 0.26602027 -1.024743199 1.15567172 0.26602027 -0.97474325 1.15567172 0.26602027
		 -0.52474326 1.15567172 0.26602027 -0.47474322 1.15567172 0.26602027 -0.02474324 1.15567172 0.26602027
		 0.025256772 1.15567172 0.26602027 0.4752568 1.15567172 0.26602027 0.52525675 1.15567172 0.26602027
		 0.97525674 1.15567172 0.26602027 1.025256753 1.15567172 0.26602027 1.5 1.15567172 0.26602027
		 1.5 0.50099999 0.26602024 -1.5 0.50099999 0.26602024 1.5 0.50099999 -0.27002591 1.5 1.15567172 -0.27002585
		 1.025256753 1.15567172 -0.27002585 0.97525674 1.15567172 -0.27002585;
	setAttr ".vt[166:331]" 0.52525675 1.15567172 -0.27002585 0.4752568 1.15567172 -0.27002585
		 0.025256772 1.15567172 -0.27002585 -0.02474324 1.15567172 -0.27002585 -0.47474322 1.15567172 -0.27002585
		 -0.52474326 1.15567172 -0.27002585 -0.97474325 1.15567172 -0.27002585 -1.024743199 1.15567172 -0.27002585
		 -1.5 1.15567172 -0.27002585 -1.5 0.50099999 -0.27002591 1.5 0.50099999 -0.32363054
		 1.49999988 1.15567172 -0.32363045 1.025256753 1.15567172 -0.32363048 0.97525674 1.15567172 -0.32363048
		 0.52525675 1.15567172 -0.32363045 0.47525677 1.15567172 -0.32363045 0.025256772 1.15567172 -0.32363048
		 -0.02474324 1.15567172 -0.32363048 -0.47474322 1.15567172 -0.32363045 -0.52474326 1.15567172 -0.32363045
		 -0.97474325 1.15567172 -0.32363048 -1.024743199 1.15567172 -0.32363048 -1.49999988 1.15567172 -0.32363045
		 -1.5 0.50099999 -0.32363054 -1.5 1.15567172 -0.21642123 -1.024743199 1.15567172 -0.21642123
		 -0.97474325 1.15567172 -0.21642123 -0.52474326 1.15567172 -0.21642123 -0.47474322 1.15567172 -0.21642123
		 -0.02474324 1.15567172 -0.21642123 0.025256772 1.15567172 -0.21642123 0.4752568 1.15567172 -0.21642123
		 0.52525675 1.15567172 -0.21642123 0.97525668 1.15567172 -0.21642123 1.025256753 1.15567172 -0.21642123
		 1.5 1.15567172 -0.21642123 1.49999988 0.50099999 -0.21642128 -1.49999988 0.50099999 -0.21642128
		 -1.49999988 1.15567172 0.21777612 -1.024743199 1.15567172 0.2177761 -0.97474325 1.15567172 0.2177761
		 -0.52474326 1.15567172 0.21777612 -0.47474322 1.15567172 0.21777612 -0.02474324 1.15567172 0.2177761
		 0.025256772 1.15567172 0.2177761 0.47525677 1.15567172 0.21777612 0.52525675 1.15567172 0.21777612
		 0.97525674 1.15567172 0.2177761 1.025256753 1.15567172 0.2177761 1.49999988 1.15567172 0.21777612
		 1.49999988 0.50099999 0.21777608 -1.49999988 0.50099999 0.21777608 -1.5 1.15567172 0.32084543
		 -1.024743199 1.15567172 0.3208454 -0.97474325 1.15567172 0.3208454 -0.52474326 1.15567172 0.32084543
		 -0.47474322 1.15567172 0.32084543 -0.02474324 1.15567172 0.3208454 0.025256772 1.15567172 0.3208454
		 0.4752568 1.15567172 0.32084543 0.52525675 1.15567172 0.32084543 0.97525668 1.15567172 0.3208454
		 1.025256753 1.15567172 0.3208454 1.5 1.15567172 0.32084543 1.49999988 0.50099999 0.32084537
		 -1.49999988 0.50099999 0.32084537 0.035582338 1.20730472 -0.20609567 0.025256772 1.19697917 -0.21642123
		 0.4752568 1.19697917 -0.21642123 0.4752568 1.20730472 -0.20609567 0.035582338 1.20730472 0.20745054
		 0.025256772 1.19697917 0.2177761 0.47525677 1.20730472 0.20745055 0.47525677 1.19697917 0.21777612
		 0.52525675 1.19697917 -0.21642123 0.52525675 1.20730472 -0.20609567 0.52525675 1.20730472 0.20745055
		 0.52525675 1.19697917 0.21777612 0.96493119 1.20730472 0.20745054 0.97525674 1.19697917 0.2177761
		 0.96493113 1.20730472 -0.20609567 0.97525668 1.19697917 -0.21642123 1.025256753 1.19697917 -0.32363048
		 1.025256753 1.20730472 -0.33395606 1.48967433 1.20730472 -0.33395603 1.49999988 1.19697917 -0.32363045
		 1.48967445 1.20730472 -0.79574645 1.5 1.19697917 -0.806072 1.025256753 1.20730472 -0.79574645
		 1.025256753 1.19697917 -0.806072 0.97525674 1.19697917 -0.32363048 0.97525674 1.20730472 -0.33395606
		 0.97525674 1.20730472 -0.79574645 0.97525674 1.19697917 -0.806072 0.52525675 1.19697917 -0.32363045
		 0.5355823 1.20730472 -0.33395603 0.5355823 1.20730472 -0.79574645 0.52525675 1.19697917 -0.806072
		 0.025256772 1.19697917 -0.32363048 0.025256772 1.20730472 -0.33395606 0.46493119 1.20730472 -0.33395603
		 0.47525677 1.19697917 -0.32363045 0.46493119 1.20730472 -0.79574645 0.47525677 1.19697917 -0.806072
		 0.025256772 1.20730472 -0.79574645 0.025256772 1.19697917 -0.806072 -0.02474324 1.19697917 -0.32363048
		 -0.02474324 1.20730472 -0.33395606 -0.02474324 1.20730472 -0.79574645 -0.02474324 1.19697917 -0.806072
		 -0.47474322 1.19697917 -0.32363045 -0.46441764 1.20730472 -0.33395603 -0.46441764 1.20730472 -0.79574645
		 -0.47474322 1.19697917 -0.806072 -0.97474325 1.19697917 -0.32363048 -0.97474325 1.20730472 -0.33395606
		 -0.53506881 1.20730472 -0.33395603 -0.52474326 1.19697917 -0.32363045 -0.53506881 1.20730472 -0.79574645
		 -0.52474326 1.19697917 -0.806072 -0.97474325 1.20730472 -0.79574645 -0.97474325 1.19697917 -0.806072
		 -1.024743199 1.19697917 -0.32363048 -1.024743199 1.20730472 -0.33395606 -1.024743199 1.20730472 -0.79574645
		 -1.024743199 1.19697917 -0.806072 -1.49999988 1.19697917 -0.32363045 -1.48967433 1.20730472 -0.33395603
		 -1.48967445 1.20730472 -0.79574645 -1.5 1.19697917 -0.806072 -1.49999988 1.19697917 0.21777612
		 -1.48967433 1.20730472 0.20745055 -1.03506875 1.20730472 0.20745054 -1.024743199 1.19697917 0.2177761
		 -1.03506875 1.20730472 -0.20609567 -1.024743199 1.19697917 -0.21642123 -1.48967445 1.20730472 -0.20609567
		 -1.5 1.19697917 -0.21642123 -0.9644177 1.20730472 -0.20609567 -0.97474325 1.19697917 -0.21642123
		 -0.52474326 1.19697917 -0.21642123 -0.52474326 1.20730472 -0.20609567 -0.9644177 1.20730472 0.20745054
		 -0.97474325 1.19697917 0.2177761 -0.52474326 1.20730472 0.20745055 -0.52474326 1.19697917 0.21777612
		 -0.47474322 1.19697917 -0.21642123 -0.47474322 1.20730472 -0.20609567 -0.47474322 1.20730472 0.20745055
		 -0.47474322 1.19697917 0.21777612 -0.035068806 1.20730472 0.20745054 -0.02474324 1.19697917 0.2177761
		 -0.035068806 1.20730472 -0.20609567 -0.02474324 1.19697917 -0.21642123 1.035582304 1.20730472 -0.20609567
		 1.025256753 1.19697917 -0.21642123 1.5 1.19697917 -0.21642123 1.48967445 1.20730472 -0.20609567
		 1.035582304 1.20730472 0.20745054 1.025256753 1.19697917 0.2177761 1.48967433 1.20730472 0.20745055
		 1.49999988 1.19697917 0.21777612 -1.5 1.19697917 0.81427163 -1.48967445 1.20730472 0.80394608
		 -1.024743199 1.20730472 0.80394608 -1.024743199 1.19697917 0.81427163;
	setAttr ".vt[332:497]" -1.024743199 1.19697917 0.3208454 -1.024743199 1.20730472 0.33117098
		 -1.48967445 1.20730472 0.33117101 -1.5 1.19697917 0.32084543 -0.97474325 1.19697917 0.3208454
		 -0.97474325 1.20730472 0.33117098 -0.97474325 1.20730472 0.80394608 -0.97474325 1.19697917 0.81427163
		 -0.52474326 1.19697917 0.32084543 -0.53506881 1.20730472 0.33117101 -0.53506881 1.20730472 0.80394608
		 -0.52474326 1.19697917 0.81427163 -0.47474322 1.19697917 0.81427163 -0.46441764 1.20730472 0.80394608
		 -0.02474324 1.20730472 0.80394608 -0.02474324 1.19697917 0.81427163 -0.02474324 1.19697917 0.3208454
		 -0.02474324 1.20730472 0.33117098 -0.46441764 1.20730472 0.33117101 -0.47474322 1.19697917 0.32084543
		 0.025256772 1.19697917 0.3208454 0.025256772 1.20730472 0.33117098 0.025256772 1.20730472 0.80394608
		 0.025256772 1.19697917 0.81427163 0.4752568 1.19697917 0.32084543 0.46493122 1.20730472 0.33117101
		 0.46493119 1.20730472 0.80394608 0.47525677 1.19697917 0.81427163 0.52525675 1.19697917 0.81427163
		 0.5355823 1.20730472 0.80394608 0.97525674 1.20730472 0.80394608 0.97525674 1.19697917 0.81427163
		 0.97525668 1.19697917 0.3208454 0.97525668 1.20730472 0.33117098 0.5355823 1.20730472 0.33117101
		 0.52525675 1.19697917 0.32084543 1.025256753 1.19697917 0.3208454 1.025256753 1.20730472 0.33117098
		 1.025256753 1.20730472 0.80394608 1.025256753 1.19697917 0.81427163 1.5 1.19697917 0.32084543
		 1.48967445 1.20730472 0.33117101 1.48967445 1.20730472 0.80394608 1.5 1.19697917 0.81427163
		 -0.97474325 1.26178348 0.92556059 -0.96016246 1.27742958 0.92556059 -0.97474325 1.26711941 0.92556059
		 -0.97474325 1.48535395 1.5 -0.97474325 1.48993659 1.5 -0.96016246 1.50100005 1.5
		 -1.024743199 1.26178348 0.92556059 -1.024743199 1.26711941 0.92556059 -1.039323926 1.27742958 0.92556059
		 -1.024743199 1.48535395 1.5 -1.039323926 1.50100005 1.5 -1.024743199 1.48993659 1.5
		 0.52525675 1.48535395 1.5 0.52525675 1.48993659 1.5 0.53983754 1.50100005 1.5 0.52525675 1.26178348 0.92556059
		 0.53983754 1.27742958 0.92556059 0.52525675 1.26711941 0.92556059 1.025256753 1.26178348 0.92556059
		 1.03983748 1.27742958 0.92556059 1.025256753 1.26711941 0.92556059 1.025256753 1.48535395 1.5
		 1.025256753 1.48993659 1.5 1.03983748 1.50100005 1.5 0.47525677 1.48535395 1.5 0.46067601 1.50100005 1.5
		 0.47525677 1.48993659 1.5 0.47525677 1.26178348 0.92556059 0.47525677 1.26711941 0.92556059
		 0.46067601 1.27742958 0.92556059 0.97525674 1.26178348 0.92556059 0.97525674 1.26711941 0.92556059
		 0.96067595 1.27742958 0.92556059 0.97525674 1.48535395 1.5 0.96067595 1.50100005 1.5
		 0.97525674 1.48993659 1.5 -0.47474322 1.48535395 1.5 -0.47474322 1.48993659 1.5 -0.46016246 1.50100005 1.5
		 -0.47474322 1.26178348 0.92556059 -0.46016246 1.27742958 0.92556059 -0.47474322 1.26711941 0.92556059
		 -0.53932405 1.50100005 1.5 -0.52474326 1.48993659 1.5 -0.52474326 1.48535395 1.5
		 -0.53932405 1.27742958 0.92556059 -0.52474326 1.26178348 0.92556059 -0.52474326 1.26711941 0.92556059
		 0.025256772 1.26178348 0.92556059 0.039837532 1.27742958 0.92556059 0.025256772 1.26711941 0.92556059
		 0.025256772 1.48535395 1.5 0.025256772 1.48993659 1.5 0.039837532 1.50100005 1.5
		 -0.039324 1.27742958 0.92556059 -0.02474324 1.26178348 0.92556059 -0.02474324 1.26711941 0.92556059
		 -0.039324 1.50100005 1.5 -0.02474324 1.48993659 1.5 -0.02474324 1.48535395 1.5 -0.47474322 1.48535395 -1.5
		 -0.46014741 1.50100005 -1.5 -0.47474322 1.48993659 -1.5 -0.47474322 1.26219034 -0.92205858
		 -0.47474322 1.26751566 -0.92205858 -0.46014741 1.27783644 -0.92205858 -0.52474326 1.26219034 -0.92205858
		 -0.53933907 1.27783644 -0.92205858 -0.52474326 1.26751566 -0.92205858 -0.52474326 1.48535395 -1.5
		 -0.52474326 1.48993659 -1.5 -0.53933907 1.50100005 -1.5 0.52525675 1.48535395 -1.5
		 0.53985256 1.50100005 -1.5 0.52525675 1.48993659 -1.5 0.52525675 1.26219034 -0.92205858
		 0.52525675 1.26751566 -0.92205858 0.53985256 1.27783644 -0.92205858 1.025256753 1.48535395 -1.5
		 1.039852619 1.50100005 -1.5 1.025256753 1.48993659 -1.5 1.025256753 1.26219034 -0.92205858
		 1.025256753 1.26751566 -0.92205858 1.039852619 1.27783644 -0.92205858 0.47525677 1.26219034 -0.92205858
		 0.46066096 1.27783644 -0.92205858 0.47525677 1.26751566 -0.92205858 0.47525677 1.48535395 -1.5
		 0.47525677 1.48993659 -1.5 0.46066096 1.50100005 -1.5 0.97525674 1.48535395 -1.5
		 0.97525674 1.48993659 -1.5 0.96066093 1.50100005 -1.5 0.97525674 1.26219034 -0.92205858
		 0.96066093 1.27783644 -0.92205858 0.97525674 1.26751566 -0.92205858 0.025256772 1.48535395 -1.5
		 0.039852586 1.50100005 -1.5 0.025256772 1.48993659 -1.5 0.025256772 1.26219034 -0.92205858
		 0.025256772 1.26751566 -0.92205858 0.039852586 1.27783644 -0.92205858 -0.039339054 1.50100005 -1.5
		 -0.02474324 1.48535395 -1.5 -0.02474324 1.48993659 -1.5 -0.039339054 1.27783644 -0.92205858
		 -0.02474324 1.26751566 -0.92205858 -0.02474324 1.26219034 -0.92205858 -1.024743199 1.48535395 -1.5
		 -1.024743199 1.48993659 -1.5 -1.039338946 1.50100005 -1.5 -1.024743199 1.26219034 -0.92205858
		 -1.039338946 1.27783644 -0.92205858 -1.024743199 1.26751566 -0.92205858 -0.9601475 1.27783644 -0.92205858
		 -0.97474325 1.26219034 -0.92205858 -0.97474325 1.26751566 -0.92205858 -0.96014756 1.50100005 -1.5
		 -0.97474331 1.48993659 -1.5 -0.97474331 1.48535395 -1.5 1.49999988 0.001 -0.21642128
		 1.49999988 0.001 0.21777608;
	setAttr ".vt[498:663]" -1.5 0.001 -0.32363054 -1.5 0.001 -0.80607206 -1.5 0.001 -0.92205864
		 -1.5 0.001 -1.5 -1.024743199 0.001 -1.5 -0.97474325 0.001 -1.5 -0.52474326 0.001 -1.5
		 -0.47474322 0.001 -1.5 -0.02474324 0.001 -1.5 0.025256772 0.001 -1.5 0.47525677 0.001 -1.5
		 0.52525675 0.001 -1.5 0.97525674 0.001 -1.5 1.025256753 0.001 -1.5 1.5 0.001 -1.5
		 1.5 0.001 -0.92205864 1.5 0.001 -0.80607206 1.5 0.001 -0.32363054 -1.49999988 0.001 0.32084537
		 -1.5 0.001 0.81427163 -1.5 0.001 0.92556053 -1.5 0.001 1.5 -1.024743199 0.001 1.5
		 -0.97474325 0.001 1.5 -0.52474326 0.001 1.5 -0.47474322 0.001 1.5 -0.02474324 0.001 1.5
		 0.025256772 0.001 1.5 0.47525677 0.001 1.5 0.52525675 0.001 1.5 0.97525674 0.001 1.5
		 1.025256753 0.001 1.5 1.5 0.001 1.5 1.5 0.001 0.92556053 1.5 0.001 0.81427163 1.49999988 0.001 0.32084537
		 -1.49999988 0.001 -0.21642128 -1.49999988 0.001 0.21777608 -1.5 -0.5 -1.5 -0.47474322 -0.5 -1.5
		 0.52525675 -0.5 -1.5 1.5 -0.5 -1.5 -1.5 -1.5 -1.5 1.5 -1.5 -1.5 -1.5 -1.15467167 -0.81427163
		 -0.47474322 -1.15467167 -0.81427163 0.52525675 -1.15467167 -0.81427163 1.5 -1.15467167 -0.81427163
		 -1.5 -1.15467167 0.806072 -0.47474322 -1.15467167 0.806072 0.52525675 -1.15467167 0.806072
		 1.5 -1.15467167 0.806072 -1.5 -1.5 1.5 1.5 -1.5 1.5 -1.5 -0.5 1.5 -0.47474322 -0.5 1.5
		 0.52525675 -0.5 1.5 1.5 -0.5 1.5 1.5 -0.5 0.80607206 1.5 -0.5 -0.81427163 -1.5 -0.5 0.80607206
		 -1.5 -0.5 -0.81427163 -1.5 -1.2768364 0.92205858 1.5 -1.2768364 0.92205858 1.5 -0.5 0.92205864
		 -1.5 -0.5 0.92205864 -1.5 -1.15467179 -0.92556059 -0.47474322 -1.15467179 -0.92556059
		 0.52525675 -1.15467179 -0.92556059 1.5 -1.15467179 -0.92556059 1.5 -0.5 -0.92556053
		 -1.5 -0.5 -0.92556053 -0.47474322 -1.153566 0.92205858 -1.5 -1.15356565 0.92205858
		 0.52525675 -1.153566 0.92205858 1.5 -1.15356553 0.92205858 -1.5 -1.27642953 -0.92556059
		 1.5 -1.27642953 -0.92556059 0.025256772 -0.5 1.5 0.025256772 -1.153566 0.92205858
		 0.025256772 -1.15467167 0.806072 0.025256772 -1.15467167 -0.81427163 0.025256772 -1.15467179 -0.92556059
		 0.025256772 -0.5 -1.5 -0.97474325 -0.5 1.5 -0.97474325 -1.15356588 0.92205858 -0.97474325 -1.15467167 0.806072
		 -0.97474325 -1.15467167 -0.81427163 -0.97474325 -1.15467179 -0.92556059 -0.97474325 -0.5 -1.5
		 1.025256753 -0.5 1.5 1.025256753 -1.15356576 0.92205858 1.025256753 -1.15467167 0.806072
		 1.025256753 -1.15467167 -0.81427163 1.025256753 -1.15467179 -0.92556059 1.025256753 -0.5 -1.5
		 -0.52474326 -0.5 -1.5 -0.52474326 -1.15467179 -0.92556059 -0.52474326 -1.15467167 -0.81427163
		 -0.52474326 -1.15467167 0.806072 -0.52474326 -1.15356588 0.92205858 -0.52474326 -0.5 1.5
		 -1.024743199 -0.5 1.5 -1.024743199 -1.15356588 0.92205858 -1.024743199 -1.15467167 0.806072
		 -1.024743199 -1.15467167 -0.81427163 -1.024743199 -1.15467179 -0.92556059 -1.024743199 -0.5 -1.5
		 -0.02474324 -0.5 1.5 -0.02474324 -1.15356588 0.92205858 -0.02474324 -1.15467167 0.806072
		 -0.02474324 -1.15467167 -0.81427163 -0.02474324 -1.15467179 -0.92556059 -0.02474324 -0.5 -1.5
		 0.47525677 -0.5 -1.5 0.47525677 -1.15467179 -0.92556059 0.47525677 -1.15467167 -0.81427163
		 0.47525677 -1.15467167 0.806072 0.47525677 -1.15356588 0.92205858 0.47525677 -0.5 1.5
		 0.97525674 -0.5 1.5 0.97525674 -1.15356588 0.92205858 0.97525674 -1.15467167 0.806072
		 0.97525674 -1.15467167 -0.81427163 0.97525674 -1.15467179 -0.92556059 0.97525674 -0.5 -1.5
		 -0.02474324 -1.46870458 1.5 0.025256772 -1.46870458 1.5 -0.02474324 -1.24554098 0.92205858
		 0.025256772 -1.24554098 0.92205858 0.025256772 -1.12227058 0.92205858 -0.02474324 -1.12227046 0.92205858
		 0.025256772 -1.12337637 -0.92556059 0.025256772 -1.24513412 -0.92556059 -0.02474324 -1.12337637 -0.92556059
		 -0.02474324 -1.24513412 -0.92556059 -0.02474324 -1.46870458 -1.5 0.025256772 -1.46870458 -1.5
		 -1.024743199 -1.46870458 1.5 -0.97474325 -1.46870458 1.5 -1.024743199 -1.24554086 0.92205858
		 -0.97474325 -1.2455411 0.92205858 -0.97474325 -1.12227058 0.92205858 -1.024743199 -1.12227058 0.92205858
		 -0.97474325 -1.12337637 -0.92556059 -0.97474325 -1.24513412 -0.92556059 -1.024743199 -1.12337637 -0.92556059
		 -1.024743199 -1.24513412 -0.92556059 -1.024743199 -1.46870458 -1.5 -0.97474325 -1.46870458 -1.5
		 0.97525674 -1.46870458 1.5 1.025256753 -1.46870458 1.5 0.97525674 -1.24554098 0.92205858
		 1.025256753 -1.24554098 0.92205858 1.025256753 -1.12227035 0.92205858 0.97525674 -1.12227046 0.92205858
		 1.025256753 -1.12337637 -0.92556059 1.025256753 -1.24513412 -0.92556059 0.97525674 -1.12337637 -0.92556059
		 0.97525674 -1.24513412 -0.92556059 0.97525674 -1.46870458 -1.5 1.025256753 -1.46870458 -1.5
		 -0.52474326 -1.46870458 -1.5 -0.47474322 -1.46870458 -1.5 -0.52474326 -1.24513412 -0.92556059
		 -0.47474322 -1.24513412 -0.92556059;
	setAttr ".vt[664:829]" -0.52474326 -1.12337637 -0.92556059 -0.47474322 -1.12337637 -0.92556059
		 -0.52474326 -1.24554098 0.92205858 -0.47474322 -1.24554098 0.92205858 -0.52474326 -1.12227046 0.92205858
		 -0.47474322 -1.12227058 0.92205858 -0.52474326 -1.46870458 1.5 -0.47474322 -1.46870458 1.5
		 0.47525677 -1.46870458 -1.5 0.52525675 -1.46870458 -1.5 0.47525677 -1.24513412 -0.92556059
		 0.52525675 -1.24513412 -0.92556059 0.47525677 -1.12337637 -0.92556059 0.52525675 -1.12337637 -0.92556059
		 0.47525677 -1.24554098 0.92205858 0.52525675 -1.24554098 0.92205858 0.47525677 -1.12227046 0.92205858
		 0.52525675 -1.12227058 0.92205858 0.47525677 -1.46870458 1.5 0.52525675 -1.46870458 1.5
		 -1.5 -1.15467167 -0.26602027 -1.024743199 -1.15467167 -0.26602027 -0.97474325 -1.15467167 -0.26602027
		 -0.52474326 -1.15467167 -0.26602027 -0.47474322 -1.15467167 -0.26602027 -0.02474324 -1.15467167 -0.26602027
		 0.025256772 -1.15467167 -0.26602027 0.4752568 -1.15467167 -0.26602027 0.52525675 -1.15467167 -0.26602027
		 0.97525674 -1.15467167 -0.26602027 1.025256753 -1.15467167 -0.26602027 1.5 -1.15467167 -0.26602027
		 1.5 -0.5 -0.26602024 -1.5 -0.5 -0.26602024 1.5 -0.5 0.27002591 1.5 -1.15467167 0.27002585
		 1.025256753 -1.15467167 0.27002585 0.97525674 -1.15467167 0.27002585 0.52525675 -1.15467167 0.27002585
		 0.4752568 -1.15467167 0.27002585 0.025256772 -1.15467167 0.27002585 -0.02474324 -1.15467167 0.27002585
		 -0.47474322 -1.15467167 0.27002585 -0.52474326 -1.15467167 0.27002585 -0.97474325 -1.15467167 0.27002585
		 -1.024743199 -1.15467167 0.27002585 -1.5 -1.15467167 0.27002585 -1.5 -0.5 0.27002591
		 1.5 -0.5 0.32363054 1.49999988 -1.15467167 0.32363045 1.025256753 -1.15467167 0.32363048
		 0.97525674 -1.15467167 0.32363048 0.52525675 -1.15467167 0.32363045 0.47525677 -1.15467167 0.32363045
		 0.025256772 -1.15467167 0.32363048 -0.02474324 -1.15467167 0.32363048 -0.47474322 -1.15467167 0.32363045
		 -0.52474326 -1.15467167 0.32363045 -0.97474325 -1.15467167 0.32363048 -1.024743199 -1.15467167 0.32363048
		 -1.49999988 -1.15467167 0.32363045 -1.5 -0.5 0.32363054 -1.5 -1.15467167 0.21642123
		 -1.024743199 -1.15467167 0.21642123 -0.97474325 -1.15467167 0.21642123 -0.52474326 -1.15467167 0.21642123
		 -0.47474322 -1.15467167 0.21642123 -0.02474324 -1.15467167 0.21642123 0.025256772 -1.15467167 0.21642123
		 0.4752568 -1.15467167 0.21642123 0.52525675 -1.15467167 0.21642123 0.97525668 -1.15467167 0.21642123
		 1.025256753 -1.15467167 0.21642123 1.5 -1.15467167 0.21642123 1.49999988 -0.5 0.21642128
		 -1.49999988 -0.5 0.21642128 -1.49999988 -1.15467167 -0.21777612 -1.024743199 -1.15467167 -0.2177761
		 -0.97474325 -1.15467167 -0.2177761 -0.52474326 -1.15467167 -0.21777612 -0.47474322 -1.15467167 -0.21777612
		 -0.02474324 -1.15467167 -0.2177761 0.025256772 -1.15467167 -0.2177761 0.47525677 -1.15467167 -0.21777612
		 0.52525675 -1.15467167 -0.21777612 0.97525674 -1.15467167 -0.2177761 1.025256753 -1.15467167 -0.2177761
		 1.49999988 -1.15467167 -0.21777612 1.49999988 -0.5 -0.21777608 -1.49999988 -0.5 -0.21777608
		 -1.5 -1.15467167 -0.32084543 -1.024743199 -1.15467167 -0.3208454 -0.97474325 -1.15467167 -0.3208454
		 -0.52474326 -1.15467167 -0.32084543 -0.47474322 -1.15467167 -0.32084543 -0.02474324 -1.15467167 -0.3208454
		 0.025256772 -1.15467167 -0.3208454 0.4752568 -1.15467167 -0.32084543 0.52525675 -1.15467167 -0.32084543
		 0.97525668 -1.15467167 -0.3208454 1.025256753 -1.15467167 -0.3208454 1.5 -1.15467167 -0.32084543
		 1.49999988 -0.5 -0.32084537 -1.49999988 -0.5 -0.32084537 0.035582338 -1.20630467 0.20609567
		 0.025256772 -1.19597912 0.21642123 0.4752568 -1.19597912 0.21642123 0.4752568 -1.20630467 0.20609567
		 0.035582338 -1.20630467 -0.20745054 0.025256772 -1.19597912 -0.2177761 0.47525677 -1.20630467 -0.20745055
		 0.47525677 -1.19597912 -0.21777612 0.52525675 -1.19597912 0.21642123 0.52525675 -1.20630467 0.20609567
		 0.52525675 -1.20630467 -0.20745055 0.52525675 -1.19597912 -0.21777612 0.96493119 -1.20630467 -0.20745054
		 0.97525674 -1.19597912 -0.2177761 0.96493113 -1.20630467 0.20609567 0.97525668 -1.19597912 0.21642123
		 1.025256753 -1.19597912 0.32363048 1.025256753 -1.20630467 0.33395606 1.48967433 -1.20630467 0.33395603
		 1.49999988 -1.19597912 0.32363045 1.48967445 -1.20630467 0.79574645 1.5 -1.19597912 0.806072
		 1.025256753 -1.20630467 0.79574645 1.025256753 -1.19597912 0.806072 0.97525674 -1.19597912 0.32363048
		 0.97525674 -1.20630467 0.33395606 0.97525674 -1.20630467 0.79574645 0.97525674 -1.19597912 0.806072
		 0.52525675 -1.19597912 0.32363045 0.5355823 -1.20630467 0.33395603 0.5355823 -1.20630467 0.79574645
		 0.52525675 -1.19597912 0.806072 0.025256772 -1.19597912 0.32363048 0.025256772 -1.20630467 0.33395606
		 0.46493119 -1.20630467 0.33395603 0.47525677 -1.19597912 0.32363045 0.46493119 -1.20630467 0.79574645
		 0.47525677 -1.19597912 0.806072 0.025256772 -1.20630467 0.79574645 0.025256772 -1.19597912 0.806072
		 -0.02474324 -1.19597912 0.32363048 -0.02474324 -1.20630467 0.33395606 -0.02474324 -1.20630467 0.79574645
		 -0.02474324 -1.19597912 0.806072 -0.47474322 -1.19597912 0.32363045 -0.46441764 -1.20630467 0.33395603
		 -0.46441764 -1.20630467 0.79574645 -0.47474322 -1.19597912 0.806072 -0.97474325 -1.19597912 0.32363048
		 -0.97474325 -1.20630467 0.33395606 -0.53506881 -1.20630467 0.33395603 -0.52474326 -1.19597912 0.32363045
		 -0.53506881 -1.20630467 0.79574645 -0.52474326 -1.19597912 0.806072 -0.97474325 -1.20630467 0.79574645
		 -0.97474325 -1.19597912 0.806072 -1.024743199 -1.19597912 0.32363048 -1.024743199 -1.20630467 0.33395606
		 -1.024743199 -1.20630467 0.79574645 -1.024743199 -1.19597912 0.806072 -1.49999988 -1.19597912 0.32363045
		 -1.48967433 -1.20630467 0.33395603;
	setAttr ".vt[830:995]" -1.48967445 -1.20630467 0.79574645 -1.5 -1.19597912 0.806072
		 -1.49999988 -1.19597912 -0.21777612 -1.48967433 -1.20630467 -0.20745055 -1.03506875 -1.20630467 -0.20745054
		 -1.024743199 -1.19597912 -0.2177761 -1.03506875 -1.20630467 0.20609567 -1.024743199 -1.19597912 0.21642123
		 -1.48967445 -1.20630467 0.20609567 -1.5 -1.19597912 0.21642123 -0.9644177 -1.20630467 0.20609567
		 -0.97474325 -1.19597912 0.21642123 -0.52474326 -1.19597912 0.21642123 -0.52474326 -1.20630467 0.20609567
		 -0.9644177 -1.20630467 -0.20745054 -0.97474325 -1.19597912 -0.2177761 -0.52474326 -1.20630467 -0.20745055
		 -0.52474326 -1.19597912 -0.21777612 -0.47474322 -1.19597912 0.21642123 -0.47474322 -1.20630467 0.20609567
		 -0.47474322 -1.20630467 -0.20745055 -0.47474322 -1.19597912 -0.21777612 -0.035068806 -1.20630467 -0.20745054
		 -0.02474324 -1.19597912 -0.2177761 -0.035068806 -1.20630467 0.20609567 -0.02474324 -1.19597912 0.21642123
		 1.035582304 -1.20630467 0.20609567 1.025256753 -1.19597912 0.21642123 1.5 -1.19597912 0.21642123
		 1.48967445 -1.20630467 0.20609567 1.035582304 -1.20630467 -0.20745054 1.025256753 -1.19597912 -0.2177761
		 1.48967433 -1.20630467 -0.20745055 1.49999988 -1.19597912 -0.21777612 -1.5 -1.19597912 -0.81427163
		 -1.48967445 -1.20630467 -0.80394608 -1.024743199 -1.20630467 -0.80394608 -1.024743199 -1.19597912 -0.81427163
		 -1.024743199 -1.19597912 -0.3208454 -1.024743199 -1.20630467 -0.33117098 -1.48967445 -1.20630467 -0.33117101
		 -1.5 -1.19597912 -0.32084543 -0.97474325 -1.19597912 -0.3208454 -0.97474325 -1.20630467 -0.33117098
		 -0.97474325 -1.20630467 -0.80394608 -0.97474325 -1.19597912 -0.81427163 -0.52474326 -1.19597912 -0.32084543
		 -0.53506881 -1.20630467 -0.33117101 -0.53506881 -1.20630467 -0.80394608 -0.52474326 -1.19597912 -0.81427163
		 -0.47474322 -1.19597912 -0.81427163 -0.46441764 -1.20630467 -0.80394608 -0.02474324 -1.20630467 -0.80394608
		 -0.02474324 -1.19597912 -0.81427163 -0.02474324 -1.19597912 -0.3208454 -0.02474324 -1.20630467 -0.33117098
		 -0.46441764 -1.20630467 -0.33117101 -0.47474322 -1.19597912 -0.32084543 0.025256772 -1.19597912 -0.3208454
		 0.025256772 -1.20630467 -0.33117098 0.025256772 -1.20630467 -0.80394608 0.025256772 -1.19597912 -0.81427163
		 0.4752568 -1.19597912 -0.32084543 0.46493122 -1.20630467 -0.33117101 0.46493119 -1.20630467 -0.80394608
		 0.47525677 -1.19597912 -0.81427163 0.52525675 -1.19597912 -0.81427163 0.5355823 -1.20630467 -0.80394608
		 0.97525674 -1.20630467 -0.80394608 0.97525674 -1.19597912 -0.81427163 0.97525668 -1.19597912 -0.3208454
		 0.97525668 -1.20630467 -0.33117098 0.5355823 -1.20630467 -0.33117101 0.52525675 -1.19597912 -0.32084543
		 1.025256753 -1.19597912 -0.3208454 1.025256753 -1.20630467 -0.33117098 1.025256753 -1.20630467 -0.80394608
		 1.025256753 -1.19597912 -0.81427163 1.5 -1.19597912 -0.32084543 1.48967445 -1.20630467 -0.33117101
		 1.48967445 -1.20630467 -0.80394608 1.5 -1.19597912 -0.81427163 -0.97474325 -1.26078343 -0.92556059
		 -0.96016246 -1.27642953 -0.92556059 -0.97474325 -1.26611936 -0.92556059 -0.97474325 -1.4843539 -1.5
		 -0.97474325 -1.48893654 -1.5 -0.96016246 -1.5 -1.5 -1.024743199 -1.26078343 -0.92556059
		 -1.024743199 -1.26611936 -0.92556059 -1.039323926 -1.27642953 -0.92556059 -1.024743199 -1.4843539 -1.5
		 -1.039323926 -1.5 -1.5 -1.024743199 -1.48893654 -1.5 0.52525675 -1.4843539 -1.5 0.52525675 -1.48893654 -1.5
		 0.53983754 -1.5 -1.5 0.52525675 -1.26078343 -0.92556059 0.53983754 -1.27642953 -0.92556059
		 0.52525675 -1.26611936 -0.92556059 1.025256753 -1.26078343 -0.92556059 1.03983748 -1.27642953 -0.92556059
		 1.025256753 -1.26611936 -0.92556059 1.025256753 -1.4843539 -1.5 1.025256753 -1.48893654 -1.5
		 1.03983748 -1.5 -1.5 0.47525677 -1.4843539 -1.5 0.46067601 -1.5 -1.5 0.47525677 -1.48893654 -1.5
		 0.47525677 -1.26078343 -0.92556059 0.47525677 -1.26611936 -0.92556059 0.46067601 -1.27642953 -0.92556059
		 0.97525674 -1.26078343 -0.92556059 0.97525674 -1.26611936 -0.92556059 0.96067595 -1.27642953 -0.92556059
		 0.97525674 -1.4843539 -1.5 0.96067595 -1.5 -1.5 0.97525674 -1.48893654 -1.5 -0.47474322 -1.4843539 -1.5
		 -0.47474322 -1.48893654 -1.5 -0.46016246 -1.5 -1.5 -0.47474322 -1.26078343 -0.92556059
		 -0.46016246 -1.27642953 -0.92556059 -0.47474322 -1.26611936 -0.92556059 -0.53932405 -1.5 -1.5
		 -0.52474326 -1.48893654 -1.5 -0.52474326 -1.4843539 -1.5 -0.53932405 -1.27642953 -0.92556059
		 -0.52474326 -1.26078343 -0.92556059 -0.52474326 -1.26611936 -0.92556059 0.025256772 -1.26078343 -0.92556059
		 0.039837532 -1.27642953 -0.92556059 0.025256772 -1.26611936 -0.92556059 0.025256772 -1.4843539 -1.5
		 0.025256772 -1.48893654 -1.5 0.039837532 -1.5 -1.5 -0.039324 -1.27642953 -0.92556059
		 -0.02474324 -1.26078343 -0.92556059 -0.02474324 -1.26611936 -0.92556059 -0.039324 -1.5 -1.5
		 -0.02474324 -1.48893654 -1.5 -0.02474324 -1.4843539 -1.5 -0.47474322 -1.4843539 1.5
		 -0.46014741 -1.5 1.5 -0.47474322 -1.48893654 1.5 -0.47474322 -1.2611903 0.92205858
		 -0.47474322 -1.26651561 0.92205858 -0.46014741 -1.2768364 0.92205858 -0.52474326 -1.2611903 0.92205858
		 -0.53933907 -1.2768364 0.92205858 -0.52474326 -1.26651561 0.92205858 -0.52474326 -1.4843539 1.5
		 -0.52474326 -1.48893654 1.5 -0.53933907 -1.5 1.5 0.52525675 -1.4843539 1.5 0.53985256 -1.5 1.5
		 0.52525675 -1.48893654 1.5 0.52525675 -1.2611903 0.92205858 0.52525675 -1.26651561 0.92205858
		 0.53985256 -1.2768364 0.92205858 1.025256753 -1.4843539 1.5 1.039852619 -1.5 1.5
		 1.025256753 -1.48893654 1.5 1.025256753 -1.2611903 0.92205858 1.025256753 -1.26651561 0.92205858
		 1.039852619 -1.2768364 0.92205858;
	setAttr ".vt[996:1071]" 0.47525677 -1.2611903 0.92205858 0.46066096 -1.2768364 0.92205858
		 0.47525677 -1.26651561 0.92205858 0.47525677 -1.4843539 1.5 0.47525677 -1.48893654 1.5
		 0.46066096 -1.5 1.5 0.97525674 -1.4843539 1.5 0.97525674 -1.48893654 1.5 0.96066093 -1.5 1.5
		 0.97525674 -1.2611903 0.92205858 0.96066093 -1.2768364 0.92205858 0.97525674 -1.26651561 0.92205858
		 0.025256772 -1.4843539 1.5 0.039852586 -1.5 1.5 0.025256772 -1.48893654 1.5 0.025256772 -1.2611903 0.92205858
		 0.025256772 -1.26651561 0.92205858 0.039852586 -1.2768364 0.92205858 -0.039339054 -1.5 1.5
		 -0.02474324 -1.4843539 1.5 -0.02474324 -1.48893654 1.5 -0.039339054 -1.2768364 0.92205858
		 -0.02474324 -1.26651561 0.92205858 -0.02474324 -1.2611903 0.92205858 -1.024743199 -1.4843539 1.5
		 -1.024743199 -1.48893654 1.5 -1.039338946 -1.5 1.5 -1.024743199 -1.2611903 0.92205858
		 -1.039338946 -1.2768364 0.92205858 -1.024743199 -1.26651561 0.92205858 -0.9601475 -1.2768364 0.92205858
		 -0.97474325 -1.2611903 0.92205858 -0.97474325 -1.26651561 0.92205858 -0.96014756 -1.5 1.5
		 -0.97474331 -1.48893654 1.5 -0.97474331 -1.4843539 1.5 1.49999988 0 0.21642128 1.49999988 0 -0.21777608
		 -1.5 0 0.32363054 -1.5 0 0.80607206 -1.5 0 0.92205864 -1.5 0 1.5 -1.024743199 0 1.5
		 -0.97474325 0 1.5 -0.52474326 0 1.5 -0.47474322 0 1.5 -0.02474324 0 1.5 0.025256772 0 1.5
		 0.47525677 0 1.5 0.52525675 0 1.5 0.97525674 0 1.5 1.025256753 0 1.5 1.5 0 1.5 1.5 0 0.92205864
		 1.5 0 0.80607206 1.5 0 0.32363054 -1.49999988 0 -0.32084537 -1.5 0 -0.81427163 -1.5 0 -0.92556053
		 -1.5 0 -1.5 -1.024743199 0 -1.5 -0.97474325 0 -1.5 -0.52474326 0 -1.5 -0.47474322 0 -1.5
		 -0.02474324 0 -1.5 0.025256772 0 -1.5 0.47525677 0 -1.5 0.52525675 0 -1.5 0.97525674 0 -1.5
		 1.025256753 0 -1.5 1.5 0 -1.5 1.5 0 -0.92556053 1.5 0 -0.81427163 1.49999988 0 -0.32084537
		 -1.49999988 0 0.21642128 -1.49999988 0 -0.21777608;
	setAttr -s 2028 ".ed";
	setAttr ".ed[0:165]"  0 69 1 1 75 1 2 87 1 4 386 0 6 67 0 7 73 0 8 85 0 10 66 0
		 11 72 0 12 84 0 14 486 0 16 64 1 17 70 1 18 82 1 0 4 0 1 413 0 2 389 0 3 5 0 4 28 0
		 5 31 0 6 218 1 7 222 0 8 226 0 9 229 1 14 16 0 15 19 0 16 501 0 17 505 1 18 509 1
		 19 512 0 19 26 1 20 176 1 21 32 1 20 13 1 21 9 1 16 27 1 22 189 1 23 33 1 22 10 1
		 23 6 1 24 14 0 25 15 0 26 20 1 27 22 1 24 488 0 26 513 1 27 35 1 28 6 0 29 7 1 30 8 1
		 31 9 0 32 3 1 33 0 1 28 68 0 29 74 0 30 86 0 31 32 1 32 531 1 33 28 1 11 34 1 24 35 0
		 35 65 0 10 35 0 12 36 1 34 71 0 25 37 0 13 37 0 36 83 0 29 417 0 28 38 0 38 384 0
		 4 38 0 30 393 0 31 39 0 5 39 0 35 14 1 37 26 1 37 15 1 40 81 1 41 80 0 42 79 0 43 78 0
		 44 77 0 45 76 1 40 474 0 41 42 1 43 44 1 44 426 0 45 525 1 46 63 1 47 62 0 48 61 0
		 49 60 0 50 59 0 51 58 1 46 494 0 47 48 1 49 50 1 50 378 0 51 521 1 52 19 1 53 37 0
		 54 13 0 55 9 0 56 31 0 57 3 1 52 456 0 53 54 1 55 56 1 56 396 0 57 529 1 58 1 1 59 29 0
		 60 7 1 61 11 0 62 34 0 63 17 1 58 419 0 59 60 1 60 221 0 61 62 1 62 444 0 63 504 1
		 64 46 1 65 47 0 66 48 0 67 49 0 68 50 0 69 51 1 64 485 0 65 66 1 67 68 1 68 383 0
		 69 520 1 70 40 1 71 41 0 72 42 0 73 43 0 74 44 0 75 45 1 70 480 0 71 72 1 73 74 1
		 74 432 0 75 524 1 76 2 1 77 30 0 78 8 1 79 12 0 80 36 0 81 18 1 76 402 0 77 78 1
		 78 225 0 79 80 1 80 462 0 81 508 1 82 52 1 83 53 0 84 54 0 85 55 0 86 56 0 87 57 1
		 82 467 0 83 84 1 85 86 1;
	setAttr ".ed[166:331]" 86 407 0 87 528 1 70 88 0 88 89 0 40 89 0 88 90 0 90 91 0
		 89 91 0 41 92 0 91 92 0 71 93 0 90 93 0 93 92 0 44 94 0 94 95 0 74 96 0 96 94 0 96 97 0
		 97 95 0 97 98 0 98 99 0 95 99 0 98 75 0 99 45 0 64 100 0 100 101 0 46 101 0 100 102 0
		 102 103 0 101 103 0 47 104 0 103 104 0 65 105 0 102 105 0 105 104 0 50 106 0 106 107 0
		 68 108 0 108 106 0 108 109 0 109 107 0 109 110 0 110 111 0 107 111 0 110 69 0 111 51 0
		 82 112 0 112 113 0 52 113 0 112 114 0 114 115 0 113 115 0 53 116 0 115 116 0 83 117 0
		 114 117 0 117 116 0 56 118 0 118 119 0 86 120 0 120 118 0 120 121 0 121 119 0 121 122 0
		 122 123 0 119 123 0 122 87 0 123 57 0 58 124 0 1 125 0 124 125 0 124 126 0 125 127 0
		 126 127 0 59 128 0 29 129 0 128 129 0 126 128 0 129 127 0 130 131 0 62 132 0 132 130 0
		 34 133 0 132 133 0 131 133 0 130 134 0 131 135 0 134 135 0 134 63 0 135 17 0 76 136 0
		 2 137 0 136 137 0 136 138 0 137 139 0 138 139 0 77 140 0 30 141 0 140 141 0 138 140 0
		 141 139 0 142 143 0 80 144 0 144 142 0 36 145 0 144 145 0 143 145 0 142 146 0 143 147 0
		 146 147 0 146 81 0 147 18 0 148 204 0 149 219 1 150 220 1 151 207 1 152 208 1 153 223 1
		 154 224 1 155 211 1 156 212 1 157 227 1 158 228 1 159 215 0 160 230 1 161 231 1 162 202 1
		 163 177 0 164 200 1 165 199 1 166 180 1 167 181 1 168 196 1 169 195 1 170 184 1 171 185 1
		 172 192 1 173 191 1 174 188 0 175 203 1 176 162 1 177 13 1 178 164 1 179 165 1 180 12 0
		 181 79 0 182 168 1 183 169 1 184 11 0 185 61 0 186 172 1 187 173 1 188 10 1 189 175 1
		 176 177 1 177 178 0 178 179 0 179 180 0 180 181 1 181 182 0 182 183 0 183 184 0 184 185 1
		 185 186 0 186 187 0 187 188 0;
	setAttr ".ed[332:497]" 188 189 1 189 498 1 190 174 0 191 205 0 192 206 0 193 171 1
		 194 170 1 195 209 0 196 210 0 197 167 1 198 166 1 199 213 0 200 214 0 201 163 0 202 216 1
		 203 217 1 190 191 0 191 192 1 192 193 0 193 194 0 194 195 0 195 196 1 196 197 0 197 198 0
		 198 199 0 199 200 1 200 201 0 201 202 1 202 496 1 203 190 1 204 190 1 205 149 1 206 150 1
		 209 153 1 210 154 1 213 157 1 214 158 1 215 201 1 216 160 1 217 161 1 204 205 0 205 206 1
		 206 207 0 207 208 0 208 209 0 209 210 1 210 211 0 211 212 0 212 213 0 213 214 1 214 215 0
		 215 216 1 216 497 1 217 204 1 218 148 0 221 151 1 222 152 1 225 155 1 226 156 1 229 159 0
		 230 21 1 231 23 1 218 219 0 219 220 0 220 221 0 221 222 1 222 223 0 223 224 0 224 225 0
		 225 226 1 226 227 0 227 228 0 228 229 0 229 230 1 230 533 1 231 218 1 232 233 0 233 237 0
		 237 236 0 236 232 0 232 235 0 235 234 1 234 233 0 235 241 0 241 240 1 240 234 0 237 239 0
		 239 238 1 238 236 0 239 243 0 243 242 1 242 238 0 241 246 0 246 247 0 247 240 0 243 245 0
		 245 244 0 244 242 0 245 247 0 246 244 0 238 235 1 242 241 1 196 233 0 234 197 1 210 237 0
		 211 239 1 240 198 1 212 243 1 213 245 0 199 247 0 248 249 1 249 257 0 257 256 1 256 248 0
		 248 251 0 251 250 0 250 249 0 251 253 0 253 252 0 252 250 0 253 255 0 255 254 1 254 252 0
		 255 259 0 259 258 1 258 254 0 257 261 0 261 260 0 260 256 0 259 263 0 263 262 0 262 258 0
		 261 262 0 263 260 0 264 265 1 265 273 0 273 272 1 272 264 0 264 267 0 267 266 0 266 265 0
		 267 269 0 269 268 0 268 266 0 269 271 0 271 270 1 270 268 0 271 275 0 275 274 1 274 270 0
		 273 277 0 277 276 0 276 272 0 275 279 0 279 278 0 278 274 0 277 278 0 279 276 0 280 281 1
		 281 289 0 289 288 1 288 280 0 280 283 0 283 282 0 282 281 0 283 285 0;
	setAttr ".ed[498:663]" 285 284 0 284 282 0 285 287 0 287 286 1 286 284 0 287 291 0
		 291 290 1 290 286 0 289 293 0 293 292 0 292 288 0 291 295 0 295 294 0 294 290 0 293 294 0
		 295 292 0 296 297 0 297 302 0 302 303 0 303 296 0 296 299 0 299 298 0 298 297 0 299 301 0
		 301 300 0 300 298 0 301 303 0 302 300 0 304 305 0 305 309 0 309 308 0 308 304 0 304 307 0
		 307 306 1 306 305 0 307 313 0 313 312 1 312 306 0 309 311 0 311 310 1 310 308 0 311 315 0
		 315 314 1 314 310 0 313 318 0 318 319 0 319 312 0 315 317 0 317 316 0 316 314 0 317 319 0
		 318 316 0 320 321 0 321 325 0 325 324 0 324 320 0 320 323 0 323 322 0 322 321 0 323 326 0
		 326 327 0 327 322 0 325 327 0 326 324 0 328 329 0 329 334 0 334 335 0 335 328 0 328 331 0
		 331 330 1 330 329 0 331 339 0 339 338 1 338 330 0 332 333 1 333 337 0 337 336 1 336 332 0
		 332 335 0 334 333 0 337 341 0 341 340 0 340 336 0 339 343 0 343 342 0 342 338 0 341 342 0
		 343 340 0 344 345 0 345 350 0 350 351 0 351 344 0 344 347 0 347 346 1 346 345 0 347 355 0
		 355 354 1 354 346 0 348 349 1 349 353 0 353 352 1 352 348 0 348 351 0 350 349 0 353 357 0
		 357 356 0 356 352 0 355 359 0 359 358 0 358 354 0 357 358 0 359 356 0 360 361 0 361 366 0
		 366 367 0 367 360 0 360 363 0 363 362 1 362 361 0 363 371 0 371 370 1 370 362 0 364 365 1
		 365 369 0 369 368 1 368 364 0 364 367 0 366 365 0 369 373 0 373 372 0 372 368 0 371 375 0
		 375 374 0 374 370 0 373 374 0 375 372 0 254 249 1 258 257 1 270 265 1 274 273 1 286 281 1
		 290 289 1 310 307 1 314 313 1 330 333 1 338 337 1 346 349 1 354 353 1 362 365 1 370 369 1
		 177 251 0 248 178 1 13 253 0 54 255 1 256 179 1 84 259 1 260 180 0 12 263 0 181 267 0
		 264 182 1 79 269 0 42 271 1 272 183 1 72 275 1 276 184 0 11 279 0;
	setAttr ".ed[664:829]" 185 283 0 280 186 1 61 285 0 48 287 1 288 187 1 66 291 1
		 292 188 0 10 295 0 205 299 0 296 204 0 191 301 0 190 303 0 192 305 0 306 193 1 206 309 0
		 207 311 1 312 194 1 208 315 1 209 317 0 195 319 0 200 321 0 322 201 0 214 325 0 215 327 0
		 67 331 1 328 6 0 218 335 0 332 219 1 336 220 1 49 339 1 340 221 0 60 343 0 73 347 1
		 344 7 0 222 351 0 348 223 1 352 224 1 43 355 1 356 225 0 78 359 0 85 363 1 360 8 0
		 226 367 0 364 227 1 368 228 1 55 371 1 372 229 0 9 375 0 376 107 0 377 421 0 378 376 0
		 378 377 0 379 111 0 380 51 0 381 418 0 380 379 0 380 381 0 382 109 0 383 382 0 383 384 0
		 385 110 0 387 69 0 387 385 0 387 386 0 377 381 0 379 376 0 382 385 0 386 384 0 377 376 0
		 379 381 0 382 384 0 386 385 0 388 137 0 390 410 0 389 388 0 390 389 0 391 139 0 392 408 0
		 393 391 0 393 392 0 394 119 0 395 39 0 396 394 0 396 395 0 397 123 0 398 57 0 399 5 0
		 398 397 0 398 399 0 400 136 0 402 400 0 402 401 0 403 138 0 404 77 0 404 403 0 404 405 0
		 406 121 0 407 406 0 407 408 0 409 122 0 411 87 0 411 409 0 411 410 0 388 391 0 392 390 0
		 395 399 0 397 394 0 401 405 0 403 400 0 406 409 0 410 408 0 388 390 0 392 391 0 395 394 0
		 397 399 0 401 400 0 403 405 0 406 408 0 410 409 0 412 125 0 414 433 0 413 412 0 414 413 0
		 415 127 0 416 430 0 417 415 0 417 416 0 420 124 0 419 418 0 419 420 0 422 126 0 423 59 0
		 423 421 0 423 422 0 412 415 0 416 414 0 418 421 0 422 420 0 412 414 0 416 415 0 418 420 0
		 422 421 0 424 95 0 425 405 0 426 424 0 426 425 0 427 99 0 428 45 0 429 401 0 428 427 0
		 428 429 0 431 97 0 432 430 0 432 431 0 434 75 0 435 98 0 434 433 0 434 435 0 425 429 0
		 427 424 0 431 435 0 433 430 0 425 424 0 427 429 0 431 430 0 433 435 0;
	setAttr ".ed[830:995]" 436 135 0 437 478 0 438 17 0 438 436 0 437 438 0 439 131 0
		 440 34 0 441 481 0 440 439 0 441 440 0 442 130 0 444 442 0 444 443 0 445 134 0 446 63 0
		 446 445 0 447 446 0 437 441 0 439 436 0 443 447 0 445 442 0 437 436 0 439 441 0 443 442 0
		 445 447 0 448 147 0 449 468 0 450 18 0 450 448 0 449 450 0 451 143 0 452 36 0 453 470 0
		 452 451 0 453 452 0 454 113 0 455 15 0 456 454 0 456 455 0 457 115 0 458 53 0 459 25 0
		 458 457 0 459 458 0 460 142 0 462 460 0 462 461 0 463 146 0 464 81 0 464 463 0 465 464 0
		 466 112 0 467 466 0 468 467 0 469 114 0 471 83 0 471 469 0 471 470 0 449 453 0 451 448 0
		 455 459 0 457 454 0 461 465 0 463 460 0 466 469 0 470 468 0 449 448 0 451 453 0 455 454 0
		 457 459 0 461 460 0 463 465 0 466 468 0 470 469 0 472 89 0 473 465 0 474 472 0 474 473 0
		 475 91 0 476 41 0 477 461 0 476 475 0 477 476 0 479 88 0 478 480 0 480 479 0 482 71 0
		 483 90 0 482 481 0 482 483 0 473 477 0 475 472 0 479 483 0 481 478 0 473 472 0 475 477 0
		 479 478 0 481 483 0 484 100 0 485 484 0 486 485 0 487 102 0 489 65 0 489 487 0 489 488 0
		 490 443 0 491 103 0 492 47 0 490 492 0 492 491 0 493 447 0 495 101 0 494 493 0 494 495 1
		 484 487 0 488 486 0 491 495 0 493 490 0 484 486 0 488 487 0 491 490 0 493 495 0 496 497 0
		 499 22 1 500 27 1 502 64 1 503 46 1 506 70 1 507 40 1 510 82 1 511 52 1 514 20 1
		 515 176 1 498 499 0 499 500 0 500 501 0 501 502 0 502 503 0 503 504 0 504 505 0 505 506 0
		 506 507 0 507 508 0 508 509 0 509 510 0 510 511 0 511 512 0 512 513 0 513 514 0 514 515 0
		 516 231 1 517 23 1 518 33 1 519 0 0 522 58 1 523 1 1 526 76 1 527 2 1 530 3 0 532 21 1
		 516 517 0 517 518 0 518 519 0 519 520 0 520 521 0 521 522 0;
	setAttr ".ed[996:1161]" 522 523 0 523 524 0 524 525 0 525 526 0 526 527 0 527 528 0
		 528 529 0 529 530 0 530 531 0 531 532 0 532 533 0 533 497 0 496 515 0 534 203 1 535 217 1
		 534 535 0 498 534 0 535 516 0 536 605 1 537 611 1 538 623 1 540 922 0 542 603 0 543 609 0
		 544 621 0 546 602 0 547 608 0 548 620 0 550 1022 0 552 600 1 553 606 1 554 618 1
		 536 540 0 537 949 0 538 925 0 539 541 0 540 564 0 541 567 0 542 754 1 543 758 0 544 762 0
		 545 765 1 550 552 0 551 555 0 552 1037 0 553 1041 1 554 1045 1 555 1048 0 555 562 1
		 556 712 1 557 568 1 556 549 1 557 545 1 552 563 1 558 725 1 559 569 1 558 546 1 559 542 1
		 560 550 0 561 551 0 562 556 1 563 558 1 560 1024 0 562 1049 1 563 571 1 564 542 0
		 565 543 1 566 544 1 567 545 0 568 539 1 569 536 1 564 604 0 565 610 0 566 622 0 567 568 1
		 568 1067 1 569 564 1 547 570 1 560 571 0 571 601 0 546 571 0 548 572 1 570 607 0
		 561 573 0 549 573 0 572 619 0 565 953 0 564 574 0 574 920 0 540 574 0 566 929 0 567 575 0
		 541 575 0 571 550 1 573 562 1 573 551 1 576 617 1 577 616 0 578 615 0 579 614 0 580 613 0
		 581 612 1 576 1010 0 577 578 1 579 580 1 580 962 0 581 1061 1 582 599 1 583 598 0
		 584 597 0 585 596 0 586 595 0 587 594 1 582 1030 0 583 584 1 585 586 1 586 914 0
		 587 1057 1 588 555 1 589 573 0 590 549 0 591 545 0 592 567 0 593 539 1 588 992 0
		 589 590 1 591 592 1 592 932 0 593 1065 1 594 537 1 595 565 0 596 543 1 597 547 0
		 598 570 0 599 553 1 594 955 0 595 596 1 596 757 0 597 598 1 598 980 0 599 1040 1
		 600 582 1 601 583 0 602 584 0 603 585 0 604 586 0 605 587 1 600 1021 0 601 602 1
		 603 604 1 604 919 0 605 1056 1 606 576 1 607 577 0 608 578 0 609 579 0 610 580 0
		 611 581 1 606 1016 0 607 608 1 609 610 1 610 968 0 611 1060 1 612 538 1 613 566 0
		 614 544 1;
	setAttr ".ed[1162:1327]" 615 548 0 616 572 0 617 554 1 612 938 0 613 614 1 614 761 0
		 615 616 1 616 998 0 617 1044 1 618 588 1 619 589 0 620 590 0 621 591 0 622 592 0
		 623 593 1 618 1003 0 619 620 1 621 622 1 622 943 0 623 1064 1 606 624 0 624 625 0
		 576 625 0 624 626 0 626 627 0 625 627 0 577 628 0 627 628 0 607 629 0 626 629 0 629 628 0
		 580 630 0 630 631 0 610 632 0 632 630 0 632 633 0 633 631 0 633 634 0 634 635 0 631 635 0
		 634 611 0 635 581 0 600 636 0 636 637 0 582 637 0 636 638 0 638 639 0 637 639 0 583 640 0
		 639 640 0 601 641 0 638 641 0 641 640 0 586 642 0 642 643 0 604 644 0 644 642 0 644 645 0
		 645 643 0 645 646 0 646 647 0 643 647 0 646 605 0 647 587 0 618 648 0 648 649 0 588 649 0
		 648 650 0 650 651 0 649 651 0 589 652 0 651 652 0 619 653 0 650 653 0 653 652 0 592 654 0
		 654 655 0 622 656 0 656 654 0 656 657 0 657 655 0 657 658 0 658 659 0 655 659 0 658 623 0
		 659 593 0 594 660 0 537 661 0 660 661 0 660 662 0 661 663 0 662 663 0 595 664 0 565 665 0
		 664 665 0 662 664 0 665 663 0 666 667 0 598 668 0 668 666 0 570 669 0 668 669 0 667 669 0
		 666 670 0 667 671 0 670 671 0 670 599 0 671 553 0 612 672 0 538 673 0 672 673 0 672 674 0
		 673 675 0 674 675 0 613 676 0 566 677 0 676 677 0 674 676 0 677 675 0 678 679 0 616 680 0
		 680 678 0 572 681 0 680 681 0 679 681 0 678 682 0 679 683 0 682 683 0 682 617 0 683 554 0
		 684 740 0 685 755 1 686 756 1 687 743 1 688 744 1 689 759 1 690 760 1 691 747 1 692 748 1
		 693 763 1 694 764 1 695 751 0 696 766 1 697 767 1 698 738 1 699 713 0 700 736 1 701 735 1
		 702 716 1 703 717 1 704 732 1 705 731 1 706 720 1 707 721 1 708 728 1 709 727 1 710 724 0
		 711 739 1 712 698 1 713 549 1 714 700 1 715 701 1 716 548 0 717 615 0 718 704 1 719 705 1;
	setAttr ".ed[1328:1493]" 720 547 0 721 597 0 722 708 1 723 709 1 724 546 1 725 711 1
		 712 713 1 713 714 0 714 715 0 715 716 0 716 717 1 717 718 0 718 719 0 719 720 0 720 721 1
		 721 722 0 722 723 0 723 724 0 724 725 1 725 1034 1 726 710 0 727 741 0 728 742 0
		 729 707 1 730 706 1 731 745 0 732 746 0 733 703 1 734 702 1 735 749 0 736 750 0 737 699 0
		 738 752 1 739 753 1 726 727 0 727 728 1 728 729 0 729 730 0 730 731 0 731 732 1 732 733 0
		 733 734 0 734 735 0 735 736 1 736 737 0 737 738 1 738 1032 1 739 726 1 740 726 1
		 741 685 1 742 686 1 745 689 1 746 690 1 749 693 1 750 694 1 751 737 1 752 696 1 753 697 1
		 740 741 0 741 742 1 742 743 0 743 744 0 744 745 0 745 746 1 746 747 0 747 748 0 748 749 0
		 749 750 1 750 751 0 751 752 1 752 1033 1 753 740 1 754 684 0 757 687 1 758 688 1
		 761 691 1 762 692 1 765 695 0 766 557 1 767 559 1 754 755 0 755 756 0 756 757 0 757 758 1
		 758 759 0 759 760 0 760 761 0 761 762 1 762 763 0 763 764 0 764 765 0 765 766 1 766 1069 1
		 767 754 1 768 769 0 769 773 0 773 772 0 772 768 0 768 771 0 771 770 1 770 769 0 771 777 0
		 777 776 1 776 770 0 773 775 0 775 774 1 774 772 0 775 779 0 779 778 1 778 774 0 777 782 0
		 782 783 0 783 776 0 779 781 0 781 780 0 780 778 0 781 783 0 782 780 0 774 771 1 778 777 1
		 732 769 0 770 733 1 746 773 0 747 775 1 776 734 1 748 779 1 749 781 0 735 783 0 784 785 1
		 785 793 0 793 792 1 792 784 0 784 787 0 787 786 0 786 785 0 787 789 0 789 788 0 788 786 0
		 789 791 0 791 790 1 790 788 0 791 795 0 795 794 1 794 790 0 793 797 0 797 796 0 796 792 0
		 795 799 0 799 798 0 798 794 0 797 798 0 799 796 0 800 801 1 801 809 0 809 808 1 808 800 0
		 800 803 0 803 802 0 802 801 0 803 805 0 805 804 0 804 802 0 805 807 0 807 806 1 806 804 0
		 807 811 0;
	setAttr ".ed[1494:1659]" 811 810 1 810 806 0 809 813 0 813 812 0 812 808 0 811 815 0
		 815 814 0 814 810 0 813 814 0 815 812 0 816 817 1 817 825 0 825 824 1 824 816 0 816 819 0
		 819 818 0 818 817 0 819 821 0 821 820 0 820 818 0 821 823 0 823 822 1 822 820 0 823 827 0
		 827 826 1 826 822 0 825 829 0 829 828 0 828 824 0 827 831 0 831 830 0 830 826 0 829 830 0
		 831 828 0 832 833 0 833 838 0 838 839 0 839 832 0 832 835 0 835 834 0 834 833 0 835 837 0
		 837 836 0 836 834 0 837 839 0 838 836 0 840 841 0 841 845 0 845 844 0 844 840 0 840 843 0
		 843 842 1 842 841 0 843 849 0 849 848 1 848 842 0 845 847 0 847 846 1 846 844 0 847 851 0
		 851 850 1 850 846 0 849 854 0 854 855 0 855 848 0 851 853 0 853 852 0 852 850 0 853 855 0
		 854 852 0 856 857 0 857 861 0 861 860 0 860 856 0 856 859 0 859 858 0 858 857 0 859 862 0
		 862 863 0 863 858 0 861 863 0 862 860 0 864 865 0 865 870 0 870 871 0 871 864 0 864 867 0
		 867 866 1 866 865 0 867 875 0 875 874 1 874 866 0 868 869 1 869 873 0 873 872 1 872 868 0
		 868 871 0 870 869 0 873 877 0 877 876 0 876 872 0 875 879 0 879 878 0 878 874 0 877 878 0
		 879 876 0 880 881 0 881 886 0 886 887 0 887 880 0 880 883 0 883 882 1 882 881 0 883 891 0
		 891 890 1 890 882 0 884 885 1 885 889 0 889 888 1 888 884 0 884 887 0 886 885 0 889 893 0
		 893 892 0 892 888 0 891 895 0 895 894 0 894 890 0 893 894 0 895 892 0 896 897 0 897 902 0
		 902 903 0 903 896 0 896 899 0 899 898 1 898 897 0 899 907 0 907 906 1 906 898 0 900 901 1
		 901 905 0 905 904 1 904 900 0 900 903 0 902 901 0 905 909 0 909 908 0 908 904 0 907 911 0
		 911 910 0 910 906 0 909 910 0 911 908 0 790 785 1 794 793 1 806 801 1 810 809 1 822 817 1
		 826 825 1 846 843 1 850 849 1 866 869 1 874 873 1 882 885 1 890 889 1;
	setAttr ".ed[1660:1825]" 898 901 1 906 905 1 713 787 0 784 714 1 549 789 0 590 791 1
		 792 715 1 620 795 1 796 716 0 548 799 0 717 803 0 800 718 1 615 805 0 578 807 1 808 719 1
		 608 811 1 812 720 0 547 815 0 721 819 0 816 722 1 597 821 0 584 823 1 824 723 1 602 827 1
		 828 724 0 546 831 0 741 835 0 832 740 0 727 837 0 726 839 0 728 841 0 842 729 1 742 845 0
		 743 847 1 848 730 1 744 851 1 745 853 0 731 855 0 736 857 0 858 737 0 750 861 0 751 863 0
		 603 867 1 864 542 0 754 871 0 868 755 1 872 756 1 585 875 1 876 757 0 596 879 0 609 883 1
		 880 543 0 758 887 0 884 759 1 888 760 1 579 891 1 892 761 0 614 895 0 621 899 1 896 544 0
		 762 903 0 900 763 1 904 764 1 591 907 1 908 765 0 545 911 0 912 643 0 913 957 0 914 912 0
		 914 913 0 915 647 0 916 587 0 917 954 0 916 915 0 916 917 0 918 645 0 919 918 0 919 920 0
		 921 646 0 923 605 0 923 921 0 923 922 0 913 917 0 915 912 0 918 921 0 922 920 0 913 912 0
		 915 917 0 918 920 0 922 921 0 924 673 0 926 946 0 925 924 0 926 925 0 927 675 0 928 944 0
		 929 927 0 929 928 0 930 655 0 931 575 0 932 930 0 932 931 0 933 659 0 934 593 0 935 541 0
		 934 933 0 934 935 0 936 672 0 938 936 0 938 937 0 939 674 0 940 613 0 940 939 0 940 941 0
		 942 657 0 943 942 0 943 944 0 945 658 0 947 623 0 947 945 0 947 946 0 924 927 0 928 926 0
		 931 935 0 933 930 0 937 941 0 939 936 0 942 945 0 946 944 0 924 926 0 928 927 0 931 930 0
		 933 935 0 937 936 0 939 941 0 942 944 0 946 945 0 948 661 0 950 969 0 949 948 0 950 949 0
		 951 663 0 952 966 0 953 951 0 953 952 0 956 660 0 955 954 0 955 956 0 958 662 0 959 595 0
		 959 957 0 959 958 0 948 951 0 952 950 0 954 957 0 958 956 0 948 950 0 952 951 0 954 956 0
		 958 957 0 960 631 0 961 941 0 962 960 0 962 961 0 963 635 0 964 581 0;
	setAttr ".ed[1826:1991]" 965 937 0 964 963 0 964 965 0 967 633 0 968 966 0 968 967 0
		 970 611 0 971 634 0 970 969 0 970 971 0 961 965 0 963 960 0 967 971 0 969 966 0 961 960 0
		 963 965 0 967 966 0 969 971 0 972 671 0 973 1014 0 974 553 0 974 972 0 973 974 0
		 975 667 0 976 570 0 977 1017 0 976 975 0 977 976 0 978 666 0 980 978 0 980 979 0
		 981 670 0 982 599 0 982 981 0 983 982 0 973 977 0 975 972 0 979 983 0 981 978 0 973 972 0
		 975 977 0 979 978 0 981 983 0 984 683 0 985 1004 0 986 554 0 986 984 0 985 986 0
		 987 679 0 988 572 0 989 1006 0 988 987 0 989 988 0 990 649 0 991 551 0 992 990 0
		 992 991 0 993 651 0 994 589 0 995 561 0 994 993 0 995 994 0 996 678 0 998 996 0 998 997 0
		 999 682 0 1000 617 0 1000 999 0 1001 1000 0 1002 648 0 1003 1002 0 1004 1003 0 1005 650 0
		 1007 619 0 1007 1005 0 1007 1006 0 985 989 0 987 984 0 991 995 0 993 990 0 997 1001 0
		 999 996 0 1002 1005 0 1006 1004 0 985 984 0 987 989 0 991 990 0 993 995 0 997 996 0
		 999 1001 0 1002 1004 0 1006 1005 0 1008 625 0 1009 1001 0 1010 1008 0 1010 1009 0
		 1011 627 0 1012 577 0 1013 997 0 1012 1011 0 1013 1012 0 1015 624 0 1014 1016 0 1016 1015 0
		 1018 607 0 1019 626 0 1018 1017 0 1018 1019 0 1009 1013 0 1011 1008 0 1015 1019 0
		 1017 1014 0 1009 1008 0 1011 1013 0 1015 1014 0 1017 1019 0 1020 636 0 1021 1020 0
		 1022 1021 0 1023 638 0 1025 601 0 1025 1023 0 1025 1024 0 1026 979 0 1027 639 0 1028 583 0
		 1026 1028 0 1028 1027 0 1029 983 0 1031 637 0 1030 1029 0 1030 1031 1 1020 1023 0
		 1024 1022 0 1027 1031 0 1029 1026 0 1020 1022 0 1024 1023 0 1027 1026 0 1029 1031 0
		 1032 1033 0 1035 558 1 1036 563 1 1038 600 1 1039 582 1 1042 606 1 1043 576 1 1046 618 1
		 1047 588 1 1050 556 1 1051 712 1 1034 1035 0 1035 1036 0 1036 1037 0 1037 1038 0
		 1038 1039 0 1039 1040 0 1040 1041 0 1041 1042 0 1042 1043 0 1043 1044 0 1044 1045 0
		 1045 1046 0 1046 1047 0 1047 1048 0 1048 1049 0;
	setAttr ".ed[1992:2027]" 1049 1050 0 1050 1051 0 1052 767 1 1053 559 1 1054 569 1
		 1055 536 0 1058 594 1 1059 537 1 1062 612 1 1063 538 1 1066 539 0 1068 557 1 1052 1053 0
		 1053 1054 0 1054 1055 0 1055 1056 0 1056 1057 0 1057 1058 0 1058 1059 0 1059 1060 0
		 1060 1061 0 1061 1062 0 1062 1063 0 1063 1064 0 1064 1065 0 1065 1066 0 1066 1067 0
		 1067 1068 0 1068 1069 0 1069 1033 0 1032 1051 0 1070 739 1 1071 753 1 1070 1071 0
		 1034 1070 0 1071 1052 0;
	setAttr -s 958 -ch 3976 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 99 995 984 -95
		mu 0 4 0 1 2 3
		f 4 88 999 986 -84
		mu 0 4 4 5 6 7
		f 4 110 1003 988 -106
		mu 0 4 8 9 10 11
		f 4 97 93 118 -93
		mu 0 4 12 13 14 15
		f 4 86 82 152 -82
		mu 0 4 16 17 18 19
		f 4 108 104 50 -104
		mu 0 4 20 21 22 23
		f 6 302 350 337 301 329 316
		mu 0 6 24 25 26 27 28 29
		f 6 298 354 341 297 325 312
		mu 0 6 30 31 32 33 34 35
		f 6 294 358 345 293 321 308
		mu 0 6 36 37 38 39 40 41
		f 4 947 935 849 -941
		mu 0 4 42 43 44 45
		f 4 920 910 892 -906
		mu 0 4 46 47 48 49
		f 4 890 871 41 -867
		mu 0 4 50 51 52 53
		f 6 95 942 940 846 844 -90
		mu 0 6 54 55 42 45 56 57
		f 6 84 907 905 880 878 -79
		mu 0 6 58 59 46 49 60 61
		f 5 106 868 866 25 -101
		mu 0 5 62 63 50 53 64
		f 5 292 360 1008 962 306
		mu 0 5 65 66 67 68 69
		f 4 57 1005 989 32
		mu 0 4 70 71 72 73
		f 3 65 77 -42
		mu 0 3 52 74 53
		f 6 -346 359 -293 -307 320 -294
		mu 0 6 39 38 66 65 69 40
		f 4 56 -33 34 -51
		mu 0 4 22 70 73 23
		f 5 1012 1009 -306 -320 333
		mu 0 5 75 76 77 78 79
		f 4 991 982 -38 -982
		mu 0 4 80 81 82 83
		f 4 35 46 75 24
		mu 0 4 84 85 86 87
		f 6 305 361 334 304 332 319
		mu 0 6 78 77 88 89 90 79
		f 4 37 58 47 -40
		mu 0 4 83 82 91 92
		f 4 96 91 120 -91
		mu 0 4 93 94 95 96
		f 4 85 80 154 -80
		mu 0 4 97 98 99 100
		f 4 107 102 66 -102
		mu 0 4 101 102 103 74
		f 4 -47 43 38 62
		mu 0 4 86 85 104 105
		f 4 728 718 800 -714
		mu 0 4 106 107 108 109
		f 4 822 812 771 -808
		mu 0 4 110 111 112 113
		f 4 769 750 74 -746
		mu 0 4 114 115 116 117
		f 4 -52 -57 -20 -18
		mu 0 4 11 70 22 116
		f 4 1004 -58 51 -989
		mu 0 4 10 71 70 11
		f 4 -983 992 983 -53
		mu 0 4 82 81 118 119
		f 4 -59 52 14 18
		mu 0 4 91 82 119 120
		f 6 121 842 -936 938 937 90
		mu 0 6 96 121 44 43 122 93
		f 6 155 876 -911 912 909 79
		mu 0 6 100 123 48 47 124 97
		f 5 -872 873 870 101 -66
		mu 0 5 52 51 125 101 74
		f 3 -19 71 -70
		mu 0 3 91 120 126
		f 3 19 73 -75
		mu 0 3 116 22 117
		f 5 -105 109 747 745 -74
		mu 0 5 22 21 127 114 117
		f 3 -76 -61 40
		mu 0 3 87 86 128
		f 4 -67 -34 -43 -77
		mu 0 4 74 103 129 130
		f 4 -78 76 -31 -26
		mu 0 4 53 74 130 64
		f 4 168 169 -171 -135
		mu 0 4 131 132 133 58
		f 4 171 172 -174 -170
		mu 0 4 132 134 135 133
		f 4 -176 -173 177 178
		mu 0 4 136 135 134 137
		f 4 141 136 -86 -136
		mu 0 4 138 139 98 97
		f 6 299 353 -299 -313 326 313
		mu 0 6 140 141 31 30 35 142
		f 4 142 138 -87 -138
		mu 0 4 143 144 17 16
		f 4 -181 -183 183 184
		mu 0 4 145 146 147 148
		f 4 185 186 -188 -185
		mu 0 4 148 149 150 145
		f 4 188 139 -190 -187
		mu 0 4 149 151 4 150
		f 4 144 998 -89 -140
		mu 0 4 151 152 5 4
		f 4 190 191 -193 -124
		mu 0 4 153 154 155 54
		f 4 193 194 -196 -192
		mu 0 4 154 156 157 155
		f 4 -198 -195 199 200
		mu 0 4 158 157 156 159
		f 4 130 125 -97 -125
		mu 0 4 160 161 94 93
		f 6 303 349 -303 -317 330 317
		mu 0 6 162 163 25 24 29 164
		f 4 131 127 -98 -127
		mu 0 4 165 166 13 12
		f 4 -203 -205 205 206
		mu 0 4 167 168 169 170
		f 4 207 208 -210 -207
		mu 0 4 170 171 172 167
		f 4 210 128 -212 -209
		mu 0 4 171 173 0 172
		f 4 133 994 -100 -129
		mu 0 4 173 174 1 0
		f 4 212 213 -215 -158
		mu 0 4 175 176 177 62
		f 4 215 216 -218 -214
		mu 0 4 176 178 179 177
		f 4 -220 -217 221 222
		mu 0 4 180 179 178 181
		f 4 164 159 -108 -159
		mu 0 4 182 183 102 101
		f 6 295 357 -295 -309 322 309
		mu 0 6 184 185 37 36 41 186
		f 4 165 161 -109 -161
		mu 0 4 187 188 21 20
		f 4 -225 -227 227 228
		mu 0 4 189 190 191 192
		f 4 229 230 -232 -229
		mu 0 4 192 193 194 189
		f 4 232 162 -234 -231
		mu 0 4 193 195 8 194
		f 4 167 1002 -111 -163
		mu 0 4 195 196 9 8
		f 4 -985 996 985 -112
		mu 0 4 3 2 197 198
		f 4 -235 111 235 -237
		mu 0 4 199 3 198 200
		f 4 -238 236 238 -240
		mu 0 4 201 199 200 202
		f 4 -243 -244 239 -245
		mu 0 4 203 204 201 202
		f 4 -119 112 48 -114
		mu 0 4 15 14 205 206
		f 6 -338 351 338 300 328 -302
		mu 0 6 27 26 207 208 209 28
		f 4 -121 114 59 -116
		mu 0 4 96 95 210 211
		f 4 -246 -248 249 -251
		mu 0 4 212 213 214 215
		f 4 -252 245 252 -254
		mu 0 4 216 213 212 217
		f 4 -255 253 255 -117
		mu 0 4 57 216 217 218
		f 5 10 930 -130 -12 -25
		mu 0 5 87 219 220 153 84
		f 4 44 945 -11 -41
		mu 0 4 128 221 219 87
		f 5 -933 934 -45 60 61
		mu 0 5 160 222 221 128 86
		f 4 7 -131 -62 -63
		mu 0 4 105 161 160 86
		f 6 -335 348 -304 -318 331 -305
		mu 0 6 89 88 163 162 164 90
		f 4 53 -132 -5 -48
		mu 0 4 91 166 165 92
		f 4 3 731 -71 -72
		mu 0 4 120 223 224 126
		f 5 0 -726 727 -4 -15
		mu 0 5 119 173 225 223 120
		f 4 993 -134 -1 -984
		mu 0 4 118 174 173 119
		f 4 847 837 923 -832
		mu 0 4 226 227 228 229
		f 6 -917 918 -838 839 836 64
		mu 0 6 138 230 228 227 231 211
		f 4 8 -142 -65 -60
		mu 0 4 210 139 138 211
		f 6 -339 352 -300 -314 327 -301
		mu 0 6 208 207 141 140 142 209
		f 4 54 -143 -6 -49
		mu 0 4 205 144 143 206
		f 4 799 784 825 -789
		mu 0 4 232 233 234 235
		f 6 1 -819 820 -785 786 -16
		mu 0 6 198 151 236 234 233 237
		f 4 997 -145 -2 -986
		mu 0 4 197 152 151 198
		f 4 -987 1000 987 -146
		mu 0 4 7 6 238 239
		f 4 -257 145 257 -259
		mu 0 4 240 7 239 241
		f 4 -260 258 260 -262
		mu 0 4 242 240 241 243
		f 4 -265 -266 261 -267
		mu 0 4 244 245 242 243
		f 4 -153 146 49 -148
		mu 0 4 19 18 246 247
		f 6 -342 355 342 296 324 -298
		mu 0 6 33 32 248 249 250 34
		f 4 -155 148 63 -150
		mu 0 4 100 99 251 252
		f 4 -268 -270 271 -273
		mu 0 4 253 254 255 256
		f 4 -274 267 274 -276
		mu 0 4 257 254 253 258
		f 4 -277 275 277 -151
		mu 0 4 61 257 258 259
		f 4 888 862 895 -857
		mu 0 4 260 261 262 263
		f 6 -886 887 -863 864 861 67
		mu 0 6 182 264 262 261 265 252
		f 4 9 -165 -68 -64
		mu 0 4 251 183 182 252
		f 6 -343 356 -296 -310 323 -297
		mu 0 6 249 248 185 184 186 250
		f 4 55 -166 -7 -50
		mu 0 4 246 188 187 247
		f 4 768 737 774 -742
		mu 0 4 266 267 268 269
		f 6 2 -765 766 -738 739 -17
		mu 0 6 239 195 270 268 267 271
		f 4 1001 -168 -3 -988
		mu 0 4 238 196 195 239
		f 4 140 915 913 -169
		mu 0 4 131 272 273 132
		f 4 922 917 -172 -914
		mu 0 4 273 274 134 132
		f 4 921 904 173 -909
		mu 0 4 275 276 133 135
		f 5 -910 911 908 175 -175
		mu 0 5 97 124 275 135 136
		f 4 135 174 -179 -177
		mu 0 4 138 97 136 137
		f 4 -139 181 182 -180
		mu 0 4 17 144 147 146
		f 5 143 817 815 -184 -182
		mu 0 5 144 277 278 148 147
		f 4 824 819 -186 -816
		mu 0 4 278 279 149 148
		f 4 823 806 187 -811
		mu 0 4 280 281 145 150
		f 4 -812 813 810 189
		mu 0 4 4 282 280 150
		f 4 129 929 928 -191
		mu 0 4 153 220 283 154
		f 4 944 931 -194 -929
		mu 0 4 283 284 156 154
		f 4 946 941 195 -937
		mu 0 4 285 286 155 157
		f 5 -938 939 936 197 -197
		mu 0 5 93 122 285 157 158
		f 4 124 196 -201 -199
		mu 0 4 160 93 158 159
		f 4 -128 203 204 -202
		mu 0 4 13 166 169 168
		f 5 132 722 721 -206 -204
		mu 0 5 166 287 288 170 169
		f 4 730 724 -208 -722
		mu 0 4 288 289 171 170
		f 4 729 712 209 -717
		mu 0 4 290 291 167 172
		f 4 -718 719 716 211
		mu 0 4 0 292 290 172
		f 4 163 882 881 -213
		mu 0 4 175 293 294 176
		f 4 894 884 -216 -882
		mu 0 4 294 295 178 176
		f 4 891 865 217 -870
		mu 0 4 296 297 177 179
		f 5 -871 872 869 219 -219
		mu 0 5 101 125 296 179 180
		f 4 158 218 -223 -221
		mu 0 4 182 101 180 181
		f 4 -162 225 226 -224
		mu 0 4 21 188 191 190
		f 5 166 761 760 -228 -226
		mu 0 5 188 298 299 192 191
		f 4 773 763 -230 -761
		mu 0 4 299 300 193 192
		f 4 770 744 231 -749
		mu 0 4 301 302 189 194
		f 4 -750 751 748 233
		mu 0 4 8 303 301 194
		f 4 15 785 783 -236
		mu 0 4 198 237 304 200
		f 4 801 791 237 -795
		mu 0 4 305 306 199 201
		f 4 798 787 -239 -784
		mu 0 4 304 307 202 200
		f 4 -113 240 242 -242
		mu 0 4 205 14 204 203
		f 5 -796 797 794 243 -241
		mu 0 5 14 308 305 201 204
		f 4 115 248 -250 -247
		mu 0 4 96 211 215 214
		f 5 -837 838 835 250 -249
		mu 0 5 211 231 309 212 215
		f 4 850 840 251 -844
		mu 0 4 310 311 213 216
		f 4 848 830 -253 -836
		mu 0 4 309 312 217 212
		f 4 -845 845 843 254
		mu 0 4 57 56 310 216
		f 4 16 738 736 -258
		mu 0 4 239 271 313 241
		f 4 772 753 259 -757
		mu 0 4 314 315 240 242
		f 4 767 740 -261 -737
		mu 0 4 313 316 243 241
		f 4 -147 262 264 -264
		mu 0 4 246 18 245 244
		f 5 -758 758 756 265 -263
		mu 0 5 18 317 314 242 245
		f 4 149 270 -272 -269
		mu 0 4 100 252 256 255
		f 5 -862 863 860 272 -271
		mu 0 5 252 265 318 253 256
		f 4 893 874 273 -878
		mu 0 4 319 320 254 257
		f 4 889 855 -275 -861
		mu 0 4 318 321 258 253
		f 4 -879 879 877 276
		mu 0 4 61 60 319 257
		f 4 -321 -32 33 -308
		mu 0 4 40 69 129 103
		f 4 -312 -325 310 -149
		mu 0 4 99 34 250 251
		f 4 -316 -329 314 -115
		mu 0 4 95 28 209 210
		f 4 36 -333 318 -39
		mu 0 4 104 79 90 105
		f 4 -350 335 373 -337
		mu 0 4 25 163 322 323
		f 4 -354 339 377 -341
		mu 0 4 31 141 324 325
		f 4 -358 343 381 -345
		mu 0 4 37 185 326 327
		f 4 383 -347 -360 -370
		mu 0 4 328 329 66 38
		f 4 -1010 1011 1010 -348
		mu 0 4 77 76 330 331
		f 4 -362 347 385 362
		mu 0 4 88 77 331 332
		f 6 -364 -373 -279 -387 394 -280
		mu 0 6 333 322 332 334 335 336
		f 6 -365 -374 363 279 395 -281
		mu 0 6 337 323 322 333 336 338
		f 6 281 -375 364 280 396 387
		mu 0 6 339 340 323 337 338 341
		f 6 282 -376 -282 -388 397 388
		mu 0 6 342 343 340 339 341 344
		f 6 -366 -377 -283 -389 398 -284
		mu 0 6 345 324 343 342 344 346
		f 6 -367 -378 365 283 399 -285
		mu 0 6 347 325 324 345 346 348
		f 6 285 -379 366 284 400 389
		mu 0 6 349 350 325 347 348 351
		f 6 286 -380 -286 -390 401 390
		mu 0 6 352 353 350 349 351 354
		f 6 -368 -381 -287 -391 402 -288
		mu 0 6 355 326 353 352 354 356
		f 6 -369 -382 367 287 403 -289
		mu 0 6 357 327 326 355 356 358
		f 6 289 -383 368 288 404 391
		mu 0 6 359 328 327 357 358 360
		f 6 -371 -384 -290 -392 405 -291
		mu 0 6 361 329 328 359 360 362
		f 5 1007 -385 370 290 406
		mu 0 5 363 364 329 361 362
		f 5 -372 -1011 1013 980 -292
		mu 0 5 365 331 330 366 367
		f 6 278 -386 371 291 407 386
		mu 0 6 334 332 331 365 367 335
		f 4 -398 -120 113 21
		mu 0 4 344 341 15 206
		f 4 -402 -154 147 22
		mu 0 4 354 351 19 247
		f 4 -393 -406 -24 -35
		mu 0 4 73 362 360 23
		f 4 1006 -407 392 -990
		mu 0 4 72 363 362 73
		f 4 -981 990 981 -394
		mu 0 4 367 366 80 83
		f 4 -408 393 39 20
		mu 0 4 335 367 83 92
		f 4 408 409 410 411
		mu 0 4 368 369 370 371
		f 4 -409 412 413 414
		mu 0 4 369 368 372 373
		f 4 -414 415 416 417
		mu 0 4 373 372 374 375
		f 4 -411 418 419 420
		mu 0 4 371 370 376 377
		f 4 -420 421 422 423
		mu 0 4 377 376 378 379
		f 4 -417 424 425 426
		mu 0 4 375 374 380 381
		f 4 -423 427 428 429
		mu 0 4 379 378 382 383
		f 4 -429 430 -426 431
		mu 0 4 383 382 381 380
		f 4 -413 -412 -421 432
		mu 0 4 372 368 371 377
		f 4 -416 -433 -424 433
		mu 0 4 374 372 377 379
		f 4 -430 -432 -425 -434
		mu 0 4 379 383 380 374
		f 4 -355 434 -415 435
		mu 0 4 32 31 369 373
		f 4 340 436 -410 -435
		mu 0 4 31 325 370 369
		f 4 378 437 -419 -437
		mu 0 4 325 350 376 370
		f 4 -356 -436 -418 438
		mu 0 4 248 32 373 375
		f 4 379 439 -422 -438
		mu 0 4 350 353 378 376
		f 4 380 440 -428 -440
		mu 0 4 353 326 382 378
		f 4 -344 441 -431 -441
		mu 0 4 326 185 381 382
		f 4 -357 -439 -427 -442
		mu 0 4 185 248 375 381
		f 4 442 443 444 445
		mu 0 4 384 385 386 387
		f 4 -443 446 447 448
		mu 0 4 385 384 388 389
		f 4 -448 449 450 451
		mu 0 4 389 388 390 391
		f 4 -451 452 453 454
		mu 0 4 391 390 392 393
		f 4 -454 455 456 457
		mu 0 4 393 392 394 395
		f 4 -445 458 459 460
		mu 0 4 387 386 396 397
		f 4 -457 461 462 463
		mu 0 4 395 394 398 399
		f 4 -460 464 -463 465
		mu 0 4 397 396 399 398
		f 4 466 467 468 469
		mu 0 4 400 401 402 403
		f 4 -467 470 471 472
		mu 0 4 401 400 404 405
		f 4 -472 473 474 475
		mu 0 4 405 404 406 407
		f 4 -475 476 477 478
		mu 0 4 407 406 408 409
		f 4 -478 479 480 481
		mu 0 4 409 408 410 411
		f 4 -469 482 483 484
		mu 0 4 403 402 412 413
		f 4 -481 485 486 487
		mu 0 4 411 410 414 415
		f 4 -484 488 -487 489
		mu 0 4 413 412 415 414
		f 4 490 491 492 493
		mu 0 4 416 417 418 419
		f 4 -491 494 495 496
		mu 0 4 417 416 420 421
		f 4 -496 497 498 499
		mu 0 4 421 420 422 423
		f 4 -499 500 501 502
		mu 0 4 423 422 424 425
		f 4 -502 503 504 505
		mu 0 4 425 424 426 427
		f 4 -493 506 507 508
		mu 0 4 419 418 428 429
		f 4 -505 509 510 511
		mu 0 4 427 426 430 431
		f 4 -508 512 -511 513
		mu 0 4 429 428 431 430
		f 4 514 515 516 517
		mu 0 4 432 433 434 435
		f 4 -515 518 519 520
		mu 0 4 433 432 436 437
		f 4 -520 521 522 523
		mu 0 4 437 436 438 439
		f 4 -523 524 -517 525
		mu 0 4 439 438 435 434
		f 4 526 527 528 529
		mu 0 4 440 441 442 443
		f 4 -527 530 531 532
		mu 0 4 441 440 444 445
		f 4 -532 533 534 535
		mu 0 4 445 444 446 447
		f 4 -529 536 537 538
		mu 0 4 443 442 448 449
		f 4 -538 539 540 541
		mu 0 4 449 448 450 451
		f 4 -535 542 543 544
		mu 0 4 447 446 452 453
		f 4 -541 545 546 547
		mu 0 4 451 450 454 455
		f 4 -547 548 -544 549
		mu 0 4 455 454 453 452
		f 4 550 551 552 553
		mu 0 4 456 457 458 459
		f 4 -551 554 555 556
		mu 0 4 457 456 460 461
		f 4 -556 557 558 559
		mu 0 4 461 460 462 463
		f 4 -553 560 -559 561
		mu 0 4 459 458 463 462
		f 4 562 563 564 565
		mu 0 4 464 465 466 467
		f 4 -563 566 567 568
		mu 0 4 465 464 468 469
		f 4 -568 569 570 571
		mu 0 4 469 468 470 471
		f 4 572 573 574 575
		mu 0 4 472 473 474 475
		f 4 -573 576 -565 577
		mu 0 4 473 472 467 466
		f 4 -575 578 579 580
		mu 0 4 475 474 476 477
		f 4 -571 581 582 583
		mu 0 4 471 470 478 479
		f 4 -580 584 -583 585
		mu 0 4 477 476 479 478
		f 4 586 587 588 589
		mu 0 4 480 481 482 483
		f 4 -587 590 591 592
		mu 0 4 481 480 484 485
		f 4 -592 593 594 595
		mu 0 4 485 484 486 487
		f 4 596 597 598 599
		mu 0 4 488 489 490 491
		f 4 -597 600 -589 601
		mu 0 4 489 488 483 482
		f 4 -599 602 603 604
		mu 0 4 491 490 492 493
		f 4 -595 605 606 607
		mu 0 4 487 486 494 495
		f 4 -604 608 -607 609
		mu 0 4 493 492 495 494
		f 4 610 611 612 613
		mu 0 4 496 497 498 499
		f 4 -611 614 615 616
		mu 0 4 497 496 500 501
		f 4 -616 617 618 619
		mu 0 4 501 500 502 503
		f 4 620 621 622 623
		mu 0 4 504 505 506 507
		f 4 -621 624 -613 625
		mu 0 4 505 504 499 498
		f 4 -623 626 627 628
		mu 0 4 507 506 508 509
		f 4 -619 629 630 631
		mu 0 4 503 502 510 511
		f 4 -628 632 -631 633
		mu 0 4 509 508 511 510
		f 4 634 -449 -452 -455
		mu 0 4 393 385 389 391
		f 4 635 -444 -635 -458
		mu 0 4 395 386 385 393
		f 4 -459 -636 -464 -465
		mu 0 4 396 386 395 399
		f 4 636 -473 -476 -479
		mu 0 4 409 401 405 407
		f 4 637 -468 -637 -482
		mu 0 4 411 402 401 409
		f 4 -483 -638 -488 -489
		mu 0 4 412 402 411 415
		f 4 638 -497 -500 -503
		mu 0 4 425 417 421 423
		f 4 639 -492 -639 -506
		mu 0 4 427 418 417 425
		f 4 -507 -640 -512 -513
		mu 0 4 428 418 427 431
		f 4 -521 -524 -526 -516
		mu 0 4 433 437 439 434
		f 4 -531 -530 -539 640
		mu 0 4 444 440 443 449
		f 4 -534 -641 -542 641
		mu 0 4 446 444 449 451
		f 4 -548 -550 -543 -642
		mu 0 4 451 455 452 446
		f 4 -555 -554 -562 -558
		mu 0 4 460 456 459 462
		f 4 -569 642 -578 -564
		mu 0 4 465 469 473 466
		f 4 -574 -643 -572 643
		mu 0 4 474 473 469 471
		f 4 -579 -644 -584 -585
		mu 0 4 476 474 471 479
		f 4 -593 644 -602 -588
		mu 0 4 481 485 489 482
		f 4 -598 -645 -596 645
		mu 0 4 490 489 485 487
		f 4 -603 -646 -608 -609
		mu 0 4 492 490 487 495
		f 4 -617 646 -626 -612
		mu 0 4 497 501 505 498
		f 4 -622 -647 -620 647
		mu 0 4 506 505 501 503
		f 4 -627 -648 -632 -633
		mu 0 4 508 506 503 511
		f 4 -322 648 -447 649
		mu 0 4 41 40 388 384
		f 4 307 650 -450 -649
		mu 0 4 40 103 390 388
		f 4 -103 651 -453 -651
		mu 0 4 103 102 392 390
		f 4 -323 -650 -446 652
		mu 0 4 186 41 384 387
		f 4 -160 653 -456 -652
		mu 0 4 102 183 394 392
		f 4 -324 -653 -461 654
		mu 0 4 250 186 387 397
		f 4 -10 655 -462 -654
		mu 0 4 183 251 398 394
		f 4 -311 -655 -466 -656
		mu 0 4 251 250 397 398
		f 4 -326 656 -471 657
		mu 0 4 35 34 404 400
		f 4 311 658 -474 -657
		mu 0 4 34 99 406 404
		f 4 -81 659 -477 -659
		mu 0 4 99 98 408 406
		f 4 -327 -658 -470 660
		mu 0 4 142 35 400 403
		f 4 -137 661 -480 -660
		mu 0 4 98 139 410 408
		f 4 -328 -661 -485 662
		mu 0 4 209 142 403 413
		f 4 -9 663 -486 -662
		mu 0 4 139 210 414 410
		f 4 -315 -663 -490 -664
		mu 0 4 210 209 413 414
		f 4 -330 664 -495 665
		mu 0 4 29 28 420 416
		f 4 315 666 -498 -665
		mu 0 4 28 95 422 420
		f 4 -92 667 -501 -667
		mu 0 4 95 94 424 422
		f 4 -331 -666 -494 668
		mu 0 4 164 29 416 419
		f 4 -126 669 -504 -668
		mu 0 4 94 161 426 424
		f 4 -332 -669 -509 670
		mu 0 4 90 164 419 429
		f 4 -8 671 -510 -670
		mu 0 4 161 105 430 426
		f 4 -319 -671 -514 -672
		mu 0 4 105 90 429 430
		f 4 372 672 -519 673
		mu 0 4 332 322 436 432
		f 4 -336 674 -522 -673
		mu 0 4 322 163 438 436
		f 4 -349 675 -525 -675
		mu 0 4 163 88 435 438
		f 4 -363 -674 -518 -676
		mu 0 4 88 332 432 435
		f 4 -351 676 -533 677
		mu 0 4 26 25 441 445
		f 4 336 678 -528 -677
		mu 0 4 25 323 442 441
		f 4 374 679 -537 -679
		mu 0 4 323 340 448 442
		f 4 -352 -678 -536 680
		mu 0 4 207 26 445 447
		f 4 375 681 -540 -680
		mu 0 4 340 343 450 448
		f 4 376 682 -546 -682
		mu 0 4 343 324 454 450
		f 4 -340 683 -549 -683
		mu 0 4 324 141 453 454
		f 4 -353 -681 -545 -684
		mu 0 4 141 207 447 453
		f 4 -359 684 -557 685
		mu 0 4 38 37 457 461
		f 4 344 686 -552 -685
		mu 0 4 37 327 458 457
		f 4 382 687 -561 -687
		mu 0 4 327 328 463 458
		f 4 369 -686 -560 -688
		mu 0 4 328 38 461 463
		f 4 4 688 -567 689
		mu 0 4 92 165 468 464
		f 4 -395 690 -577 691
		mu 0 4 336 335 467 472
		f 4 -21 -690 -566 -691
		mu 0 4 335 92 464 467
		f 4 -396 -692 -576 692
		mu 0 4 338 336 472 475
		f 4 126 693 -570 -689
		mu 0 4 165 12 470 468
		f 4 -397 -693 -581 694
		mu 0 4 341 338 475 477
		f 4 92 695 -582 -694
		mu 0 4 12 15 478 470
		f 4 119 -695 -586 -696
		mu 0 4 15 341 477 478
		f 4 5 696 -591 697
		mu 0 4 206 143 484 480
		f 4 -399 698 -601 699
		mu 0 4 346 344 483 488
		f 4 -22 -698 -590 -699
		mu 0 4 344 206 480 483
		f 4 -400 -700 -600 700
		mu 0 4 348 346 488 491
		f 4 137 701 -594 -697
		mu 0 4 143 16 486 484
		f 4 -401 -701 -605 702
		mu 0 4 351 348 491 493
		f 4 81 703 -606 -702
		mu 0 4 16 19 494 486
		f 4 153 -703 -610 -704
		mu 0 4 19 351 493 494
		f 4 6 704 -615 705
		mu 0 4 247 187 500 496
		f 4 -403 706 -625 707
		mu 0 4 356 354 499 504
		f 4 -23 -706 -614 -707
		mu 0 4 354 247 496 499
		f 4 -404 -708 -624 708
		mu 0 4 358 356 504 507
		f 4 160 709 -618 -705
		mu 0 4 187 20 502 500
		f 4 -405 -709 -629 710
		mu 0 4 360 358 507 509
		f 4 103 711 -630 -710
		mu 0 4 20 23 510 502
		f 4 23 -711 -634 -712
		mu 0 4 23 360 509 510
		f 5 -715 -99 201 202 -713
		mu 0 5 291 512 13 168 167
		f 6 -721 717 94 117 792 -719
		mu 0 6 107 292 0 3 513 108
		f 5 -724 -133 -54 69 70
		mu 0 5 224 287 166 91 126
		f 4 -727 725 -211 -725
		mu 0 4 289 225 173 171
		f 4 732 -730 733 -729
		mu 0 4 106 291 290 107
		f 4 734 -732 735 -731
		mu 0 4 288 224 223 289
		f 3 -733 -716 714
		mu 0 3 291 106 512
		f 3 -720 720 -734
		mu 0 3 290 292 107
		f 3 -723 723 -735
		mu 0 3 288 287 224
		f 3 -736 -728 726
		mu 0 3 289 223 225
		f 5 -743 -73 263 266 -741
		mu 0 5 316 514 246 244 243
		f 5 -747 -110 223 224 -745
		mu 0 5 302 127 21 190 189
		f 5 -753 749 105 17 -751
		mu 0 5 115 303 8 11 116
		f 4 -755 -152 256 -754
		mu 0 4 315 515 7 240
		f 6 -760 757 -83 87 809 807
		mu 0 6 113 317 18 17 516 110
		f 6 -763 -167 -56 72 743 741
		mu 0 6 269 298 188 246 514 266
		f 4 -766 764 -233 -764
		mu 0 4 300 270 195 193
		f 4 775 -769 776 -768
		mu 0 4 313 267 266 316
		f 4 777 -771 778 -770
		mu 0 4 114 302 301 115
		f 4 779 -773 780 -772
		mu 0 4 112 315 314 113
		f 4 781 -775 782 -774
		mu 0 4 299 269 268 300
		f 3 -739 -740 -776
		mu 0 3 313 271 267
		f 3 -777 -744 742
		mu 0 3 316 266 514
		f 3 -778 -748 746
		mu 0 3 302 114 127
		f 3 -752 752 -779
		mu 0 3 301 303 115
		f 3 -780 -756 754
		mu 0 3 315 112 515
		f 3 -759 759 -781
		mu 0 3 314 317 113
		f 3 -762 762 -782
		mu 0 3 299 298 269
		f 3 -783 -767 765
		mu 0 3 300 268 270
		f 5 -790 -69 241 244 -788
		mu 0 5 307 517 205 203 202
		f 4 -794 -118 234 -792
		mu 0 4 306 513 3 199
		f 6 -797 795 -94 98 715 713
		mu 0 6 109 308 14 13 512 106
		f 4 802 -800 803 -799
		mu 0 4 304 233 232 307
		f 4 804 -802 805 -801
		mu 0 4 108 306 305 109
		f 3 -786 -787 -803
		mu 0 3 304 237 233
		f 3 -804 -791 789
		mu 0 3 307 232 517
		f 3 -793 793 -805
		mu 0 3 108 513 306
		f 3 -806 -798 796
		mu 0 3 109 305 308
		f 5 -809 -88 179 180 -807
		mu 0 5 281 516 17 146 145
		f 6 -815 811 83 151 755 -813
		mu 0 6 111 282 4 7 515 112
		f 6 -817 -144 -55 68 790 788
		mu 0 6 235 277 144 205 517 232
		f 4 -822 818 -189 -820
		mu 0 4 279 236 151 149
		f 4 826 -824 827 -823
		mu 0 4 110 281 280 111
		f 4 828 -826 829 -825
		mu 0 4 278 235 234 279
		f 3 -827 -810 808
		mu 0 3 281 110 516
		f 3 -814 814 -828
		mu 0 3 280 282 111
		f 3 -829 -818 816
		mu 0 3 235 278 277
		f 3 -821 821 -830
		mu 0 3 234 236 279
		f 4 -834 832 -256 -831
		mu 0 4 312 518 218 217
		f 6 -835 831 914 -141 -13 -833
		mu 0 6 518 226 229 272 131 218
		f 5 -842 -122 246 247 -841
		mu 0 5 311 121 96 214 213
		f 4 851 -849 852 -848
		mu 0 4 226 312 309 227
		f 4 853 -851 854 -850
		mu 0 4 44 311 310 45
		f 3 -852 834 833
		mu 0 3 312 226 518
		f 3 -839 -840 -853
		mu 0 3 309 231 227
		f 3 -854 -843 841
		mu 0 3 311 44 121
		f 3 -846 -847 -855
		mu 0 3 310 56 45
		f 4 -859 857 -278 -856
		mu 0 4 321 519 259 258
		f 6 -860 856 883 -164 -14 -858
		mu 0 6 519 260 263 293 175 259
		f 4 -868 -107 214 -866
		mu 0 4 297 63 62 177
		f 5 -876 -156 268 269 -875
		mu 0 5 320 123 100 255 254
		f 5 -887 885 220 -222 -885
		mu 0 5 295 264 182 181 178
		f 4 896 -890 897 -889
		mu 0 4 260 321 318 261
		f 4 898 -892 899 -891
		mu 0 4 50 297 296 51
		f 4 900 -894 901 -893
		mu 0 4 48 320 319 49
		f 4 902 -896 903 -895
		mu 0 4 294 263 262 295
		f 3 -897 859 858
		mu 0 3 321 260 519
		f 3 -864 -865 -898
		mu 0 3 318 265 261
		f 3 -899 -869 867
		mu 0 3 297 50 63
		f 3 -873 -874 -900
		mu 0 3 296 125 51
		f 3 -901 -877 875
		mu 0 3 320 48 123
		f 3 -880 -881 -902
		mu 0 3 319 60 49
		f 3 -883 -884 -903
		mu 0 3 294 293 263
		f 3 -904 -888 886
		mu 0 3 295 262 264
		f 4 -907 -85 170 -905
		mu 0 4 276 59 58 133
		f 5 -920 916 176 -178 -918
		mu 0 5 274 230 138 137 134
		f 4 924 -922 925 -921
		mu 0 4 46 276 275 47
		f 4 926 -924 927 -923
		mu 0 4 273 229 228 274
		f 3 -925 -908 906
		mu 0 3 276 46 59
		f 3 -912 -913 -926
		mu 0 3 275 124 47
		f 3 -927 -916 -915
		mu 0 3 229 273 272
		f 3 -919 919 -928
		mu 0 3 228 230 274
		f 5 -934 932 198 -200 -932
		mu 0 5 284 222 160 159 156
		f 4 -944 -96 192 -942
		mu 0 4 286 55 54 155
		f 4 948 -946 949 -945
		mu 0 4 283 219 221 284
		f 4 950 -948 951 -947
		mu 0 4 285 43 42 286
		f 3 -930 -931 -949
		mu 0 3 283 220 219
		f 3 -950 -935 933
		mu 0 3 284 221 222
		f 3 -951 -940 -939
		mu 0 3 43 285 122
		f 3 -943 943 -952
		mu 0 3 42 55 286
		f 4 384 -953 -361 346
		mu 0 4 329 364 67 66
		f 4 -964 -334 -37 -954
		mu 0 4 520 75 79 104
		f 4 -955 -965 953 -44
		mu 0 4 85 521 520 104
		f 4 -966 954 -36 26
		mu 0 4 522 521 85 84
		f 4 11 -956 -967 -27
		mu 0 4 84 153 523 522
		f 4 -968 955 123 -957
		mu 0 4 524 523 153 54
		f 4 -969 956 89 122
		mu 0 4 525 524 54 57
		f 4 -970 -123 116 27
		mu 0 4 526 525 57 218
		f 4 12 -958 -971 -28
		mu 0 4 218 131 527 526
		f 4 -972 957 134 -959
		mu 0 4 528 527 131 58
		f 4 -973 958 78 156
		mu 0 4 529 528 58 61
		f 4 -974 -157 150 28
		mu 0 4 530 529 61 259
		f 4 13 -960 -975 -29
		mu 0 4 259 175 531 530
		f 4 -976 959 157 -961
		mu 0 4 532 531 175 62
		f 4 -977 960 100 29
		mu 0 4 533 532 62 64
		f 4 45 -978 -30 30
		mu 0 4 130 534 533 64
		f 4 -979 -46 42 -962
		mu 0 4 535 534 130 129
		f 4 -963 -980 961 31
		mu 0 4 69 68 535 129
		f 4 1113 2009 1998 -1109
		mu 0 4 536 537 538 539
		f 4 1102 2013 2000 -1098
		mu 0 4 540 541 542 543
		f 4 1124 2017 2002 -1120
		mu 0 4 544 545 546 547
		f 4 1111 1107 1132 -1107
		mu 0 4 548 549 550 551
		f 4 1100 1096 1166 -1096
		mu 0 4 552 553 554 555
		f 4 1122 1118 1064 -1118
		mu 0 4 556 557 558 559
		f 6 1316 1364 1351 1315 1343 1330
		mu 0 6 560 561 562 563 564 565
		f 6 1312 1368 1355 1311 1339 1326
		mu 0 6 566 567 568 569 570 571
		f 6 1308 1372 1359 1307 1335 1322
		mu 0 6 572 573 574 575 576 577
		f 4 1961 1949 1863 -1955
		mu 0 4 578 579 580 581
		f 4 1934 1924 1906 -1920
		mu 0 4 582 583 584 585
		f 4 1904 1885 1055 -1881
		mu 0 4 586 587 588 589
		f 6 1109 1956 1954 1860 1858 -1104
		mu 0 6 590 591 578 581 592 593
		f 6 1098 1921 1919 1894 1892 -1093
		mu 0 6 594 595 582 585 596 597
		f 5 1120 1882 1880 1039 -1115
		mu 0 5 598 599 586 589 600
		f 5 1306 1374 2022 1976 1320
		mu 0 5 601 602 603 604 605
		f 4 1071 2019 2003 1046
		mu 0 4 606 607 608 609
		f 3 1079 1091 -1056
		mu 0 3 588 610 589
		f 6 -1360 1373 -1307 -1321 1334 -1308
		mu 0 6 575 574 602 601 605 576
		f 4 1070 -1047 1048 -1065
		mu 0 4 558 606 609 559
		f 5 2026 2023 -1320 -1334 1347
		mu 0 5 611 612 613 614 615;
	setAttr ".fc[500:957]"
		f 4 2005 1996 -1052 -1996
		mu 0 4 616 617 618 619
		f 4 1049 1060 1089 1038
		mu 0 4 620 621 622 623
		f 6 1319 1375 1348 1318 1346 1333
		mu 0 6 614 613 624 625 626 615
		f 4 1051 1072 1061 -1054
		mu 0 4 619 618 627 628
		f 4 1110 1105 1134 -1105
		mu 0 4 629 630 631 632
		f 4 1099 1094 1168 -1094
		mu 0 4 633 634 635 636
		f 4 1121 1116 1080 -1116
		mu 0 4 637 638 639 610
		f 4 -1061 1057 1052 1076
		mu 0 4 622 621 640 641
		f 4 1742 1732 1814 -1728
		mu 0 4 642 643 644 645
		f 4 1836 1826 1785 -1822
		mu 0 4 646 647 648 649
		f 4 1783 1764 1088 -1760
		mu 0 4 650 651 652 653
		f 4 -1066 -1071 -1034 -1032
		mu 0 4 547 606 558 652
		f 4 2018 -1072 1065 -2003
		mu 0 4 546 607 606 547
		f 4 -1997 2006 1997 -1067
		mu 0 4 618 617 654 655
		f 4 -1073 1066 1028 1032
		mu 0 4 627 618 655 656
		f 6 1135 1856 -1950 1952 1951 1104
		mu 0 6 632 657 580 579 658 629
		f 6 1169 1890 -1925 1926 1923 1093
		mu 0 6 636 659 584 583 660 633
		f 5 -1886 1887 1884 1115 -1080
		mu 0 5 588 587 661 637 610
		f 3 -1033 1085 -1084
		mu 0 3 627 656 662
		f 3 1033 1087 -1089
		mu 0 3 652 558 653
		f 5 -1119 1123 1761 1759 -1088
		mu 0 5 558 557 663 650 653
		f 3 -1090 -1075 1054
		mu 0 3 623 622 664
		f 4 -1081 -1048 -1057 -1091
		mu 0 4 610 639 665 666
		f 4 -1092 1090 -1045 -1040
		mu 0 4 589 610 666 600
		f 4 1182 1183 -1185 -1149
		mu 0 4 667 668 669 594
		f 4 1185 1186 -1188 -1184
		mu 0 4 668 670 671 669
		f 4 -1190 -1187 1191 1192
		mu 0 4 672 671 670 673
		f 4 1155 1150 -1100 -1150
		mu 0 4 674 675 634 633
		f 6 1313 1367 -1313 -1327 1340 1327
		mu 0 6 676 677 567 566 571 678
		f 4 1156 1152 -1101 -1152
		mu 0 4 679 680 553 552
		f 4 -1195 -1197 1197 1198
		mu 0 4 681 682 683 684
		f 4 1199 1200 -1202 -1199
		mu 0 4 684 685 686 681
		f 4 1202 1153 -1204 -1201
		mu 0 4 685 687 540 686
		f 4 1158 2012 -1103 -1154
		mu 0 4 687 688 541 540
		f 4 1204 1205 -1207 -1138
		mu 0 4 689 690 691 590
		f 4 1207 1208 -1210 -1206
		mu 0 4 690 692 693 691
		f 4 -1212 -1209 1213 1214
		mu 0 4 694 693 692 695
		f 4 1144 1139 -1111 -1139
		mu 0 4 696 697 630 629
		f 6 1317 1363 -1317 -1331 1344 1331
		mu 0 6 698 699 561 560 565 700
		f 4 1145 1141 -1112 -1141
		mu 0 4 701 702 549 548
		f 4 -1217 -1219 1219 1220
		mu 0 4 703 704 705 706
		f 4 1221 1222 -1224 -1221
		mu 0 4 706 707 708 703
		f 4 1224 1142 -1226 -1223
		mu 0 4 707 709 536 708
		f 4 1147 2008 -1114 -1143
		mu 0 4 709 710 537 536
		f 4 1226 1227 -1229 -1172
		mu 0 4 711 712 713 598
		f 4 1229 1230 -1232 -1228
		mu 0 4 712 714 715 713
		f 4 -1234 -1231 1235 1236
		mu 0 4 716 715 714 717
		f 4 1178 1173 -1122 -1173
		mu 0 4 718 719 638 637
		f 6 1309 1371 -1309 -1323 1336 1323
		mu 0 6 720 721 573 572 577 722
		f 4 1179 1175 -1123 -1175
		mu 0 4 723 724 557 556
		f 4 -1239 -1241 1241 1242
		mu 0 4 725 726 727 728
		f 4 1243 1244 -1246 -1243
		mu 0 4 728 729 730 725
		f 4 1246 1176 -1248 -1245
		mu 0 4 729 731 544 730
		f 4 1181 2016 -1125 -1177
		mu 0 4 731 732 545 544
		f 4 -1999 2010 1999 -1126
		mu 0 4 539 538 733 734
		f 4 -1249 1125 1249 -1251
		mu 0 4 735 539 734 736
		f 4 -1252 1250 1252 -1254
		mu 0 4 737 735 736 738
		f 4 -1257 -1258 1253 -1259
		mu 0 4 739 740 737 738
		f 4 -1133 1126 1062 -1128
		mu 0 4 551 550 741 742
		f 6 -1352 1365 1352 1314 1342 -1316
		mu 0 6 563 562 743 744 745 564
		f 4 -1135 1128 1073 -1130
		mu 0 4 632 631 746 747
		f 4 -1260 -1262 1263 -1265
		mu 0 4 748 749 750 751
		f 4 -1266 1259 1266 -1268
		mu 0 4 752 749 748 753
		f 4 -1269 1267 1269 -1131
		mu 0 4 593 752 753 754
		f 5 1024 1944 -1144 -1026 -1039
		mu 0 5 623 755 756 689 620
		f 4 1058 1959 -1025 -1055
		mu 0 4 664 757 755 623
		f 5 -1947 1948 -1059 1074 1075
		mu 0 5 696 758 757 664 622
		f 4 1021 -1145 -1076 -1077
		mu 0 4 641 697 696 622
		f 6 -1349 1362 -1318 -1332 1345 -1319
		mu 0 6 625 624 699 698 700 626
		f 4 1067 -1146 -1019 -1062
		mu 0 4 627 702 701 628
		f 4 1017 1745 -1085 -1086
		mu 0 4 656 759 760 662
		f 5 1014 -1740 1741 -1018 -1029
		mu 0 5 655 709 761 759 656
		f 4 2007 -1148 -1015 -1998
		mu 0 4 654 710 709 655
		f 4 1861 1851 1937 -1846
		mu 0 4 762 763 764 765
		f 6 -1931 1932 -1852 1853 1850 1078
		mu 0 6 674 766 764 763 767 747
		f 4 1022 -1156 -1079 -1074
		mu 0 4 746 675 674 747
		f 6 -1353 1366 -1314 -1328 1341 -1315
		mu 0 6 744 743 677 676 678 745
		f 4 1068 -1157 -1020 -1063
		mu 0 4 741 680 679 742
		f 4 1813 1798 1839 -1803
		mu 0 4 768 769 770 771
		f 6 1015 -1833 1834 -1799 1800 -1030
		mu 0 6 734 687 772 770 769 773
		f 4 2011 -1159 -1016 -2000
		mu 0 4 733 688 687 734
		f 4 -2001 2014 2001 -1160
		mu 0 4 543 542 774 775
		f 4 -1271 1159 1271 -1273
		mu 0 4 776 543 775 777
		f 4 -1274 1272 1274 -1276
		mu 0 4 778 776 777 779
		f 4 -1279 -1280 1275 -1281
		mu 0 4 780 781 778 779
		f 4 -1167 1160 1063 -1162
		mu 0 4 555 554 782 783
		f 6 -1356 1369 1356 1310 1338 -1312
		mu 0 6 569 568 784 785 786 570
		f 4 -1169 1162 1077 -1164
		mu 0 4 636 635 787 788
		f 4 -1282 -1284 1285 -1287
		mu 0 4 789 790 791 792
		f 4 -1288 1281 1288 -1290
		mu 0 4 793 790 789 794
		f 4 -1291 1289 1291 -1165
		mu 0 4 597 793 794 795
		f 4 1902 1876 1909 -1871
		mu 0 4 796 797 798 799
		f 6 -1900 1901 -1877 1878 1875 1081
		mu 0 6 718 800 798 797 801 788
		f 4 1023 -1179 -1082 -1078
		mu 0 4 787 719 718 788
		f 6 -1357 1370 -1310 -1324 1337 -1311
		mu 0 6 785 784 721 720 722 786
		f 4 1069 -1180 -1021 -1064
		mu 0 4 782 724 723 783
		f 4 1782 1751 1788 -1756
		mu 0 4 802 803 804 805
		f 6 1016 -1779 1780 -1752 1753 -1031
		mu 0 6 775 731 806 804 803 807
		f 4 2015 -1182 -1017 -2002
		mu 0 4 774 732 731 775
		f 4 1154 1929 1927 -1183
		mu 0 4 667 808 809 668
		f 4 1936 1931 -1186 -1928
		mu 0 4 809 810 670 668
		f 4 1935 1918 1187 -1923
		mu 0 4 811 812 669 671
		f 5 -1924 1925 1922 1189 -1189
		mu 0 5 633 660 811 671 672
		f 4 1149 1188 -1193 -1191
		mu 0 4 674 633 672 673
		f 4 -1153 1195 1196 -1194
		mu 0 4 553 680 683 682
		f 5 1157 1831 1829 -1198 -1196
		mu 0 5 680 813 814 684 683
		f 4 1838 1833 -1200 -1830
		mu 0 4 814 815 685 684
		f 4 1837 1820 1201 -1825
		mu 0 4 816 817 681 686
		f 4 -1826 1827 1824 1203
		mu 0 4 540 818 816 686
		f 4 1143 1943 1942 -1205
		mu 0 4 689 756 819 690
		f 4 1958 1945 -1208 -1943
		mu 0 4 819 820 692 690
		f 4 1960 1955 1209 -1951
		mu 0 4 821 822 691 693
		f 5 -1952 1953 1950 1211 -1211
		mu 0 5 629 658 821 693 694
		f 4 1138 1210 -1215 -1213
		mu 0 4 696 629 694 695
		f 4 -1142 1217 1218 -1216
		mu 0 4 549 702 705 704
		f 5 1146 1736 1735 -1220 -1218
		mu 0 5 702 823 824 706 705
		f 4 1744 1738 -1222 -1736
		mu 0 4 824 825 707 706
		f 4 1743 1726 1223 -1731
		mu 0 4 826 827 703 708
		f 4 -1732 1733 1730 1225
		mu 0 4 536 828 826 708
		f 4 1177 1896 1895 -1227
		mu 0 4 711 829 830 712
		f 4 1908 1898 -1230 -1896
		mu 0 4 830 831 714 712
		f 4 1905 1879 1231 -1884
		mu 0 4 832 833 713 715
		f 5 -1885 1886 1883 1233 -1233
		mu 0 5 637 661 832 715 716
		f 4 1172 1232 -1237 -1235
		mu 0 4 718 637 716 717
		f 4 -1176 1239 1240 -1238
		mu 0 4 557 724 727 726
		f 5 1180 1775 1774 -1242 -1240
		mu 0 5 724 834 835 728 727
		f 4 1787 1777 -1244 -1775
		mu 0 4 835 836 729 728
		f 4 1784 1758 1245 -1763
		mu 0 4 837 838 725 730
		f 4 -1764 1765 1762 1247
		mu 0 4 544 839 837 730
		f 4 1029 1799 1797 -1250
		mu 0 4 734 773 840 736
		f 4 1815 1805 1251 -1809
		mu 0 4 841 842 735 737
		f 4 1812 1801 -1253 -1798
		mu 0 4 840 843 738 736
		f 4 -1127 1254 1256 -1256
		mu 0 4 741 550 740 739
		f 5 -1810 1811 1808 1257 -1255
		mu 0 5 550 844 841 737 740
		f 4 1129 1262 -1264 -1261
		mu 0 4 632 747 751 750
		f 5 -1851 1852 1849 1264 -1263
		mu 0 5 747 767 845 748 751
		f 4 1864 1854 1265 -1858
		mu 0 4 846 847 749 752
		f 4 1862 1844 -1267 -1850
		mu 0 4 845 848 753 748
		f 4 -1859 1859 1857 1268
		mu 0 4 593 592 846 752
		f 4 1030 1752 1750 -1272
		mu 0 4 775 807 849 777
		f 4 1786 1767 1273 -1771
		mu 0 4 850 851 776 778
		f 4 1781 1754 -1275 -1751
		mu 0 4 849 852 779 777
		f 4 -1161 1276 1278 -1278
		mu 0 4 782 554 781 780
		f 5 -1772 1772 1770 1279 -1277
		mu 0 5 554 853 850 778 781
		f 4 1163 1284 -1286 -1283
		mu 0 4 636 788 792 791
		f 5 -1876 1877 1874 1286 -1285
		mu 0 5 788 801 854 789 792
		f 4 1907 1888 1287 -1892
		mu 0 4 855 856 790 793
		f 4 1903 1869 -1289 -1875
		mu 0 4 854 857 794 789
		f 4 -1893 1893 1891 1290
		mu 0 4 597 596 855 793
		f 4 -1335 -1046 1047 -1322
		mu 0 4 576 605 665 639
		f 4 -1326 -1339 1324 -1163
		mu 0 4 635 570 786 787
		f 4 -1330 -1343 1328 -1129
		mu 0 4 631 564 745 746
		f 4 1050 -1347 1332 -1053
		mu 0 4 640 615 626 641
		f 4 -1364 1349 1387 -1351
		mu 0 4 561 699 858 859
		f 4 -1368 1353 1391 -1355
		mu 0 4 567 677 860 861
		f 4 -1372 1357 1395 -1359
		mu 0 4 573 721 862 863
		f 4 1397 -1361 -1374 -1384
		mu 0 4 864 865 602 574
		f 4 -2024 2025 2024 -1362
		mu 0 4 613 612 866 867
		f 4 -1376 1361 1399 1376
		mu 0 4 624 613 867 868
		f 6 -1378 -1387 -1293 -1401 1408 -1294
		mu 0 6 869 858 868 870 871 872
		f 6 -1379 -1388 1377 1293 1409 -1295
		mu 0 6 873 859 858 869 872 874
		f 6 1295 -1389 1378 1294 1410 1401
		mu 0 6 875 876 859 873 874 877
		f 6 1296 -1390 -1296 -1402 1411 1402
		mu 0 6 878 879 876 875 877 880
		f 6 -1380 -1391 -1297 -1403 1412 -1298
		mu 0 6 881 860 879 878 880 882
		f 6 -1381 -1392 1379 1297 1413 -1299
		mu 0 6 883 861 860 881 882 884
		f 6 1299 -1393 1380 1298 1414 1403
		mu 0 6 885 886 861 883 884 887
		f 6 1300 -1394 -1300 -1404 1415 1404
		mu 0 6 888 889 886 885 887 890
		f 6 -1382 -1395 -1301 -1405 1416 -1302
		mu 0 6 891 862 889 888 890 892
		f 6 -1383 -1396 1381 1301 1417 -1303
		mu 0 6 893 863 862 891 892 894
		f 6 1303 -1397 1382 1302 1418 1405
		mu 0 6 895 864 863 893 894 896
		f 6 -1385 -1398 -1304 -1406 1419 -1305
		mu 0 6 897 865 864 895 896 898
		f 5 2021 -1399 1384 1304 1420
		mu 0 5 899 900 865 897 898
		f 5 -1386 -2025 2027 1994 -1306
		mu 0 5 901 867 866 902 903
		f 6 1292 -1400 1385 1305 1421 1400
		mu 0 6 870 868 867 901 903 871
		f 4 -1412 -1134 1127 1035
		mu 0 4 880 877 551 742
		f 4 -1416 -1168 1161 1036
		mu 0 4 890 887 555 783
		f 4 -1407 -1420 -1038 -1049
		mu 0 4 609 898 896 559
		f 4 2020 -1421 1406 -2004
		mu 0 4 608 899 898 609
		f 4 -1995 2004 1995 -1408
		mu 0 4 903 902 616 619
		f 4 -1422 1407 1053 1034
		mu 0 4 871 903 619 628
		f 4 1422 1423 1424 1425
		mu 0 4 904 905 906 907
		f 4 -1423 1426 1427 1428
		mu 0 4 905 904 908 909
		f 4 -1428 1429 1430 1431
		mu 0 4 909 908 910 911
		f 4 -1425 1432 1433 1434
		mu 0 4 907 906 912 913
		f 4 -1434 1435 1436 1437
		mu 0 4 913 912 914 915
		f 4 -1431 1438 1439 1440
		mu 0 4 911 910 916 917
		f 4 -1437 1441 1442 1443
		mu 0 4 915 914 918 919
		f 4 -1443 1444 -1440 1445
		mu 0 4 919 918 917 916
		f 4 -1427 -1426 -1435 1446
		mu 0 4 908 904 907 913
		f 4 -1430 -1447 -1438 1447
		mu 0 4 910 908 913 915
		f 4 -1444 -1446 -1439 -1448
		mu 0 4 915 919 916 910
		f 4 -1369 1448 -1429 1449
		mu 0 4 568 567 905 909
		f 4 1354 1450 -1424 -1449
		mu 0 4 567 861 906 905
		f 4 1392 1451 -1433 -1451
		mu 0 4 861 886 912 906
		f 4 -1370 -1450 -1432 1452
		mu 0 4 784 568 909 911
		f 4 1393 1453 -1436 -1452
		mu 0 4 886 889 914 912
		f 4 1394 1454 -1442 -1454
		mu 0 4 889 862 918 914
		f 4 -1358 1455 -1445 -1455
		mu 0 4 862 721 917 918
		f 4 -1371 -1453 -1441 -1456
		mu 0 4 721 784 911 917
		f 4 1456 1457 1458 1459
		mu 0 4 920 921 922 923
		f 4 -1457 1460 1461 1462
		mu 0 4 921 920 924 925
		f 4 -1462 1463 1464 1465
		mu 0 4 925 924 926 927
		f 4 -1465 1466 1467 1468
		mu 0 4 927 926 928 929
		f 4 -1468 1469 1470 1471
		mu 0 4 929 928 930 931
		f 4 -1459 1472 1473 1474
		mu 0 4 923 922 932 933
		f 4 -1471 1475 1476 1477
		mu 0 4 931 930 934 935
		f 4 -1474 1478 -1477 1479
		mu 0 4 933 932 935 934
		f 4 1480 1481 1482 1483
		mu 0 4 936 937 938 939
		f 4 -1481 1484 1485 1486
		mu 0 4 937 936 940 941
		f 4 -1486 1487 1488 1489
		mu 0 4 941 940 942 943
		f 4 -1489 1490 1491 1492
		mu 0 4 943 942 944 945
		f 4 -1492 1493 1494 1495
		mu 0 4 945 944 946 947
		f 4 -1483 1496 1497 1498
		mu 0 4 939 938 948 949
		f 4 -1495 1499 1500 1501
		mu 0 4 947 946 950 951
		f 4 -1498 1502 -1501 1503
		mu 0 4 949 948 951 950
		f 4 1504 1505 1506 1507
		mu 0 4 952 953 954 955
		f 4 -1505 1508 1509 1510
		mu 0 4 953 952 956 957
		f 4 -1510 1511 1512 1513
		mu 0 4 957 956 958 959
		f 4 -1513 1514 1515 1516
		mu 0 4 959 958 960 961
		f 4 -1516 1517 1518 1519
		mu 0 4 961 960 962 963
		f 4 -1507 1520 1521 1522
		mu 0 4 955 954 964 965
		f 4 -1519 1523 1524 1525
		mu 0 4 963 962 966 967
		f 4 -1522 1526 -1525 1527
		mu 0 4 965 964 967 966
		f 4 1528 1529 1530 1531
		mu 0 4 968 969 970 971
		f 4 -1529 1532 1533 1534
		mu 0 4 969 968 972 973
		f 4 -1534 1535 1536 1537
		mu 0 4 973 972 974 975
		f 4 -1537 1538 -1531 1539
		mu 0 4 975 974 971 970
		f 4 1540 1541 1542 1543
		mu 0 4 976 977 978 979
		f 4 -1541 1544 1545 1546
		mu 0 4 977 976 980 981
		f 4 -1546 1547 1548 1549
		mu 0 4 981 980 982 983
		f 4 -1543 1550 1551 1552
		mu 0 4 979 978 984 985
		f 4 -1552 1553 1554 1555
		mu 0 4 985 984 986 987
		f 4 -1549 1556 1557 1558
		mu 0 4 983 982 988 989
		f 4 -1555 1559 1560 1561
		mu 0 4 987 986 990 991
		f 4 -1561 1562 -1558 1563
		mu 0 4 991 990 989 988
		f 4 1564 1565 1566 1567
		mu 0 4 992 993 994 995
		f 4 -1565 1568 1569 1570
		mu 0 4 993 992 996 997
		f 4 -1570 1571 1572 1573
		mu 0 4 997 996 998 999
		f 4 -1567 1574 -1573 1575
		mu 0 4 995 994 999 998
		f 4 1576 1577 1578 1579
		mu 0 4 1000 1001 1002 1003
		f 4 -1577 1580 1581 1582
		mu 0 4 1001 1000 1004 1005
		f 4 -1582 1583 1584 1585
		mu 0 4 1005 1004 1006 1007
		f 4 1586 1587 1588 1589
		mu 0 4 1008 1009 1010 1011
		f 4 -1587 1590 -1579 1591
		mu 0 4 1009 1008 1003 1002
		f 4 -1589 1592 1593 1594
		mu 0 4 1011 1010 1012 1013
		f 4 -1585 1595 1596 1597
		mu 0 4 1007 1006 1014 1015
		f 4 -1594 1598 -1597 1599
		mu 0 4 1013 1012 1015 1014
		f 4 1600 1601 1602 1603
		mu 0 4 1016 1017 1018 1019
		f 4 -1601 1604 1605 1606
		mu 0 4 1017 1016 1020 1021
		f 4 -1606 1607 1608 1609
		mu 0 4 1021 1020 1022 1023
		f 4 1610 1611 1612 1613
		mu 0 4 1024 1025 1026 1027
		f 4 -1611 1614 -1603 1615
		mu 0 4 1025 1024 1019 1018
		f 4 -1613 1616 1617 1618
		mu 0 4 1027 1026 1028 1029
		f 4 -1609 1619 1620 1621
		mu 0 4 1023 1022 1030 1031
		f 4 -1618 1622 -1621 1623
		mu 0 4 1029 1028 1031 1030
		f 4 1624 1625 1626 1627
		mu 0 4 1032 1033 1034 1035
		f 4 -1625 1628 1629 1630
		mu 0 4 1033 1032 1036 1037
		f 4 -1630 1631 1632 1633
		mu 0 4 1037 1036 1038 1039
		f 4 1634 1635 1636 1637
		mu 0 4 1040 1041 1042 1043
		f 4 -1635 1638 -1627 1639
		mu 0 4 1041 1040 1035 1034
		f 4 -1637 1640 1641 1642
		mu 0 4 1043 1042 1044 1045
		f 4 -1633 1643 1644 1645
		mu 0 4 1039 1038 1046 1047
		f 4 -1642 1646 -1645 1647
		mu 0 4 1045 1044 1047 1046
		f 4 1648 -1463 -1466 -1469
		mu 0 4 929 921 925 927
		f 4 1649 -1458 -1649 -1472
		mu 0 4 931 922 921 929
		f 4 -1473 -1650 -1478 -1479
		mu 0 4 932 922 931 935
		f 4 1650 -1487 -1490 -1493
		mu 0 4 945 937 941 943
		f 4 1651 -1482 -1651 -1496
		mu 0 4 947 938 937 945
		f 4 -1497 -1652 -1502 -1503
		mu 0 4 948 938 947 951
		f 4 1652 -1511 -1514 -1517
		mu 0 4 961 953 957 959
		f 4 1653 -1506 -1653 -1520
		mu 0 4 963 954 953 961
		f 4 -1521 -1654 -1526 -1527
		mu 0 4 964 954 963 967
		f 4 -1535 -1538 -1540 -1530
		mu 0 4 969 973 975 970
		f 4 -1545 -1544 -1553 1654
		mu 0 4 980 976 979 985
		f 4 -1548 -1655 -1556 1655
		mu 0 4 982 980 985 987
		f 4 -1562 -1564 -1557 -1656
		mu 0 4 987 991 988 982
		f 4 -1569 -1568 -1576 -1572
		mu 0 4 996 992 995 998
		f 4 -1583 1656 -1592 -1578
		mu 0 4 1001 1005 1009 1002
		f 4 -1588 -1657 -1586 1657
		mu 0 4 1010 1009 1005 1007
		f 4 -1593 -1658 -1598 -1599
		mu 0 4 1012 1010 1007 1015
		f 4 -1607 1658 -1616 -1602
		mu 0 4 1017 1021 1025 1018
		f 4 -1612 -1659 -1610 1659
		mu 0 4 1026 1025 1021 1023
		f 4 -1617 -1660 -1622 -1623
		mu 0 4 1028 1026 1023 1031
		f 4 -1631 1660 -1640 -1626
		mu 0 4 1033 1037 1041 1034
		f 4 -1636 -1661 -1634 1661
		mu 0 4 1042 1041 1037 1039
		f 4 -1641 -1662 -1646 -1647
		mu 0 4 1044 1042 1039 1047
		f 4 -1336 1662 -1461 1663
		mu 0 4 577 576 924 920
		f 4 1321 1664 -1464 -1663
		mu 0 4 576 639 926 924
		f 4 -1117 1665 -1467 -1665
		mu 0 4 639 638 928 926
		f 4 -1337 -1664 -1460 1666
		mu 0 4 722 577 920 923
		f 4 -1174 1667 -1470 -1666
		mu 0 4 638 719 930 928
		f 4 -1338 -1667 -1475 1668
		mu 0 4 786 722 923 933
		f 4 -1024 1669 -1476 -1668
		mu 0 4 719 787 934 930
		f 4 -1325 -1669 -1480 -1670
		mu 0 4 787 786 933 934
		f 4 -1340 1670 -1485 1671
		mu 0 4 571 570 940 936
		f 4 1325 1672 -1488 -1671
		mu 0 4 570 635 942 940
		f 4 -1095 1673 -1491 -1673
		mu 0 4 635 634 944 942
		f 4 -1341 -1672 -1484 1674
		mu 0 4 678 571 936 939
		f 4 -1151 1675 -1494 -1674
		mu 0 4 634 675 946 944
		f 4 -1342 -1675 -1499 1676
		mu 0 4 745 678 939 949
		f 4 -1023 1677 -1500 -1676
		mu 0 4 675 746 950 946
		f 4 -1329 -1677 -1504 -1678
		mu 0 4 746 745 949 950
		f 4 -1344 1678 -1509 1679
		mu 0 4 565 564 956 952
		f 4 1329 1680 -1512 -1679
		mu 0 4 564 631 958 956
		f 4 -1106 1681 -1515 -1681
		mu 0 4 631 630 960 958
		f 4 -1345 -1680 -1508 1682
		mu 0 4 700 565 952 955
		f 4 -1140 1683 -1518 -1682
		mu 0 4 630 697 962 960
		f 4 -1346 -1683 -1523 1684
		mu 0 4 626 700 955 965
		f 4 -1022 1685 -1524 -1684
		mu 0 4 697 641 966 962
		f 4 -1333 -1685 -1528 -1686
		mu 0 4 641 626 965 966
		f 4 1386 1686 -1533 1687
		mu 0 4 868 858 972 968
		f 4 -1350 1688 -1536 -1687
		mu 0 4 858 699 974 972
		f 4 -1363 1689 -1539 -1689
		mu 0 4 699 624 971 974
		f 4 -1377 -1688 -1532 -1690
		mu 0 4 624 868 968 971
		f 4 -1365 1690 -1547 1691
		mu 0 4 562 561 977 981
		f 4 1350 1692 -1542 -1691
		mu 0 4 561 859 978 977
		f 4 1388 1693 -1551 -1693
		mu 0 4 859 876 984 978
		f 4 -1366 -1692 -1550 1694
		mu 0 4 743 562 981 983
		f 4 1389 1695 -1554 -1694
		mu 0 4 876 879 986 984
		f 4 1390 1696 -1560 -1696
		mu 0 4 879 860 990 986
		f 4 -1354 1697 -1563 -1697
		mu 0 4 860 677 989 990
		f 4 -1367 -1695 -1559 -1698
		mu 0 4 677 743 983 989
		f 4 -1373 1698 -1571 1699
		mu 0 4 574 573 993 997
		f 4 1358 1700 -1566 -1699
		mu 0 4 573 863 994 993
		f 4 1396 1701 -1575 -1701
		mu 0 4 863 864 999 994
		f 4 1383 -1700 -1574 -1702
		mu 0 4 864 574 997 999
		f 4 1018 1702 -1581 1703
		mu 0 4 628 701 1004 1000
		f 4 -1409 1704 -1591 1705
		mu 0 4 872 871 1003 1008
		f 4 -1035 -1704 -1580 -1705
		mu 0 4 871 628 1000 1003
		f 4 -1410 -1706 -1590 1706
		mu 0 4 874 872 1008 1011
		f 4 1140 1707 -1584 -1703
		mu 0 4 701 548 1006 1004
		f 4 -1411 -1707 -1595 1708
		mu 0 4 877 874 1011 1013
		f 4 1106 1709 -1596 -1708
		mu 0 4 548 551 1014 1006
		f 4 1133 -1709 -1600 -1710
		mu 0 4 551 877 1013 1014
		f 4 1019 1710 -1605 1711
		mu 0 4 742 679 1020 1016
		f 4 -1413 1712 -1615 1713
		mu 0 4 882 880 1019 1024
		f 4 -1036 -1712 -1604 -1713
		mu 0 4 880 742 1016 1019
		f 4 -1414 -1714 -1614 1714
		mu 0 4 884 882 1024 1027
		f 4 1151 1715 -1608 -1711
		mu 0 4 679 552 1022 1020
		f 4 -1415 -1715 -1619 1716
		mu 0 4 887 884 1027 1029
		f 4 1095 1717 -1620 -1716
		mu 0 4 552 555 1030 1022
		f 4 1167 -1717 -1624 -1718
		mu 0 4 555 887 1029 1030
		f 4 1020 1718 -1629 1719
		mu 0 4 783 723 1036 1032
		f 4 -1417 1720 -1639 1721
		mu 0 4 892 890 1035 1040
		f 4 -1037 -1720 -1628 -1721
		mu 0 4 890 783 1032 1035
		f 4 -1418 -1722 -1638 1722
		mu 0 4 894 892 1040 1043
		f 4 1174 1723 -1632 -1719
		mu 0 4 723 556 1038 1036
		f 4 -1419 -1723 -1643 1724
		mu 0 4 896 894 1043 1045
		f 4 1117 1725 -1644 -1724
		mu 0 4 556 559 1046 1038
		f 4 1037 -1725 -1648 -1726
		mu 0 4 559 896 1045 1046
		f 5 -1729 -1113 1215 1216 -1727
		mu 0 5 827 1048 549 704 703
		f 6 -1735 1731 1108 1131 1806 -1733
		mu 0 6 643 828 536 539 1049 644
		f 5 -1738 -1147 -1068 1083 1084
		mu 0 5 760 823 702 627 662
		f 4 -1741 1739 -1225 -1739
		mu 0 4 825 761 709 707
		f 4 1746 -1744 1747 -1743
		mu 0 4 642 827 826 643
		f 4 1748 -1746 1749 -1745
		mu 0 4 824 760 759 825
		f 3 -1747 -1730 1728
		mu 0 3 827 642 1048
		f 3 -1734 1734 -1748
		mu 0 3 826 828 643
		f 3 -1737 1737 -1749
		mu 0 3 824 823 760
		f 3 -1750 -1742 1740
		mu 0 3 825 759 761
		f 5 -1757 -1087 1277 1280 -1755
		mu 0 5 852 1050 782 780 779
		f 5 -1761 -1124 1237 1238 -1759
		mu 0 5 838 663 557 726 725
		f 5 -1767 1763 1119 1031 -1765
		mu 0 5 651 839 544 547 652
		f 4 -1769 -1166 1270 -1768
		mu 0 4 851 1051 543 776
		f 6 -1774 1771 -1097 1101 1823 1821
		mu 0 6 649 853 554 553 1052 646
		f 6 -1777 -1181 -1070 1086 1757 1755
		mu 0 6 805 834 724 782 1050 802
		f 4 -1780 1778 -1247 -1778
		mu 0 4 836 806 731 729
		f 4 1789 -1783 1790 -1782
		mu 0 4 849 803 802 852
		f 4 1791 -1785 1792 -1784
		mu 0 4 650 838 837 651
		f 4 1793 -1787 1794 -1786
		mu 0 4 648 851 850 649
		f 4 1795 -1789 1796 -1788
		mu 0 4 835 805 804 836
		f 3 -1753 -1754 -1790
		mu 0 3 849 807 803
		f 3 -1791 -1758 1756
		mu 0 3 852 802 1050
		f 3 -1792 -1762 1760
		mu 0 3 838 650 663
		f 3 -1766 1766 -1793
		mu 0 3 837 839 651
		f 3 -1794 -1770 1768
		mu 0 3 851 648 1051
		f 3 -1773 1773 -1795
		mu 0 3 850 853 649
		f 3 -1776 1776 -1796
		mu 0 3 835 834 805
		f 3 -1797 -1781 1779
		mu 0 3 836 804 806
		f 5 -1804 -1083 1255 1258 -1802
		mu 0 5 843 1053 741 739 738
		f 4 -1808 -1132 1248 -1806
		mu 0 4 842 1049 539 735
		f 6 -1811 1809 -1108 1112 1729 1727
		mu 0 6 645 844 550 549 1048 642
		f 4 1816 -1814 1817 -1813
		mu 0 4 840 769 768 843
		f 4 1818 -1816 1819 -1815
		mu 0 4 644 842 841 645
		f 3 -1800 -1801 -1817
		mu 0 3 840 773 769
		f 3 -1818 -1805 1803
		mu 0 3 843 768 1053
		f 3 -1807 1807 -1819
		mu 0 3 644 1049 842
		f 3 -1820 -1812 1810
		mu 0 3 645 841 844
		f 5 -1823 -1102 1193 1194 -1821
		mu 0 5 817 1052 553 682 681
		f 6 -1829 1825 1097 1165 1769 -1827
		mu 0 6 647 818 540 543 1051 648
		f 6 -1831 -1158 -1069 1082 1804 1802
		mu 0 6 771 813 680 741 1053 768
		f 4 -1836 1832 -1203 -1834
		mu 0 4 815 772 687 685
		f 4 1840 -1838 1841 -1837
		mu 0 4 646 817 816 647
		f 4 1842 -1840 1843 -1839
		mu 0 4 814 771 770 815
		f 3 -1841 -1824 1822
		mu 0 3 817 646 1052
		f 3 -1828 1828 -1842
		mu 0 3 816 818 647
		f 3 -1843 -1832 1830
		mu 0 3 771 814 813
		f 3 -1835 1835 -1844
		mu 0 3 770 772 815
		f 4 -1848 1846 -1270 -1845
		mu 0 4 848 1054 754 753
		f 6 -1849 1845 1928 -1155 -1027 -1847
		mu 0 6 1054 762 765 808 667 754
		f 5 -1856 -1136 1260 1261 -1855
		mu 0 5 847 657 632 750 749
		f 4 1865 -1863 1866 -1862
		mu 0 4 762 848 845 763
		f 4 1867 -1865 1868 -1864
		mu 0 4 580 847 846 581
		f 3 -1866 1848 1847
		mu 0 3 848 762 1054
		f 3 -1853 -1854 -1867
		mu 0 3 845 767 763
		f 3 -1868 -1857 1855
		mu 0 3 847 580 657
		f 3 -1860 -1861 -1869
		mu 0 3 846 592 581
		f 4 -1873 1871 -1292 -1870
		mu 0 4 857 1055 795 794
		f 6 -1874 1870 1897 -1178 -1028 -1872
		mu 0 6 1055 796 799 829 711 795
		f 4 -1882 -1121 1228 -1880
		mu 0 4 833 599 598 713
		f 5 -1890 -1170 1282 1283 -1889
		mu 0 5 856 659 636 791 790
		f 5 -1901 1899 1234 -1236 -1899
		mu 0 5 831 800 718 717 714
		f 4 1910 -1904 1911 -1903
		mu 0 4 796 857 854 797
		f 4 1912 -1906 1913 -1905
		mu 0 4 586 833 832 587
		f 4 1914 -1908 1915 -1907
		mu 0 4 584 856 855 585
		f 4 1916 -1910 1917 -1909
		mu 0 4 830 799 798 831
		f 3 -1911 1873 1872
		mu 0 3 857 796 1055
		f 3 -1878 -1879 -1912
		mu 0 3 854 801 797
		f 3 -1913 -1883 1881
		mu 0 3 833 586 599
		f 3 -1887 -1888 -1914
		mu 0 3 832 661 587
		f 3 -1915 -1891 1889
		mu 0 3 856 584 659
		f 3 -1894 -1895 -1916
		mu 0 3 855 596 585
		f 3 -1897 -1898 -1917
		mu 0 3 830 829 799
		f 3 -1918 -1902 1900
		mu 0 3 831 798 800
		f 4 -1921 -1099 1184 -1919
		mu 0 4 812 595 594 669
		f 5 -1934 1930 1190 -1192 -1932
		mu 0 5 810 766 674 673 670
		f 4 1938 -1936 1939 -1935
		mu 0 4 582 812 811 583
		f 4 1940 -1938 1941 -1937
		mu 0 4 809 765 764 810
		f 3 -1939 -1922 1920
		mu 0 3 812 582 595
		f 3 -1926 -1927 -1940
		mu 0 3 811 660 583
		f 3 -1941 -1930 -1929
		mu 0 3 765 809 808
		f 3 -1933 1933 -1942
		mu 0 3 764 766 810
		f 5 -1948 1946 1212 -1214 -1946
		mu 0 5 820 758 696 695 692
		f 4 -1958 -1110 1206 -1956
		mu 0 4 822 591 590 691
		f 4 1962 -1960 1963 -1959
		mu 0 4 819 755 757 820
		f 4 1964 -1962 1965 -1961
		mu 0 4 821 579 578 822
		f 3 -1944 -1945 -1963
		mu 0 3 819 756 755
		f 3 -1964 -1949 1947
		mu 0 3 820 757 758
		f 3 -1965 -1954 -1953
		mu 0 3 579 821 658
		f 3 -1957 1957 -1966
		mu 0 3 578 591 822
		f 4 1398 -1967 -1375 1360
		mu 0 4 865 900 603 602
		f 4 -1978 -1348 -1051 -1968
		mu 0 4 1056 611 615 640
		f 4 -1969 -1979 1967 -1058
		mu 0 4 621 1057 1056 640
		f 4 -1980 1968 -1050 1040
		mu 0 4 1058 1057 621 620
		f 4 1025 -1970 -1981 -1041
		mu 0 4 620 689 1059 1058
		f 4 -1982 1969 1137 -1971
		mu 0 4 1060 1059 689 590
		f 4 -1983 1970 1103 1136
		mu 0 4 1061 1060 590 593
		f 4 -1984 -1137 1130 1041
		mu 0 4 1062 1061 593 754
		f 4 1026 -1972 -1985 -1042
		mu 0 4 754 667 1063 1062
		f 4 -1986 1971 1148 -1973
		mu 0 4 1064 1063 667 594
		f 4 -1987 1972 1092 1170
		mu 0 4 1065 1064 594 597
		f 4 -1988 -1171 1164 1042
		mu 0 4 1066 1065 597 795
		f 4 1027 -1974 -1989 -1043
		mu 0 4 795 711 1067 1066
		f 4 -1990 1973 1171 -1975
		mu 0 4 1068 1067 711 598
		f 4 -1991 1974 1114 1043
		mu 0 4 1069 1068 598 600
		f 4 1059 -1992 -1044 1044
		mu 0 4 666 1070 1069 600
		f 4 -1993 -1060 1056 -1976
		mu 0 4 1071 1070 666 665
		f 4 -1977 -1994 1975 1045
		mu 0 4 605 604 1071 665;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "AC3C5CF3-4645-3F58-77A9-E49B88BCABEF";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6D686BE1-4429-BB36-5B3D-5E82E9E78B43";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E1A4E841-41CA-4095-95CC-E18A6806E8D6";
createNode displayLayerManager -n "layerManager";
	rename -uid "E5633EDD-483F-62C2-4D51-759CD4C2C452";
createNode displayLayer -n "defaultLayer";
	rename -uid "DFA62B72-4EC5-88D5-6874-A69064A42DFB";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "89D1E0F5-421A-B01C-1673-8B92033451A8";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "604FC389-4BD4-FE91-1BBD-01BCB5AC5836";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "EB10AF76-4A3C-58CC-F556-C0AE00093C76";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode file -n "file1";
	rename -uid "4E421063-4CB9-C929-5705-6BA29C0C5898";
	setAttr ".ftn" -type "string" "C:/Users/nfwal/Documents/agent_unseen/SKQ Assets Build/Assets/MayaFiles/BrickWall1Texture.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "6C9DF2C8-4240-ECDD-E957-CA9E4C76C88C";
createNode polyMapCut -n "polyMapCut1";
	rename -uid "254A387B-427B-2926-E8A1-04B652C22A2C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[27:29]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "1FCA0945-4DF4-2781-45F6-5EB9BEF057C4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[18:20]";
createNode polyMapCut -n "polyMapCut3";
	rename -uid "50BAB502-4FA0-1F49-2DA5-AABCEC94D9CA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[9:11]";
createNode polyMapCut -n "polyMapCut4";
	rename -uid "9DF45CBC-47C8-CD52-0A91-99A367428D3A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[36]" "e[39:40]" "e[43:44]" "e[47]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "69F2BD4E-403B-A8A5-61A9-7ABC565C9CC3";
	setAttr ".uopa" yes;
	setAttr -s 96 ".uvtk[0:95]" -type "float2" -0.37535709 -3.0014283657
		 -0.125119 -3.0014283657 0.12511897 -3.0014283657 0.37535703 -3.0014283657 -0.37535709
		 -2.75119019 -0.125119 -2.75119019 0.12511897 -2.75119019 0.37535703 -2.75119019 -0.37535709
		 -2.50095177 -0.125119 -2.50095177 0.12511897 -2.50095177 0.37535703 -2.50095177 -0.37535709
		 -2.25071383 -0.125119 -2.25071383 0.12511897 -2.25071383 0.37535703 -2.25071383 -0.37534231
		 -2.10289121 -0.12511723 -2.1028924 0.12511723 -2.1028924 0.37534225 -2.10289121 -0.37534049
		 -1.64711964 -0.125117 -1.64711881 0.12511694 -1.64711881 0.37534043 -1.64711964 -0.37535709
		 -1.49999976 -0.125119 -1.49999976 0.12511897 -1.49999976 0.37535703 -1.49999976 -0.37535709
		 -1.24976182 -0.125119 -1.24976182 0.12511897 -1.24976182 0.37535703 -1.24976182 -0.37535709
		 -0.999524 -0.125119 -0.999524 0.12511897 -0.999524 0.37535703 -0.999524 -0.37535709
		 -0.749286 -0.125119 -0.749286 0.12511897 -0.749286 0.37535703 -0.749286 -0.37534049
		 -0.60216635 -0.125117 -0.60216725 0.12511694 -0.60216725 0.37534043 -0.60216635 -0.37534231
		 -0.14639468 -0.12511723 -0.14639367 0.12511723 -0.14639367 0.37534225 -0.14639468
		 -0.37535709 0.0014279485 -0.125119 0.0014279485 0.12511897 0.0014279485 0.37535703
		 0.0014279485 1.12607121 -3.0014283657 0.97895139 -3.0014119148 0.52317953 -3.0014135838
		 1.12607121 -2.75119019 0.97895235 -2.75118804 0.52317852 -2.75118828 1.12607121 -2.50095177
		 0.97895235 -2.50095391 0.52317852 -2.50095391 1.12607121 -2.25071383 0.97895139 -2.25073028
		 0.52317953 -2.25072861 -1.12607121 -3.0014283657 -0.97895139 -3.0014119148 -0.52317971
		 -3.0014135838 -1.12607121 -2.75119019 -0.97895229 -2.75118804 -0.52317864 -2.75118828
		 -1.12607121 -2.50095177 -0.97895229 -2.50095391 -0.52317864 -2.50095391 -1.12607121
		 -2.25071383 -0.97895139 -2.25073028 -0.52317971 -2.25072861 0.12511897 -0.749286
		 0.37535703 -0.749286 -0.125119 -0.749286 -0.37535709 -0.749286 0.12511897 -1.49999976
		 0.37535703 -1.49999976 -0.125119 -1.49999976 -0.37535709 -1.49999976 0.12511897 -2.25071383
		 0.37535703 -2.25071383 -0.125119 -2.25071383 -0.37535709 -2.25071383 0.37535703 -2.50095177
		 0.37535703 -2.25071383 -0.37535709 -2.50095177 -0.37535709 -2.25071383 0.37535703
		 -2.75119019 -0.37535709 -2.75119019 0.37535703 -3.0014283657 -0.37535709 -3.0014283657;
createNode polyTweak -n "polyTweak1";
	rename -uid "B8DC3489-474C-1563-0B16-CAA853B8A6D8";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[16]" -type "float3" 0 0 0.30703464 ;
	setAttr ".tk[17]" -type "float3" 0 0 0.30703464 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.30703464 ;
	setAttr ".tk[19]" -type "float3" 0 0 0.30703464 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.30914032 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.30914032 ;
	setAttr ".tk[22]" -type "float3" 0 0 -0.30914032 ;
	setAttr ".tk[23]" -type "float3" 0 0 -0.30914032 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.30914032 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.30914032 ;
	setAttr ".tk[42]" -type "float3" 0 0 -0.30914032 ;
	setAttr ".tk[43]" -type "float3" 0 0 -0.30914032 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.30703464 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.30703464 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.30703464 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.30703464 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.30914032 ;
	setAttr ".tk[49]" -type "float3" 0 0 0.30703464 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.30914032 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.30703464 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.30914032 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.30703464 ;
	setAttr ".tk[54]" -type "float3" 0 0 -0.30914032 ;
	setAttr ".tk[55]" -type "float3" 0 0 0.30703464 ;
createNode polySplit -n "polySplit1";
	rename -uid "8DB8D2AD-4E04-4C61-169B-49B745CAEB1C";
	setAttr -s 13 ".e[0:12]"  0.17971399 0.17971399 0.17971399 0.17971399
		 0.82028598 0.82028598 0.82028598 0.82028598 0.82028598 0.82028598 0.82028598 0.82028598
		 0.17971399;
	setAttr -s 13 ".d[0:12]"  -2147483592 -2147483591 -2147483590 -2147483589 -2147483561 -2147483564 
		-2147483573 -2147483574 -2147483575 -2147483576 -2147483552 -2147483549 -2147483592;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "7DA7664F-490B-853F-A193-95A7DD2B4A0E";
	setAttr -s 13 ".e[0:12]"  0.83159399 0.83159399 0.83159399 0.83159399
		 0.16840599 0.16840599 0.16840599 0.16840599 0.16840599 0.16840599 0.16840599 0.16840599
		 0.83159399;
	setAttr -s 13 ".d[0:12]"  -2147483600 -2147483599 -2147483598 -2147483597 -2147483559 -2147483562 
		-2147483565 -2147483566 -2147483567 -2147483568 -2147483550 -2147483547 -2147483600;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "1B0DDFA6-4145-0319-C9F4-438ABF6CEA36";
	setAttr ".dc" -type "componentList" 2 "e[57:58]" "e[133:134]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "AE672616-41D3-CC9C-AB20-21ADE7165B08";
	setAttr ".ics" -type "componentList" 2 "f[9:12]" "f[52]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.5 -0.0047816932 ;
	setAttr ".rs" 40669;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5 1.5 -0.93329751491546631 ;
	setAttr ".cbx" -type "double3" 1.5 1.5 0.92373412847518921 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "91E28044-4B83-0E6C-B980-778C195B5795";
	setAttr ".ics" -type "componentList" 2 "f[9:12]" "f[52]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.5 -0.0047816932 ;
	setAttr ".rs" 62430;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5 1.5 -0.93329751491546631 ;
	setAttr ".cbx" -type "double3" 1.5 1.5 0.92373412847518921 ;
	setAttr ".raf" no;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9BC4BF15-43D9-F69D-EAAE-E9B661B8E8F0";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1319\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n"
		+ "                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n"
		+ "                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "66DF70AD-4EB5-DCCD-C63F-2E8152CCD4EB";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySewEdge -n "polySewEdge1";
	rename -uid "FD9FD47E-47F6-ABD6-13F4-ED935B8241A7";
	setAttr ".ics" -type "componentList" 8 "e[952]" "e[963:979]" "e[990:1008]" "e[1011:1013]" "e[1966]" "e[1977:1993]" "e[2004:2022]" "e[2025:2027]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0
		 0 0.00049999999999994482 -0.00049999999999972289 1;
	setAttr ".ws" yes;
	setAttr ".t" 1;
createNode groupId -n "groupId1";
	rename -uid "33A3ECBD-4DC5-F523-1B47-0BA762828052";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "88A451CB-4542-ABBE-AAC8-8BB546BE912F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:957]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :lambert1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyExtrudeFace2.out" "pCubeShape1.i";
connectAttr "polyTweakUV1.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr "polySewEdge1.out" "Wall_Rough2Shape.i";
connectAttr "groupId1.id" "Wall_Rough2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Rough2Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "polyCube1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "deleteComponent1.og" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "groupParts1.og" "polySewEdge1.ip";
connectAttr "Wall_Rough2Shape.wm" "polySewEdge1.mp";
connectAttr "polySurfaceShape2.o" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.oc" ":lambert1.c";
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Rough2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "file1.msg" ":initialMaterialInfo.t" -na;
// End of BrickWall1.ma
