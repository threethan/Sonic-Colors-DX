---------------------------------------------------------------
-- @file	actstgmission.lua
-- @author	Kawabata Yoshitaka
-- @brief	ミッションを定義するファイルです
---------------------------------------------------------------

---------------------------------------------------------------
-- パラメータの説明
--
--		name			ミッションを表すユニークな識別子。
--
--		data			使用するステージデータ名。
--						企画セクション的にはパスと呼ぶことも。
--
--		player_pos		プレイヤーのスタート位置。
--
--		player_dir		プレイヤーのスタート時の向き。
--
--		player_mode		プレイヤーのスタート時のモード
--						"2D", "3D",		デフォルトは"2D"
--
--		start_event		スタートイベントの種類
--		1...停止(屈伸)スタート Stop (bend and stretch) start
--		2...スタートダッシュ１ Start dash 1
--		3 ... Start dash 2
--		4 ... Start Dash 3
--		5 ... Start Dash 4
--		6 ... Automatic running start
--		7 ... Freedom (grind, roller coaster, diving, etc.)
--		8 ... Side view: Start dash (fall → run)
--		9 ... Side view: Stop start (spin jump → wait)
--		10... Side view: Stop start (preparatory movement → standby)
--		11... Side view: Stop start (same camera difference as 1)
--					12...スタートダッシュ５　戦艦面用その1
--					13...スタートダッシュ６　戦艦面用その2
--					14...スタートダッシュ７　前方視認用その1
--					15...スタートダッシュ８　前方視認用その2
--					16...マルチ停止スタートA　サイドビュー
--					17...マルチ停止スタートA　フロントビュー
--					18...マルチ停止スタートB　サイドビュー(Miiとカメラのバリエーション)
--					19...マルチ停止スタートB　フロントビュー(Miiとカメラのバリエーション)
--
--		bgm				BGMファイル名
--
--		result_bg		リザルト画面の１枚絵のファイル名
--

