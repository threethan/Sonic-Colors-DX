---------------------------------------------------------------
-- @file	stg510_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg110 の設定ファイル
-- @data	2009/07/17 ステージ設定ファイル第一号として誕生
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -2600.0 * METER

-- カメラ設定.
camera = {

   near = 0.1 * METER,
   far = 4000.0 * METER,
   fov = 60,
}

-- リザルト位置.
result_pos = { 0, 0, 0 }

-- サービスのリスト.
services = {

	-- グレア
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.08,
		 brightpass = 2.98,
	  },
   },
	-- ライト
	{
		name = "CLightManager",
		params = {
			-- 環境光
			ambient_color = { 55, 80, 145 },

			-- 地形ライト用ライトインデックス
			terrain_light = 1,

			-- オブジェクトデフォルトライトインデックス
			object_light = 1,
			
			-- 平行光色、半球ライト色
			lfield_params = {
				-- ライト番号1 汎用外　明(青寄り)
				{
					index = 1,
					diffuse_color = { 210, 210, 200 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 86, 83, 82, },
					ground_color = { 65, 77, 90, },
				},
				-- ライト番号2 外　やや暗(青寄り)
				{
					index = 2,
					diffuse_color = { 145, 145, 130 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 65, 63, 62, },
					ground_color = { 65, 77, 90, },
				},
				-- ライト番号3 外　暗(青寄り)
				{
					index = 3,
					diffuse_color = { 100, 110, 120 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 41, 40, 52, },
					ground_color = { 60, 60, 76, },
				},
				-- ライト番号4 汎用　暗(赤寄り)
				{
					index = 4,
					diffuse_color = { 120, 120, 120 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 90, 46, 46, },
					ground_color = { 73, 45, 28, },
				},
				-- ライト番号5 汎用　明(黄茶)
				{
					index = 5,
					diffuse_color = { 215, 215, 197 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 83, 78, 69, },
					ground_color = { 87, 74, 60, },
				},
				-- ライト番号6 汎用　暗(黄茶)
				{
					index = 6,
					diffuse_color = { 125, 122, 107 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 53, 45, 40, },
					ground_color = { 87, 74, 60, },
				},
				-- ライト番号7 水中　明
				{
					index = 7,
					diffuse_color = { 120, 220, 220 },
					specular_color = { 105, 180, 180 },
					gloss = 32.0,
					sky_color = { 70, 85, 95 },
					ground_color = { 24, 73, 78 },
				},
				-- ライト番号8 水中　中くらい
				{
					index = 8,
					diffuse_color = { 120, 160, 165 },
					specular_color = { 105, 180, 180 },
					gloss = 32.0,
					sky_color = { 55, 55, 55 },
					ground_color = { 24, 73, 78 },
				},
				-- ライト番号9 水中　暗
				{
					index = 9,
					diffuse_color = { 75, 80, 80 },
					specular_color = { 105, 180, 180 },
					gloss = 32.0,
					sky_color = { 44, 46, 46 },
					ground_color = { 24, 73, 78 },
				},
				-- ライト番号10 部屋　(赤寄り)
				{
					index = 10,
					diffuse_color = { 130, 110, 85 },
					specular_color = { 220, 220, 200 },
					gloss = 32.0,
					sky_color = { 90, 80, 65 },
					ground_color = { 77, 47, 43 },
				},
				-- ライト番号11 部屋　(暗緑)
				{
					index = 11,
					diffuse_color = { 130, 110, 85 },
					specular_color = { 220, 220, 200 },
					gloss = 32.0,
					sky_color = { 80, 80, 84 },
					ground_color = { 60, 80, 24 },
				},
				-- ライト番号12 部屋　(緑光青寄り)
				{
					index = 12,
					diffuse_color = { 50, 120, 65 },
					specular_color = { 220, 220, 200 },
					gloss = 32.0,
					sky_color = { 70, 73, 74 },
					ground_color = { 10, 50, 64 },
				},
				-- ライト番号13 スタートダイブ
				{
					index = 13,
					diffuse_color = { 160, 160, 180 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 38, 50, 44, },
					ground_color = { 5, 67, 100, },
				},
				-- ライト番号14 スタートダイブ　緑光
				{
					index = 14,
					diffuse_color = { 160, 255, 180 },
					specular_color = { 220, 250, 220 },
					gloss = 32.0,
					sky_color = { 38, 130, 44, },
					ground_color = { 5, 67, 100, },
				},
				-- ライト番号15 チェイサーエリア
				{
					index = 15,
					diffuse_color = { 160, 160, 180 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 38, 50, 44, },
					ground_color = { 5, 67, 100, },
				},
				-- ライト番号16 チェイサーエリア　緑光
				{
					index = 16,
					diffuse_color = { 160, 160, 180 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 38, 50, 44, },
					ground_color = { 5, 120, 100, },
				},
				-- ライト番号17 水上or青床　明
				{
					index = 17,
					diffuse_color = { 210, 210, 200 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 86, 83, 82, },
					ground_color = { 65, 77, 90, },
				},
				-- ライト番号18 汎用　すごく暗い
				{
					index = 18,
					diffuse_color = { 60, 60, 60 },
					specular_color = { 150, 150, 150 },
					gloss = 32.0,
					sky_color = { 50, 55, 55 },
					ground_color = { 64, 44, 44 },
				},
				-- ライト番号19 部屋　(10赤寄りに下から青)
				{
					index = 19,
					diffuse_color = { 130, 110, 85 },
					specular_color = { 220, 220, 200 },
					gloss = 32.0,
					sky_color = { 90, 80, 65 },
					ground_color = { 0, 73, 85 },
				},
				-- ライト番号20 リザルト用
				{
					index = 20,
					diffuse_color = { 210, 210, 200 },
					specular_color = { 170, 200, 220 },
					gloss = 32.0,
					sky_color = { 100, 120, 150, },
					ground_color = { 50, 100, 130, },
				},
				-- ライト番号21 水中の砂部 明
				{
					index = 21,
					diffuse_color = { 160, 220, 200 },
					specular_color = { 170, 200, 220 },
					gloss = 32.0,
					sky_color = { 60, 60, 60, },
					ground_color = { 70, 70, 58, },
				},
			},
		},
	},

   {
	-- 地形
	  name = "CTerrainManager",
	  params = {
		 yfollow = false,
		 yoffset = 0.0 * METER,
		 -- far = 800.0 * METER,
		 -- near = 0.35 * METER,
		 -- clip0 = 1000.0 * METER,
		 -- clip1 = 450.0 * METER,
		 -- clip2 = 350.0 * METER,
		 -- clip3 = 250.0 * METER,
		 -- clip4 = 125.0 * METER,
		 -- clip5 = 50.0 * METER,
		 
		 -- この変数は(仮)
		 -- anim_range = 600 * METER,
	  },
   },

   -- パス
   {
	  name = "CPathManager",
	  params = {
		 debug_collision = false,
	  },
   },

   -- フォグ
   {
	  name = "CFogManager",
	  params = {
		 type = "linear",
		 start_z = 50.0 * METER,
		 end_z = 1000.0 * METER,
		 color = { 10, 38, 70 },
	  },
   },

   -- 影色
   {
	  name = "CShadowManager",
	  params = {
		 color = { 8, 8, 14 },
		 alpha = 110,
	  },
   }, 

   -- 水
   {
       name = "CDistortionManager",
       params = {
           texture = "qua_i_ty1_dist",
           distortion_params = {
               {
                   index = 1,
                   speed = 0.3,
                   scale = 0.05,
                   trans_x = 0.10,
                   trans_y = -0.10,
               },
               {
                   index = 2,
                   speed = 0.3,
                   scale = 0.16,
                   trans_x = 0.10,
                   trans_y = -0.10,
               },
           },
       },
   },

}
