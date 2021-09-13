---------------------------------------------------------------
-- @file	stg210_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg210 の設定ファイル
-- @data	2009/07/17 ステージ設定ファイル第一号として誕生
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -180.0 * METER

-- カメラ設定.
camera = {

   near = 0.1 * METER,
   far = 1500.0 * METER,
   fov = 60,
}

-- サービスのリスト.
services = {

	-- グレア
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.00,
		 brightpass = 2.00,
	  },
   },
	-- ライト
	{
		name = "CLightManager",
		params = {
			-- 環境光
			ambient_color = { 150, 120, 120 },

			-- 地形ライト用ライトインデックス
			terrain_light = 9,

			-- オブジェクトデフォルトライトインデックス
			object_light = 1,
			
			-- 平行光色、半球ライト色
			lfield_params = {
				-- ライト番号1　外明るい箇所
				{
					index = 1,
					diffuse_color = { 240, 230, 200 },
					specular_color = { 240, 230, 200 },
					gloss = 32.0,
					sky_color = { 148, 138, 120, },
					ground_color = { 115, 95, 117, },
				},
				-- ライト番号2 外用影
				{
					index = 2,
					diffuse_color = { 127, 122, 135 },
					specular_color = { 255, 255, 255 },
					gloss = 32.0,
					sky_color = { 72, 53, 74, },
					ground_color = { 110, 88, 113, },
				},
				-- ライト番号3　エリアＢ青暗い箇所
				{
					index = 3,
					diffuse_color = { 72, 102, 182 },
					specular_color = { 200, 200, 200 },
					gloss = 32.0,
					sky_color = { 83, 103, 113, },
					ground_color = { 90, 54, 100, },
				},
				-- ライト番号4　エリアＢ普通の影
				{
					index = 4,
					diffuse_color = { 160, 135, 160 },
					specular_color = { 255, 250, 200 },
					gloss = 32.0,
					sky_color = { 70, 57, 55, },
					ground_color = { 110, 70, 118, },
				},
				-- ライト番号5　エリアＣ全般（暗）
				{
					index = 5,
					diffuse_color = { 152, 110, 92 },
					specular_color = { 255, 240, 200 },
					gloss = 32.0,
					sky_color = { 70, 58, 60, },
					ground_color = { 70, 32, 68, },
				},
				-- ライト番号6　エリアＣ（明）
				{
					index = 6,
					diffuse_color = { 250, 235, 165 },
					specular_color = { 255, 240, 200 },
					gloss = 32.0,
					sky_color = { 110, 95, 60, },
					ground_color = { 136, 86, 110, },
				},
				-- ライト番号7　室内青暗い箇所（壁走り等)
				{
					index = 7,
					diffuse_color = { 100, 140, 140 },
					specular_color = { 200, 200, 200 },
					gloss = 32.0,
					sky_color = { 20, 20, 20, },
					ground_color = { 53, 82, 100, },
				},
				-- ライト番号8　ハンバーガータワー暗いところ用
				{
					index = 8,
					diffuse_color = { 127, 130, 135 },
					specular_color = { 255, 240, 200 },
					gloss = 32.0,
					sky_color = { 90, 73, 82, },
					ground_color = { 131, 80, 70, },
				},
				-- ライト番号9　地形用デフォルト
				{
					index = 9,
					diffuse_color = { 220, 214, 211 },
					specular_color = { 255, 255, 210 },
					gloss = 32.0,
					sky_color = { 148, 138, 120, },
					ground_color = { 122, 79, 130, },
				},
				-- ライト番号10　キラースイーツ用
				{
					index = 10,
					diffuse_color = { 10, 0, 0 },
					specular_color = { 200, 200, 200 },
					gloss = 32.0,
					sky_color = { 40, 30, 40, },
					ground_color = { 40, 15, 40, },
				},

				-- ライト番号11　エリアＣ（暗赤ぎみ）
				{
					index = 11,
					diffuse_color = { 140, 111, 107 },
					specular_color = { 255, 240, 200 },
					gloss = 32.0,
					sky_color = { 100, 70, 70, },
					ground_color = { 122, 66, 30, },
				},

				-- ライト番号12　ハンバーガートンネル用（赤暗）
				{
					index = 12,
					diffuse_color = { 120, 50, 20 },
					specular_color = { 150, 150, 150 },
					gloss = 32.0,
					sky_color = { 110, 80, 80, },
					ground_color = { 90, 45, 20, },
				},

			},
		},
	},


   {
	-- 地形
	  name = "CTerrainManager",
	  params = {
		 yfollow = true,
		 yoffset = 0.0 * METER,
		 -- far = 800.0 * METER,
		 -- near = 0.35 * METER,
		 -- clip0 = 1000.0 * METER,
		 -- clip1 = 450.0 * METER,
		 -- clip2 = 350.0 * METER,
		 -- clip3 = 250.0 * METER,
		 -- clip4 = 150.0 * METER,
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
		 start_z = 40.0 * METER,
		 end_z = 600.0 * METER,
		 color = { 200, 150, 150 },
	  },
   },

   -- 影色
   {
	  name = "CShadowManager",
	  params = {
		 color = { 15, 0, 18 },
		 alpha = 110,
	  },
   }, 

}