mission_all = {

   -- RSO(リゾート面)
   {
	  missions = {

		 -- ＡＣＴ１（旧ＡＣＴ１の前半部分）
		 {
			name		= "stg110",
			data		= "stg110",
			player_pos	= { -11942.84, 1575.931, 16972.49 },
			player_dir	= -159.2,
			start_event = 1,
			bgm			= "bgm_stg110_rso",
			phantoms    = { "laser", "drill" },
			result_bg	= "result_01_rso_act1",

		   --【スコア設定領域】
			score = {
			   rank = {
				  1150000,	-- S rank
				   800000,	-- A rank
				   650000,	-- B rank
				   450000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },

			},
		 },

		 -- ＡＣＴ２（旧ＡＣＴ１の後半部分）
		 {
			name		= "stg130",
			data		= "stg110",
			player_pos	= { 6272.50, -412.00, 21.92 },
			player_dir	= 90,
			start_event = 10,
			player_mode = "2D",
			bgm			= "bgm_stg120_rso",
			phantoms      = { "laser", "drill" },
			result_bg	= "result_01_rso_act2",

		   --【スコア設定領域】
			score = {
			   rank = {
				  1150000,	-- S rank
				   700000,	-- A rank
				   550000,	-- B rank
				   400000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },

			},
		 },

		 -- ＡＣＴ３（旧ＡＣＴ２）
		 {
			name		= "stg120",
			data		= "stg120",
			player_pos	= { 4.50, -0.41, 7780.00 },
			player_dir	= -180.0,
			start_event = 6,
			start_speed	= 50.0,
			bgm			= "bgm_stg130_rso",
			phantoms      = { "laser", "drill" },
			result_bg	= "result_01_rso_act3",

		   --【スコア設定領域】
			score = {
			   rank = {
				  1300000,	-- S rank
				   850000,	-- A rank
				   650000,	-- B rank
				   450000,	-- C rank
			   },
			   time_basis = 465000,
			   time_down = 1200,

			   no_miss = {
				  450000,
				  337500,
				  292500,
				  90000,
				  45000,
			   },

			},
		 },
		 
 		 -- ＡＣＴ４（ジュゲム）
		 {
			name		= "stg140",
			data		= "stg110",
			player_pos	= {  -10000.15, 720.22, 4584.53   },
			player_dir	= 90.00,
            player_mode = "3D", 
			start_event = 6,
			start_speed	= 50.0,
			bgm			= "bgm_stg140_rso",
			phantoms	= { "drill", "rodeo" },
			result_bg	= "result_01_rso_act4",

		   --【スコア設定領域】
			score = {
			   rank = {
				   850000,	-- S rank
				   500000,	-- A rank
				   400000,	-- B rank
				   250000,	-- C rank
			   },
			   time_basis = 150000,
			   time_down = 1000,

			   no_miss = {
				  150000,
				  112500,
				  97500,
				  30000,
				  15000,
			   },

			},
		 },

 		 -- ＡＣＴ５（レーザー＋マト）
		 {
			name		= "stg150",
			data		= "stg120",
			player_pos	= {  -914.98, -406.00, -3454.52   },
			player_dir	= -180.00,
            player_mode = "2D", 
			start_event = 10,
			bgm			= "bgm_stg150_rso",
			phantoms      = { "laser", "spike" },
			result_bg	= "result_01_rso_act5",

		   --【スコア設定領域】
			score = {
			   rank = {
				  1150000,	-- S rank
				   750000,	-- A rank
				   650000,	-- B rank
				   500000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },

			},
		 },

		 -- ＡＣＴ６（回転足場＋スパイク）
		 {
			name		= "stg160",
			data		= "stg120",
			player_pos	= { 663.88, 229.0, -10724.85 },
			player_dir	= 90,
            player_mode = "2D", 
			start_event = 10,
			bgm			= "bgm_stg160_rso",
			phantoms    = { "spike" },
			result_bg	= "result_01_rso_act6",

		   --【スコア設定領域】
			score = {
			   rank = {
				   550000,	-- S rank
				   500000,	-- A rank
				   400000,	-- B rank
				   300000,	-- C rank
			   },
			   time_basis = 150000,
			   time_down = 1000,

			   no_miss = {
				  150000,
				  112500,
				  97500,
				  30000,
				  15000,
			   },

			},
		 },
		 
		 -- mission Boss
		 {
			name		= "stg190",
			player_pos	= { 0.00, -140.00, 5.00 },
			player_dir	= 180.0,
			player_mode = "2D",
			bgm			= "bgm_boss_coreboss",
--			start_event = 1,
			phantoms      = { "laser", },
			attrs		= { "boss" },
			result_bg	= "result_01_rso_boss",

		   --【スコア設定領域】
			score = {
			   rank = {
				  2000000,	-- S rank
				  1750000,	-- A rank
				  1350000,	-- B rank
				  1000000,	-- C rank
			   },
			   time_basis = 1000000,
			   time_down = 5000,

			   no_miss = {
				  1000000,
				   750000,
				   650000,
				   200000,
				   100000,
			   },

			},
		 },

	  },
   },

   -- FCT（お菓子面）
   {
	  missions = {

		 -- ＡＣＴ１（旧ＡＣＴ１の前半部分）
		 {
			name		= "stg210",
			data		= "stg210",
			player_pos	= { -9214.58, 2047, 8965 },
			player_dir	= -180.0,
			start_event = 6,
			start_speed	= 75.0,
			bgm			= "bgm_stg210_fct",
			phantoms      = { "laser", "drill" },
			result_bg	= "result_02_fct_act1",

		   --【スコア設定領域】
			score = {
			   rank = {
				  1350000,	-- S rank
				  1000000,	-- A rank
				   800000,	-- B rank
				   550000,	-- C rank
			   },
			   time_basis = 465000,
			   time_down = 1200,

			   no_miss = {
				  450000,
				  337500,
				  292500,
				  90000,
				  45000,
			   },

			},
		 },


		 
		 -- ＡＣＴ２（旧ＡＣＴ１の後半部分）
		 {
			name		= "stg230",
			data		= "stg210",
			player_pos	= { 7499.04, -100.00, -310.00 },
			player_dir	= 90.0,
			start_event	= 15,
			bgm		= "bgm_stg220_fct",
			phantoms     	= { "drill", "astro" },
			result_bg	= "result_02_fct_act2",


		   --【スコア設定領域】
			score = {
			   rank = {
				  1250000,	-- S rank
				   950000,	-- A rank
				   750000,	-- B rank
				   500000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },

			},
		 },
		 
		 -- ＡＣＴ３（旧ＡＣＴ２の前半部分）
		 {
			name		= "stg220",
			data		= "stg220",
			player_pos	= { -1195, -1160, 14120 },
			player_dir	= -180.0,
			start_event = 15,
			bgm			= "bgm_stg230_fct",
			phantoms      = { "spike", "rocket" },
			result_bg	= "result_02_fct_act3",

		   --【スコア設定領域】
			score = {
			   rank = {
				   900000,	-- S rank
				   650000,	-- A rank
				   500000,	-- B rank
				   350000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },

			},
		 },

		 -- ＡＣＴ５（旧ＡＣＴ２の後半部分）
		 {
			name		= "stg240",
			data		= "stg220",
			player_pos	= { 1838.83, 0.00, -1488.91 },
			player_dir	= -180.0,
			start_event = 15,
			bgm			= "bgm_stg250_fct",
			phantoms      = { "puzzle", "spike" },
			result_bg	= "result_02_fct_act5",

		   --【スコア設定領域】
			score = {
			   rank = {
				  1350000,	-- S rank
				  1000000,	-- A rank
				   800000,	-- B rank
				   450000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },

			},
		 },
		
		-- ＡＣＴ４（ファイアバー）
		 {
			name		= "stg260",
			data		= "stg220",
			player_pos	= {  -0.00, 290.93, -6260.74   },
			player_dir	= -180.00,
            player_mode = "2D", 
			start_event = 2,
			start_speed	= 40.0,
			bgm			= "bgm_stg240_fct",
			phantoms	= { "laser", "rodeo" },
			result_bg	= "result_02_fct_act4",

		   --【スコア設定領域】
			score = {
			   rank = {
				  1150000,	-- S rank
				   950000,	-- A rank
				   700000,	-- B rank
				   450000,	-- C rank
			   },
			   time_basis = 465000,
			   time_down = 1200,

			   no_miss = {
				  450000,
				  337500,
				  292500,
				  90000,
				  45000,
			   },

			},
		 },

		 -- ＡＣＴ６（再生ブロック）
		 {
			name		= "stg250",
			data		= "stg210",
			player_pos	= { -8026.21, 80.00, -12.50  },
			player_dir	= 90.00,
            player_mode = "2D", 
			start_event = 2,
			bgm			= "bgm_stg260_fct",
			phantoms	= { "spike","puzzle" },
			result_bg	= "result_02_fct_act6",

		   --【スコア設定領域】
			score = {
			   rank = {
				   900000,	-- S rank
				   800000,	-- A rank
				   700000,	-- B rank
				   400000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },

			},
		 },

		 -- mission Boss
		 {
			name		= "stg290",
			player_pos	= { -40.00, 1500.00, -800.00 },
			player_dir	= 90.0,
			player_mode = "2D",
			bgm			= "bgm_boss_Jellyboss",
			phantoms      = { "drill", },
--			start_event = 1,
			attrs		= { "boss" },
			result_bg	= "result_02_fct_boss",

		   --【スコア設定領域】
			score = {
			   rank = {
				  2000000,	-- S rank
				  1750000,	-- A rank
				  1350000,	-- B rank
				  1000000,	-- C rank
			   },
			   time_basis = 950000,
			   time_down = 2600,

			   no_miss = {
				  1000000,
				   750000,
				   650000,
				   200000,
				   100000,
			   },

			},
		 },
	  },
   },

   -- SHP（戦艦面）
   {
	  missions = {

		 -- ＡＣＴ１
		 {
			name		= "stg310",
			player_pos	= { 6660, -75.0, 5820 },
			player_dir	= 180.0,
			start_event = 12,
			bgm			= "bgm_stg310_shp",
			phantoms      = { "spike", "puzzle" },
			result_bg	= "result_03_shp_act1",

		   --【スコア設定領域】
			score = {
			   rank = {
				  1650000,	-- S rank
				  1350000,	-- A rank
				  1000000,	-- B rank
				   650000,	-- C rank
			   },
			   time_basis = 685000,
			   time_down = 1400,

			   no_miss = {
				  650000,
				  487500,
				  422500,
				  130000,
				  65000,
			   },

			},
		 },

		 -- ＡＣＴ２（パズル＋爆弾ブロック）
		 {
			name		= "stg330",
			data		= "stg310",
			player_pos	= {  3385.00, 430.00, 3503.26 },
			player_dir	= -180.00,
            player_mode = "2D", 
			start_event = 9,
			bgm			= "bgm_stg320_shp",
			phantoms    = { "puzzle","spike" },
			result_bg	= "result_03_shp_act2",

		   --【スコア設定領域】
			score = {
			   rank = {
				  1000000,	-- S rank
				   850000,	-- A rank
				   600000,	-- B rank
				   350000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },

			},
		 },

		 -- ＡＣＴ３（移動３連バネ）
		 {
			name		= "stg340",
			data		= "stg320",
			player_pos	= {  -2555.94, 355.00, -2680.00   },
			player_dir	= 90.00,
            player_mode = "2D",
			start_event = 8,
			bgm			= "bgm_stg330_shp",
			phantoms	= { },
			result_bg	= "result_03_shp_act3",


		   --【スコア設定領域】
			score = {
			   rank = {
				   900000,	-- S rank
				   650000,	-- A rank
				   500000,	-- B rank
				   300000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },

			},
		 },

		 -- ＡＣＴ５（旧ＡＣＴ２）
		 {
			name		= "stg320",
			data		= "stg320",
			player_pos	= { -3325.00, 2336.00, 16637.00 },
			player_dir	= 180.0,
			start_event = 12,
			bgm			= "bgm_stg350_shp",
			phantoms      = { "astro","spike" },
			result_bg	= "result_03_shp_act5",


		   --【スコア設定領域】
			score = {
			   rank = {
				  2000000,	-- S rank
				  1500000,	-- A rank
				  1250000,	-- B rank
				   950000,	-- C rank
			   },
			   time_basis = 685000,
			   time_down = 1400,

			   no_miss = {
				  650000,
				  487500,
				  422500,
				  130000,
				  65000,
			   },

			},
		 },
		 
		 		 -- ＡＣＴ４（プラズマ砲台）
		 {
			name		= "stg350",
			data		= "stg310",
			player_pos	= {  -24785.00, -2340.00, -4637.03 },
			player_dir	= 180.00,
            player_mode = "2D",
			start_event = 9,
			bgm			= "bgm_stg340_shp",
			phantoms    = { "rodeo" },
			result_bg	= "result_03_shp_act4",


		   --【スコア設定領域】
			score = {
			   rank = {
				  1100000,	-- S rank
				   850000,	-- A rank
				   700000,	-- B rank
				   350000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },

			},
		 },

		 -- ＡＣＴ６（アストロノーツ＋マト＋ファイアバー）
		 {
			name		= "stg360",
			data		= "stg320",
			player_pos	= {  961.50, 380.81, -2680.00 },
			player_dir	= 90.00,
            player_mode = "2D",
			start_event = 9,
			bgm			= "bgm_stg360_shp",
            phantoms      = {  "astro" },
			result_bg	= "result_03_shp_act6",


		   --【スコア設定領域】
			score = {
			   rank = {
				   900000,	-- S rank
				   600000,	-- A rank
				   500000,	-- B rank
				   350000,	-- C rank
			   },
			   time_basis = 150000,
			   time_down = 1000,

			   no_miss = {
				  150000,
				  112500,
				  97500,
				  30000,
				  15000,
			   },

			},
		 },

		 -- mission Boss
		 {
			name		= "stg390",
			player_pos	= { 25000.0, 0.0, 0.0 },
			player_dir	= 180.0,
			start_event = 6,
			start_speed = 40.0,
			bgm			= "bgm_boss_shipboss",
			phantoms      = { "laser", },
			attrs		= { "boss" },
			result_bg	= "result_03_shp_boss",


		   --【スコア設定領域】
			score = {
			   rank = {
				  2400000,	-- S rank
				  2000000,	-- A rank
				  1650000,	-- B rank
				  1250000,	-- C rank
			   },
			   time_basis = 800000,
			   time_down = 2400,

			   no_miss = {
				  1000000,
				   750000,
				   650000,
				   200000,
				   100000,
			   },

			},
		 },
	  },
   },

   -- PLA（ウィスプ面）
   {
	  missions = {

		 -- ＡＣＴ１（旧ＡＣＴ１の前半部分）
		 {
			name		= "stg410",
			player_pos	= { 14.40, -168.72, 10171.92 },
			player_dir	=190.0,
			start_event = 14,
			bgm			= "bgm_stg410_pla",
			phantoms      = { "spike", "rocket" },
			result_bg	= "result_04_pla_act1",


		   --【スコア設定領域】
			score = {
			   rank = {
				  1700000,	-- S rank
				  1400000,	-- A rank
				  1100000,	-- B rank
				   800000,	-- C rank
			   },
			   time_basis = 685000,
			   time_down = 1400,

			   no_miss = {
				  650000,
				  487500,
				  422500,
				  130000,
				  65000,
			   },

			},
		 },

		 -- ＡＣＴ２（足場＋ジュゲム）
		 {
			name		= "stg440",
			data		= "stg410",
			player_pos	= { 5400.00, 140.00, 1903.89 },
			player_dir	= 180.0,
			player_mode = "2D",
			start_event = 3,
			bgm			= "bgm_stg420_pla",
			phantoms	= { "rodeo" },
			result_bg	= "result_04_pla_act2",


		   --【スコア設定領域】
			score = {
			   rank = {
				  1000000,	-- S rank
				   850000,	-- A rank
				   650000,	-- B rank
				   400000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },

			},
		 },

		 -- ＡＣＴ３（チェイサー）
		 {
			name		= "stg450",
			data		= "stg410",
			player_pos	= { 3927.74, 1375.00, -3388.62 },
			player_dir	= -105.12,
			player_mode = "2D",
			start_event = 3,
			bgm			= "bgm_stg430_pla",
			phantoms    = { "laser", "puzzle" },
			result_bg	= "result_04_pla_act3",


		   --【スコア設定領域】
			score = {
			   rank = {
				  1200000,	-- S rank
				  1000000,	-- A rank
				   800000,	-- B rank
				   550000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },

			},
		 },

		 -- ＡＣＴ４（旧ＡＣＴ１の後半部分）
		 {
			name		= "stg430",
			data		= "stg410",
			player_pos	= { -3090.86, 2630.0, -4650.0 },
			player_dir	= 180.0,
			start_event = 14,
			bgm			= "bgm_stg440_pla",
			phantoms      = { "rocket", "laser" },
			result_bg	= "result_04_pla_act4",


		   --【スコア設定領域】
			score = {
			   rank = {
				   800000,	-- S rank
				   700000,	-- A rank
				   600000,	-- B rank
				   400000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },

			},
		 },

		 -- ＡＣＴ５（再生ブロック）
		 {
			name		= "stg460",
			data		= "stg420",
			player_pos	= { 3294.81, -1020.00, -460.00  },
			player_dir	= 90.00,
            player_mode = "2D",
			start_event = 3,
			bgm			= "bgm_stg450_pla",
			phantoms	= { "rodeo", "rocket" },
			result_bg	= "result_04_pla_act5",


		   --【スコア設定領域】
			score = {
			   rank = {
				   650000,	-- S rank
				   550000,	-- A rank
				   450000,	-- B rank
				   200000,	-- C rank
			   },
			   time_basis = 150000,
			   time_down = 1000,

			   no_miss = {
				  150000,
				  112500,
				  97500,
				  30000,
				  15000,
			   },

			},
		 },

		 -- ＡＣＴ６（旧ＡＣＴ２）
		 {
			name		= "stg420",
			player_pos	= { -8700.0, 1000.0, 0.0 },
			player_dir	= 90.0,
			start_event = 7,
			bgm			= "bgm_stg460_pla",
			phantoms      = { "astro", "spike" },
			result_bg	= "result_04_pla_act6",


		   --【スコア設定領域】
			score = {
			   rank = {
				  1600000,	-- S rank
				  1250000,	-- A rank
				   900000,	-- B rank
				   500000,	-- C rank
			   },
			   time_basis = 465000,
			   time_down = 1200,

			   no_miss = {
				  450000,
				  337500,
				  292500,
				  90000,
				  45000,
			   },

			},
		 },

		 -- mission Boss
		 {
			name		= "stg490",
			player_pos	= { 0.00, -140.00, 5.00 },
			player_dir	= 180.0,
			player_mode = "2D",
			bgm			= "bgm_boss_coreboss",
--			start_event = 1,
			phantoms      = { "spike" },
			attrs		= { "boss" },
			result_bg	= "result_04_pla_boss",


		   --【スコア設定領域】
			score = {
			   rank = {
				  1900000,	-- S rank
				  1750000,	-- A rank
				  1350000,	-- B rank
				  1000000,	-- C rank
			   },
			   time_basis = 1000000,
			   time_down = 5000,

			   no_miss = {
				  1000000,
				   750000,
				   650000,
				   200000,
				   100000,
			   },

			},
		 },
	  },
   },

   -- QUA（水族館面）
   {
	  missions = {

		 -- ＡＣＴ１（旧ＡＣＴ１の前半部分）
		 {
			name		= "stg510",
			player_pos	= { -3978.0, 9120.0, 16688.0 },
			player_dir	= 153.0,
			start_event = 7,
			bgm			= "bgm_stg510_qua",
			attrs		= { "result_in_water" },
			phantoms    = { "laser", "screw" },
			result_bg	= "result_05_qua_act1",


		   --【スコア設定領域】
			score = {
			   rank = {
				  2200000,	-- S rank
				  1500000,	-- A rank
				  1100000,	-- B rank
				   700000,	-- C rank
			   },
			   time_basis = 685000,
			   time_down = 1400,

			   no_miss = {
				  650000,
				  487500,
				  422500,
				  130000,
				  65000,
			   },

			},
		 },

		 -- ＡＣＴ２（回転足場）
		 {
			name		= "stg540",
			data		= "stg520",
			player_pos	= { 142.76, -35.00, -1929.57  },
			player_dir	= 180.00,
            player_mode = "3D", 
			start_event = 6,
			start_speed	= 40.0,
			bgm			= "bgm_stg520_qua",
			attrs		= { "result_in_water" },
			phantoms    = { "puzzle" },
			result_bg	= "result_05_qua_act2",


		   --【スコア設定領域】
			score = {
			   rank = {
				   600000,	-- S rank
				   500000,	-- A rank
				   400000,	-- B rank
				   250000,	-- C rank
			   },
			   time_basis = 150000,
			   time_down = 1000,

			   no_miss = {
				  150000,
				  112500,
				  97500,
				  30000,
				  15000,
			   },

			},
		 },

		 -- ＡＣＴ３（スクリュー）
		 {
			name		= "stg550",
			data		= "stg510",
			player_pos	= {  0.01, 3960.00, -2133.95  },
			player_dir	= -180.00,
            player_mode = "2D", 
			start_event = 10,
			bgm			= "bgm_stg530_qua",
			attrs		= { "result_in_water" },
            phantoms      = {  "rocket","rodeo" },
			result_bg	= "result_05_qua_act3",

		   --【スコア設定領域】
			score = {
			   rank = {
				  2000000,	-- S rank
				   900000,	-- A rank
				   700000,	-- B rank
				   500000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },

			},
		 },

		 -- ＡＣＴ４（旧ＡＣＴ１の後半部分）
		 {
			name		= "stg530",
			data		= "stg510",
			player_pos	= { 0.0, 420.0, -13035.0 },
			player_dir	= 180.0,
			start_event = 10,
			player_mode 	= "2D",
			bgm			= "bgm_stg540_qua",
			attrs		= { "result_in_water" },
			phantoms    = { "laser", "screw" },
			result_bg	= "result_05_qua_act4",

		   --【スコア設定領域】
			score = {
			   rank = {
				  1700000,	-- S rank
				  1250000,	-- A rank
				   900000,	-- B rank
				   550000,	-- C rank
			   },
			   time_basis = 685000,
			   time_down = 1400,

			   no_miss = {
				  650000,
				  487500,
				  422500,
				  130000,
				  65000,
			   },

			},
		 },

		 -- ＡＣＴ５（移動３連バネ）
		 {
			name		= "stg560",
			data		= "stg510",
			path_data	= "stg510",
			player_pos	= { 0.01, 3885.00, -674.98 },
			player_dir	= 180.0,
			player_mode = "2D",
			bgm			= "bgm_stg550_qua",
			attrs		= { "result_in_water" },
			start_event = 10,
			phantoms	= { },
			result_bg	= "result_05_qua_act5",

		   --【スコア設定領域】
			score = {
			   rank = {
				   950000,	-- S rank
				   750000,	-- A rank
				   550000,	-- B rank
				   350000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },

			},
		 },

		 -- ＡＣＴ６（旧ＡＣＴ２）
		 {
			name		= "stg520",
			player_pos	= { 0.0, 60.0, 10158.0 },
			player_dir	= -180.0,
			player_mode = "2D",
			start_event = 10,
			bgm			= "bgm_stg560_qua",
			attrs		= { "result_in_water" },
			phantoms    = { "astro", "screw" },
			result_bg	= "result_05_qua_act6",

		   --【スコア設定領域】
			score = {
			   rank = {
				  1850000,	-- S rank
				  1250000,	-- A rank
				   950000,	-- B rank
				   650000,	-- C rank
			   },
			   time_basis = 685000,
			   time_down = 1400,

			   no_miss = {
				  650000,
				  487500,
				  422500,
				  130000,
				  65000,
			   },

			},
		 },
		 
		 -- mission Boss
		 {
			name		= "stg590",
			player_pos	= { 20.0, 500.0, -800.0 },
			player_dir	= 90.0,
			player_mode = "WATER",
			phantoms      = { "screw" },
--			start_event = 1,
			bgm			= "bgm_boss_Jellyboss",
			attrs		= { "boss" , "result_in_water" },
			result_bg	= "result_05_qua_boss",

		   --【スコア設定領域】
			score = {
			   rank = {
				  1900000,	-- S rank
				  1750000,	-- A rank
				  1350000,	-- B rank
				  1000000,	-- C rank
			   },
			   time_basis = 950000,
			   time_down = 2600,

			   no_miss = {
				  1000000,
				   750000,
				   650000,
				   200000,
				   100000,
			   },

			},
		 },
	  },
   },

   -- AST（いんせき面）
   {
	  missions = {

		 -- ＡＣＴ１（旧ＡＣＴ１の前半部分）
		 {
			name		= "stg610",
			data		= "stg610",
			player_pos	= { 1558.08, 2868.81, 10099.69 },
			player_dir	= 270.0,
			start_event = 7,
			bgm			= "bgm_stg610_ast",
			phantoms    = { "rodeo", },
			result_bg	= "result_06_ast_act1",

		   --【スコア設定領域】
			score = {
			   rank = {
				  1850000,	-- S rank
				  1500000,	-- A rank
				  1150000,	-- B rank
				   800000,	-- C rank
			   },
			   time_basis = 685000,
			   time_down = 1400,

			   no_miss = {
				  650000,
				  487500,
				  422500,
				  130000,
				  65000,
			   },

			},
		 },

		 -- ＡＣＴ２（旧ＡＣＴ１の後半部分）
		 {
			name		= "stg630",
			data		= "stg610",
			player_pos	= { 3125.0, -1360.0, -6830.0 },
			player_dir	= 80.0,
			start_event	= 1,
			player_mode 	= "2D",
			bgm		= "bgm_stg620_ast",
			phantoms	= { "rodeo", },
			result_bg	= "result_06_ast_act2",


		   --【スコア設定領域】
			score = {
			   rank = {
				  1500000,	-- S rank
				  1300000,	-- A rank
				  1100000,	-- B rank
				   950000,	-- C rank
			   },
			   time_basis = 685000,
			   time_down = 1400,

			   no_miss = {
				  650000,
				  487500,
				  422500,
				  130000,
				  65000,
			   },

			},
		 },

		 -- ＡＣＴ３（回転足場＋重力反転）
		 {
			name		= "stg640",
			data		= "stg610",
			player_pos	= { 4700.00, 155.00, -12390.52 },
			player_dir	= -180.00,
            player_mode = "2D", 
			start_event = 11,
			bgm		= "bgm_stg630_ast",
			phantoms      = { "puzzle", "spike" },
			result_bg	= "result_06_ast_act3",


		   --【スコア設定領域】
			score = {
			   rank = {
				   900000,	-- S rank
				   500000,	-- A rank
				   400000,	-- B rank
				   250000,	-- C rank
			   },
			   time_basis = 150000,
			   time_down = 1000,

			   no_miss = {
				  150000,
				  112500,
				  97500,
				  30000,
				  15000,
			   },

			},
		 },

		 -- ＡＣＴ４（土星サーキット＋ロデオ）
		 {
			name		= "stg650",
			data		= "stg610",
			player_pos	= { 1318.57, -1580.00, -6480.80 },
			player_dir	= 00.0,
			start_event = 1,
			bgm			= "bgm_stg640_ast",
			phantoms    = { },
			result_bg	= "result_06_ast_act4",


		   --【スコア設定領域】
			score = {
			   rank = {
				   500000,	-- S rank
				   400000,	-- A rank
				   300000,	-- B rank
				   200000,	-- C rank
			   },
			   time_basis = 150000,
			   time_down = 1000,

			   no_miss = {
				  150000,
				  112500,
				  97500,
				  30000,
				  15000,
			   },

			},
		 },

		 -- ＡＣＴ５（ファイアバー）
		 {
			name		= "stg660",
			data		= "stg610",
			player_pos	= { 4700.00, 380.00, -12278.48 },
			player_dir	=  -180.00,
            player_mode = "2D", 
			start_event	= 7,
			bgm			= "bgm_stg650_ast",
			phantoms	= { "laser", "rodeo" },
			result_bg	= "result_06_ast_act5",


		   --【スコア設定領域】
			score = {
			   rank = {
				   650000,	-- S rank
				   450000,	-- A rank
				   350000,	-- B rank
				   200000,	-- C rank
			   },
			   time_basis = 150000,
			   time_down = 1000,

			   no_miss = {
				  150000,
				  112500,
				  97500,
				  30000,
				  15000,
			   },

			},
		 },

  		 -- ＡＣＴ６（旧ＡＣＴ２）
		 {
			name		= "stg620",
			data		= "stg620",
			player_pos	= { 1664.73, 1076.46, 2815.40 },
			player_dir	= 0.0,
			start_event = 7,
			bgm			= "bgm_stg660_ast",
			phantoms    = { "rodeo" },
			result_bg	= "result_06_ast_act6",


		   --【スコア設定領域】
			score = {
			   rank = {
				  1750000,	-- S rank
				  1600000,	-- A rank
				  1250000,	-- B rank
				   850000,	-- C rank
			   },
			   time_basis = 685000,
			   time_down = 1400,

			   no_miss = {
				  650000,
				  487500,
				  422500,
				  130000,
				  65000,
			   },

			},
		 },

		 -- mission Boss
		 {
			name		= "stg690",
			player_pos	= { 25000.0, 0.0, 0.0 },
			player_dir	= 180.0,
			start_event = 6,
			start_speed = 40.0,
			bgm			= "bgm_boss_shipboss",
			phantoms      = { "rocket", },
			attrs		= { "boss" },
			result_bg	= "result_06_ast_boss",


		   --【スコア設定領域】
			score = {
			   rank = {
				  2900000,	-- S rank
				  2300000,	-- A rank
				  1750000,	-- B rank
				  1250000,	-- C rank
			   },
			   time_basis = 800000,
			   time_down = 2400,

			   no_miss = {
				  1000000,
				   750000,
				   650000,
				   200000,
				   100000,
			   },

			},
		 },
	  },
   },

   -- ELV（ラスト面）
   {
	  missions = {

		 -- ＡＣＴ１
		 {
			name		= "stg710",
			player_pos	= { 0.0, 0.0, 70150.0 },
			player_dir	= 180.0,
			start_event = 6,
			start_speed	= 70.0,
			bgm			= "bgm_stg710_elv",
			phantoms    = { },
			result_bg	= "result_07_elv_act1",


		   --【スコア設定領域】
			score = {
			   rank = {
				   800000,	-- S rank
				   650000,	-- A rank
				   500000,	-- B rank
				   300000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },

			},
		 },

		 -- ＡＣＴ２
		 {
			name		= "stg720",
			player_pos	= { 0.0, 0.0, 9500.0 },
			player_dir	= 180.0,
			start_event = 6,
			start_speed	= 80.0,
			bgm			= "bgm_stg730_elv",
			phantoms    = { },


		   --【スコア設定領域】
			score = {
			   rank = {
				   250000,	-- S rank
				   200000,	-- A rank
				   170000,	-- B rank
				   150000,	-- C rank
			   },
			   time_basis = 150000,
			   time_down = 1000,

			   no_miss = {
				  150000,
				  112500,
				  97500,
				  30000,
				  15000,
			   },

			},
		 },

		 -- mission Boss
		 {
			name		= "stg790",
			player_pos	= { 25000.0, 0.0, 0.0 },
			player_dir	= 180.0,
			bgm			= "bgm_boss_lastboss_1",
			start_event 	= 6,
			start_speed	= 70.0,
			phantoms      	= { },
			attrs		= { "boss" },
			result_bg	= "result_07_elv_boss",


		   --【スコア設定領域】
			score = {
			   rank = {
				  4000000,	-- S rank
				  3100000,	-- A rank
				  2300000,	-- B rank
				  1500000,	-- C rank
			   },
			   time_basis = 4100000,
			   time_down = 8500,

			   no_miss = {
				  1000000,
				   750000,
				   650000,
				   200000,
				   100000,
			   },

			},
		 },
	  },
   },
   
   -- Multi（マルチ面 stage 1）
   {
	  missions = {

		 -- １−１（ＭＤ１）
		 {
			name		= "stgD10",
			data		= "stgA10",
			path_data	= "stgD10",
			player_pos	= { 0.0, 0.0, 0.0 },
			player_dir	= 180.0,
			start_event = 16,
			player_mode = "2D",
			bgm			= "bgm_mlt_a",
			phantoms    = { "drill" },
			result_bg	= "result_08_mlt_A",


		   --【スコア設定領域】
			score = {

			   time_basis = 150000,
			   time_down = 1000,

			   no_miss = {
				  150000,
				  112500,
				  97500,
				  30000,
				  15000,
			   },
			},
		 },

		 -- １−２（リゾート面ＡＣＴ１後半）
		 {
			name		= "stgB20",
			data		= "stgA10",
			path_data	= "stgB20",
			player_pos	= { 0.0, 320.0, 1620.0 },
			player_dir	= 180.0,
			player_mode = "2D",
			start_event = 18,
			bgm			= "bgm_mlt_a",
			phantoms      = { "laser","drill" },
			result_bg	= "result_08_mlt_A",


		   --【スコア設定領域】
			score = {

			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },
			},
		 },

		 --１−３（ＭＤ４アレンジ）
		 {
			name		= "stgE50",
			data		= "stgA10",
			path_data	= "stgE50",
			player_pos	= { 0.0, -80.0, -600.0 },
			player_dir	= 180.0,
			start_event = 16,
			player_mode = "2D",
			bgm			= "bgm_mlt_a",
			phantoms    = { "puzzle" },
			result_bg	= "result_08_mlt_A",


		   --【スコア設定領域】
			score = {

			   time_basis = 465000,
			   time_down = 1200,

			   no_miss = {
				  450000,
				  337500,
				  292500,
				  90000,
				  45000,
			   },
			},
		 },
		 


	  },
  },
   
   -- Multi（マルチ面 stage 2）
   {
	  missions = {

		 -- ２−１（ＭＤ２）
		 {
			name		= "stgD20",
			data		= "stgB10",
			path_data	= "stgD20",
			player_pos	= { 0.0, 0.0, 0.0 },
			player_dir	= 180.0,
			start_event = 18,
			player_mode = "2D",
			bgm			= "bgm_mlt_b",
			phantoms    = { "drill" },
			result_bg	= "result_08_mlt_B",


		   --【スコア設定領域】
			score = {

			   time_basis = 465000,
			   time_down = 1200,

			   no_miss = {
				  450000,
				  337500,
				  292500,
				  90000,
				  45000,
			   },
			},
		 },

		 -- ２−２（リゾート面ＡＣＴ２）
		 {
			name		= "stgB30",
			data		= "stgB10",
			path_data	= "stgB30",
			player_pos	= {-1640.0, -90.0, -910.0},
			player_dir	= 180.0,
			player_mode = "3D",
			start_event = 17,
			bgm			= "bgm_mlt_b",
			phantoms    = { "laser","drill" },
			result_bg	= "result_08_mlt_B",


		   --【スコア設定領域】
			score = {

			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },
			},
		 },

		 -- ２−３（水族館面ＡＣＴ２）
		 {
			name		= "stgF30",
			data		= "stgB10",
			path_data	= "stgF30",
			player_pos	= { -1590.0, 90.0, -3250.0 },
			player_dir	= 90.0,
			player_mode = "3D",
			start_event = 19,
			bgm			= "bgm_mlt_b",
			phantoms    = { "screw" },
			result_bg	= "result_08_mlt_B",
			attrs		= { "collision_water" },


		   --【スコア設定領域】
			score = {

			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },
			},
		 },

	  },
  },

   -- Multi（マルチ面 stage 3）
   {
	  missions = {

		 -- ３−１（ＳＷＡ・アフリカ）
		 {
			name		= "stgG10",
			data		= "stgC10",
			path_data	= "stgG10",
			player_pos = { -420.0, 460.0, -1940.0 },
			player_dir = 270,
			start_event = 17,
			bgm = "bgm_mlt_c",
			player_mode = "3D",
			phantoms = { "drill" },
			result_bg	= "result_08_mlt_C",


		   --【スコア設定領域】
			score = {

			   time_basis = 465000,
			   time_down = 1200,

			   no_miss = {
				  450000,
				  337500,
				  292500,
				  90000,
				  45000,
			   },
			},
		 },

		 -- ３−２（ＭＤ６：スクラップブレイン）
		 {
			name		= "stgG30",
			data		= "stgC10",
			path_data	= "stgG30",
			player_pos	= { 0.0, 0.0, 0.0 },
			player_dir	= 180.0,
			start_event = 16,
			player_mode	= "2D",
			bgm			= "bgm_mlt_c",
			phantoms    = { "drill" },
			result_bg	= "result_08_mlt_C",


		   --【スコア設定領域】
			score = {

			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },
			},
		 },

		 -- ３−３（プロトタイプ）
		 {
			name		= "stgA10",
			data		= "stgC10",
			path_data	= "stgA10",
			player_pos	= { 0.0, -240.0, 0.0 },
			player_dir	= 180.0,
			start_event = 18,
			player_mode = "2D",
			bgm			= "bgm_mlt_c",
			phantoms    = { "screw","laser" },
			result_bg	= "result_08_mlt_C",


		   --【スコア設定領域】
			score = {

			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },
			},
		 },

	  },
  },
 
	-- Multi（マルチ面 stage 4）
   {
	  missions = {

		 -- ４−１（ＭＤ３：スプリングヤード）
		 {
			name		= "stgD30",
			data		= "stgD10",
			path_data	= "stgD30",
			player_pos	= { 0.0, 320.0, 40.0 },
			player_dir	= 180.0,
			start_event = 18,
			player_mode = "2D",
			bgm			= "bgm_mlt_d",
			phantoms    = { "drill" },
			result_bg	= "result_08_mlt_D",


		   --【スコア設定領域】
			score = {

			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },
			},
		 },


		 -- ４−２（ＳＷＡ・ＮＹチェイサー）
		 {
			name		= "stgG20",
			data		= "stgD10",
			path_data	= "stgG20",
			player_pos	= { 8910.0, 40.0, -13410.00 },
			player_dir	= 0.0,
			start_event = 17,
			player_mode	= "3D",
			bgm			= "bgm_mlt_d",
			phantoms    = { "drill" },
			result_bg	= "result_08_mlt_D",


		   --【スコア設定領域】
			score = {

			   time_basis = 150000,
			   time_down = 1000,

			   no_miss = {
				  150000,
				  112500,
				  97500,
				  30000,
				  15000,
			   },
			},
		 },

		 -- ４−３（ウィスプ面ＡＣＴ２前半アレンジ２）
		 {
			name		= "stgC50",
			data		= "stgD10",
			path_data	= "stgC50",
			player_pos	= { 0.0, 0.0, -565 },
			player_dir	= 180.0,
			start_event = 16,
			player_mode = "2D",
			bgm			= "bgm_mlt_d",
			phantoms    = { "laser", "rocket" },
			result_bg	= "result_08_mlt_D",


		   --【スコア設定領域】
			score = {

			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },
			},
		 },

	  },
  },
 
   -- Multi（マルチ面 stage 5）
   {
	  missions = {

		 --５−１（ＭＤ４：ラビリンス）
		 {
			name		= "stgE30",
			data		= "stgE10",
			path_data	= "stgE30",
			player_pos	= { 0.0, 0.0, 40.0 },
			player_dir	= 180.0,
			start_event = 16,
			player_mode = "2D",
			bgm			= "bgm_mlt_e",
			phantoms    = { "puzzle" },
			result_bg	= "result_08_mlt_E",


		   --【スコア設定領域】
			score = {

			   time_basis = 465000,
			   time_down = 1200,

			   no_miss = {
				  450000,
				  337500,
				  292500,
				  90000,
				  45000,
			   },
			},
		 },

		 -- ５−２（リゾート面ＡＣＴ１前半）
		 {
			name		= "stgB10",
			data		= "stgE10",
			path_data	= "stgB10",
			player_pos	= { 2820.0, 20.0, -1230.0 },
			player_dir	= 180,
			player_mode = "3D",
			start_event = 19,
			bgm			= "bgm_mlt_e",
			phantoms    = { "drill" },
			result_bg	= "result_08_mlt_E",


		   --【スコア設定領域】
			score = {

			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },
			},
		 },
		 
		 -- ５−３（ウィスプ面ＡＣＴ２前半アレンジ）
		 {
			name		= "stgE40",
			data		= "stgE10",
			path_data	= "stgE40",
			player_pos	= { 0.0, 0.0, -540 },
			player_dir	= 180.0,
			start_event = 18,
			player_mode = "2D",
			bgm			= "bgm_mlt_e",
			phantoms    = { "spike" },
			result_bg	= "result_08_mlt_E",


		   --【スコア設定領域】
			score = {

			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },
			},
		 },

	  },
  },

   -- Multi（マルチ面 stage 6）
   {
	  missions = {

		 -- ６−１（ＳＷＡ・ＮＹサイドビュー）
		 {
			name		= "stgG40",
			data		= "stgF10",
			path_data	= "stgG40",
			player_pos	= { 3630.0, 520.0, -8470.0  },
			player_dir	= 0.0,
			start_event = 17,
			player_mode	= "3D",
			bgm			= "bgm_mlt_f",
			phantoms    = { "drill" },
			result_bg	= "result_08_mlt_F",


		   --【スコア設定領域】
			score = {

			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },
			},
		 },

		 -- ６−２（ＭＤII９：スカイチェイス）
		 {
			name		= "stgC40",
			data		= "stgF10",
			path_data	= "stgC40",
			player_pos	= { 0.0, 0.0, 0.0 },
			player_dir	= 180.0,
			player_mode = "2D",
			start_event = 16,
			bgm			= "bgm_mlt_f",
			phantoms      = { "astro" },
			result_bg	= "result_08_mlt_F",


		   --【スコア設定領域】
			score = {

			   time_basis = 465000,
			   time_down = 1200,

			   no_miss = {
				  450000,
				  337500,
				  292500,
				  90000,
				  45000,
			   },
			},
		 },

		 -- ６−３（ＭＤII９：スカイチェイス改造）
		 {
			name		= "stgF40",
			data		= "stgF10",
			path_data	= "stgF40",
			player_pos	= { 0.0, 100.0, 30.0 },
			player_dir	= 180.0,
			player_mode = "2D",
			start_event = 18,
			bgm			= "bgm_mlt_f",
			phantoms      = { "astro", "screw" },
			result_bg	= "result_08_mlt_F",
			attrs		= { "collision_water" },



		   --【スコア設定領域】
			score = {

			   time_basis = 465000,
			   time_down = 1200,

			   no_miss = {
				  450000,
				  337500,
				  292500,
				  90000,
				  45000,
			   },
			},
		 },

	  },
  },

   -- Multi（マルチ面 stage 7）
   {
	  missions = {

		 -- ７−１（ＭＤ５：スターライト）
		 {
			name		= "stgA30",
			data		= "stgG10",
			path_data	= "stgA30",
			player_pos	= { 0.0, 0.0, 0.0 },
			player_dir	= 180.0,
			start_event = 18,
			player_mode = "2D",
			bgm			= "bgm_mlt_g",
			phantoms    = { "drill" },
			result_bg	= "result_08_mlt_G",


		   --【スコア設定領域】
			score = {

			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },
			},
		 },

		 -- ７−２（ウィスプ面ＡＣＴ２前半）
		 {
			name		= "stgE20",
			data		= "stgG10",
			path_data	= "stgE20",
			player_pos	= { 0.0, 0.0, -170.0 },
			player_dir	= 180.0,
			start_event = 16,
			player_mode = "2D",
			bgm			= "bgm_mlt_g",
			phantoms    = { "astro", "rocket" },
			result_bg	= "result_08_mlt_G",


		   --【スコア設定領域】
			score = {

			   time_basis = 465000,
			   time_down = 1200,

			   no_miss = {
				  450000,
				  337500,
				  292500,
				  90000,
				  45000,
			   },
			},
		 },

		 -- ７−３（お菓子面ＡＣＴ１前半）
		 {
			name		= "stgC10",
			data		= "stgG10",
			path_data	= "stgC10",
			player_pos	= { -1570.0, 50.0, -3250.0 },
			player_dir	= 90.0,
			player_mode = "3D",
			start_event = 19,
			bgm			= "bgm_mlt_g",
			phantoms    = { "screw","rocket" },
			result_bg	= "result_08_mlt_G",
			attrs		= { "collision_water" },


		   --【スコア設定領域】
			score = {

			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },
			},
		 },

	  },
  },

   -- Multi（マルチ面 ストック）
   {
	  missions = {

		 -- stgC20（お菓子面ＡＣＴ１後半）
		 {
			name		= "stgC20",
			data		= "stgB10",
			path_data	= "stgC20",
			player_pos	= { 0.0, 0.0, 0.0 },
			player_dir	= 180.0,
			player_mode = "3D",
			start_event = 1,
			bgm			= "bgm_mlt_b",
			phantoms    = { "drill" },


		   --【スコア設定領域】
			score = {
			   rank = {
				  1000000,	-- S rank
				   800000,	-- A rank
				   600000,	-- B rank
				   400000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,
			},
		 },

		 -- stgC30（お菓子面ＡＣＴ２前半）
		 {
			name		= "stgC30",
			data		= "stgB10",
			path_data	= "stgC30",
			player_pos	= { 0.0, 0.0, 0.0 },
			player_dir	= 180.0,
			player_mode = "3D",
			start_event = 1,
			bgm			= "bgm_mlt_b",
			phantoms      = { "rocket","spike" },


		   --【スコア設定領域】
			score = {
			   rank = {
				  1000000,	-- S rank
				   800000,	-- A rank
				   600000,	-- B rank
				   400000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,
			},
		 },

		 -- stgA20（お菓子面ＡＣＴ２後半）
		 {
			name		= "stgA20",
			data		= "stgD10",
			path_data	= "stgA20",
			player_pos	= { 0.0, 0.0, 0.0 },
			player_dir	= 180.0,
			start_event = 1,
			player_mode = "2D",
			bgm			= "bgm_mlt_d",
			phantoms    = { "spike", "rocket" },


		   --【スコア設定領域】
			score = {
			   rank = {
				  1000000,	-- S rank
				   800000,	-- A rank
				   600000,	-- B rank
				   400000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,
			},
		 },

		 -- stgE10（ウィスプ面ＡＣＴ１前半）
		 {
			name		= "stgE10",
			data		= "stgD10",
			path_data	= "stgE10",
			player_pos	= { 0.0, 0.0, 0.0 },
			player_dir	= -180.0,
			start_event = 1,
			bgm			= "bgm_mlt_d",
			phantoms    = { "spike", "rocket" },
			result_bg	= "result_08_mlt_D",


		   --【スコア設定領域】
			score = {

			   time_basis = 320000,
			   time_down = 1100,

			   no_miss = {
				  280000,
				  210000,
				  182000,
				  56000,
				  28000,
			   },
			},
		 },

		 -- stgF10（水族館面ＡＣＴ１前半）
		 {
			name		= "stgF10",
			data		= "stgF10",
			path_data	= "stgF10",
			player_pos	= { 0.0, -900.0, 0.0 },
			player_dir	= -180,
			start_event = 1,
			player_mode	= "3D",
			bgm			= "bgm_mlt_f",
			phantoms    = { "drill" },


		   --【スコア設定領域】
			score = {
			   rank = {
				  1000000,	-- S rank
				   800000,	-- A rank
				   600000,	-- B rank
				   400000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,
			},
		 },

		 -- stgF20（水族館面ＡＣＴ１後半）
		 {
			name		= "stgF20",
			data		= "stgF10",
			path_data	= "stgF20",
			player_pos	= { 60.0, -110.0, -40.0 },
			player_dir	= -180,
			start_event = 1,
			player_mode	= "2D",
			bgm			= "bgm_mlt_f",
			phantoms    = { "drill" },


		   --【スコア設定領域】
			score = {
			   rank = {
				  1000000,	-- S rank
				   800000,	-- A rank
				   600000,	-- B rank
				   400000,	-- C rank
			   },
			   time_basis = 320000,
			   time_down = 1100,
			},
		 },

	  },
  },

   -- ev(イベント専用ステージ)
   {
	  missions = {

		 -- ev110,130,410,450（リゾート面Act2ゴール周辺）
		 {
			name		= "stg010",
			data		= "stg010",
			player_pos	= { 16850.0, -1931.77, -9420.0 },
			player_dir	= 90.0,
		 },

		 -- ev140,170（リゾート面Act1後半建物エリア周辺）
		 {
			name		= "stg011",
			data		= "stg010",
			player_pos	= { -2300.0, -259.25, 0.0 },
			player_dir	= 90.0,
		 },

		 -- ev310（ウィスプ面Act2ゴールエリア周辺）
		 {
			name		= "stg041",
			data		= "stg041",
			player_pos	= { -1100.0, 3500.0, -10400.0 },
			player_dir	= 180.0,
		 },

	  },
   },

}

---------------------------------------------------------------
-- ゾーン、ミッション、ステージの対応表

zone_table = {
   -- zone1
   {
	  index = 0,
	  missions = { "stg110", "stg130", "stg120", "stg140", "stg150", "stg160", "stg190", },
   },
   -- zone2
   {
	  index = 1,
	  missions = { "stg210", "stg230", "stg220", "stg260", "stg240", "stg250", "stg290", },
   },
   -- zone3
   {
	  index = 2,
	  missions = { "stg310", "stg330", "stg340", "stg350", "stg320", "stg360", "stg390", },
   },
   -- zone4
   {
	  index = 3,
	  missions = { "stg410", "stg440", "stg450", "stg430", "stg460", "stg420", "stg490", },
   },
   -- zone5
   {
	  index = 4,
	  missions = { "stg510", "stg540", "stg550", "stg530", "stg560", "stg520", "stg590", },
   },
   -- zone6
   {
	  index = 5,
	  missions = { "stg610", "stg630", "stg640", "stg650", "stg660", "stg620", "stg690", },
   },
   -- zone7
   {
	  index = 6,
	  missions = { "stg710", "stg720", "stg790", },
   },

   -- multiple

   -- zone8
   {
	  index = 7,
	  missions = { "stgD10", "stgB20", "stgE50", },
   },
   -- zone9
   {
	  index = 8,
	  missions = { "stgD20", "stgB30", "stgF30", },
   },
   -- zone10
   {
	  index = 9,
	  missions = { "stgG10", "stgG30", "stgA10", },
   },
   -- zone11
   {
	  index = 10,
	  missions = { "stgD30", "stgG20", "stgC50", },
   },
   -- zone12
   {
	  index = 11,
	  missions = { "stgE30", "stgB10", "stgE40", },
   },
   -- zone13
   {
	  index = 12,
	  missions = { "stgG40", "stgC40", "stgF40", },
   },
   -- zone14
   {
	  index = 13,
	  missions = { "stgA30", "stgE20", "stgC10", },
   },
}
