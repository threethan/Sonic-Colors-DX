---------------------------------------------------------------
-- @file	stg110_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg110 の設定ファイル
-- @data	2009/07/17 ステージ設定ファイル第一号として誕生
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -190.0 * METER

-- カメラ設定.
camera = {

   near = 0.1 * METER,
   far = 2000.0 * METER,
   fov = 60,
}

-- サービスのリスト.
services = {

	-- グレア
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.05,
		 brightpass = 2.00,
	  },
   },
	-- ライト
	{
		name = "CLightManager",
		params = {
			-- 環境光
			ambient_color = { 75, 105, 145 },

			-- 地形ライト用ライトインデックス
			terrain_light = 1,

			-- オブジェクトデフォルトライトインデックス
			object_light = 1,
			
			-- 平行光色、半球ライト色
			lfield_params = {
				-- ライト番号1　明通常（デフォルト）
				{
					index = 1,
					diffuse_color = { 245, 250, 250 },
					specular_color = { 255, 255, 255 },
					gloss = 32.0,
					sky_color = { 90, 90, 100 },
					ground_color = { 25, 71, 100 },
				},
				-- ライト番号2　暗通常
				{
					index = 2,
					diffuse_color = { 96, 106, 116 },
					specular_color = { 200, 220, 230 },
					gloss = 32.0,
					sky_color = { 48, 53, 76 },
					ground_color = { 25, 71, 100 },
				},
				-- ライト番号3　明後ろ向き
				{
					index = 3,
					diffuse_color = { 200, 210, 215 },
					specular_color = { 200, 220, 230 },
					gloss = 32.0,
					sky_color = { 90, 90, 90 },
					ground_color = { 70, 78, 100 },
				},
				-- ライト番号4　暗後ろ向き
				{
					index = 4,
					diffuse_color = { 96, 98, 105 },
					specular_color = { 200, 220, 230 },
					gloss = 32.0,
					sky_color = { 78, 78, 78 },
					ground_color = { 78, 82, 115 },
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
		 far = 1500.0 * METER,
		 near = 0.35 * METER,
		 clip0 = 2000.0 * METER,
		 clip1 = 450.0 * METER,
		 clip2 = 350.0 * METER,
		 clip3 = 250.0 * METER,
		 clip4 = 150.0 * METER,
		 clip5 = 50.0 * METER,
		 
		 -- この変数は(仮)
		 anim_range = 600 * METER,
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
		 start_z = 600.0 * METER,
		 end_z = 1600.0 * METER,
		 color = { 0, 40, 135 },
	  },
   },

   -- 影色
   {
	  name = "CShadowManager",
	  params = {
		 color = { 0, 0, 30 },
		 alpha = 128,
	  },
   }, 

}
