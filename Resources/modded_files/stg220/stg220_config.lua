---------------------------------------------------------------
-- @file	stg210_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg210 の設定ファイル
-- @data	2009/07/17 ステージ設定ファイル第一号として誕生
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -140.0 * METER

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
			terrain_light = 8,

			-- オブジェクトデフォルトライトインデックス
			object_light = 4,
			
			-- 平行光色、半球ライト色
			lfield_params = {
				-- ライト番号1　ＦＷ 明
				{
					index = 1,
					diffuse_color = { 240, 230, 200 },
					specular_color = { 240, 230, 200 },
					gloss = 32.0,
					sky_color = { 148, 138, 120, },
					ground_color = { 122, 79, 130, },
				},
				-- ライト番号2 ＦＷ 暗（青紫）
				{
					index = 2,
					diffuse_color = { 130, 136, 140 },
					specular_color = { 240, 230, 200 },
					gloss = 32.0,
					sky_color = { 67, 42, 50, },
					ground_color = { 98, 65, 110, },
				},
				-- ライト番号3　ＦＷ 暗（赤紫）
				{
					index = 3,
					diffuse_color = { 130, 136, 140 },
					specular_color = { 240, 230, 200 },
					gloss = 32.0,
					sky_color = { 104, 74, 59, },
					ground_color = { 98, 45, 60, },
				},
				-- ライト番号4　ＳＶ 明　（デフォルトライト）
				{
					index = 4,
					diffuse_color = { 250, 235, 165 },
					specular_color = { 240, 230, 200 },
					gloss = 32.0,
					sky_color = { 110, 95, 80, },
					ground_color = { 136, 86, 110, },
				},
				-- ライト番号5　ＳＶ 暗 (汎用・紫)
				{
					index = 5,
					diffuse_color = { 165, 133, 147 },
					specular_color = { 255, 250, 200 },
					gloss = 32.0,
					sky_color = { 87, 68, 50, },
					ground_color = { 110, 60, 88, },
				},
				-- ライト番号6　ＳＶ 暗 (オレンジ寄り)
				{
					index = 6,
					diffuse_color = { 167, 122, 80 },
					specular_color = { 230, 224, 206 },
					gloss = 32.0,
					sky_color = { 98, 68, 49, },
					ground_color = { 136, 86, 110, },
				},
				-- ライト番号7　室内最暗い箇所
				{
					index = 7,
					diffuse_color = { 89, 90, 100 },
					specular_color = { 200, 240, 250 },
					gloss = 32.0,
					sky_color = { 65, 55, 45, },
					ground_color = { 45, 45, 56, },
				},
				-- ライト番号8　地形用デフォルト
				{
					index = 8,
					diffuse_color = { 220, 214, 211 },
					specular_color = { 255, 255, 210 },
					gloss = 32.0,
					sky_color = { 148, 138, 120, },
					ground_color = { 122, 79, 130, },
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
