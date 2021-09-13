---------------------------------------------------------------
-- @file	stg320_config.lua
-- @author	Miura Yoshitaka <Miura_Yoshitaka@sega.co.jp>
-- @brief	stg320 の設定ファイル
-- @data	2010/3/10
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -20.0 * METER

-- カメラ設定.
camera = {

   near = 0.1 * METER,
   far = 2500.0 * METER,
   fov = 60,
}

-- サービスのリスト.
services = {

	-- グレア
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.10,
		 brightpass = 2.00,
	  },
   },

	-- ライト
	{
		name = "CLightManager",
		params = {
			-- 環境光
			ambient_color = { 90, 80, 100 },

			-- 地形ライト
			terrain_light = 4,
			
			-- オブジェクトデフォルトライト
			object_light = 1,
			
			-- 平行光色、半球ライト色
			lfield_params = {
				{
					index = 1,
					diffuse_color = { 166, 166, 166 },
					gloss = 16.0,
					sky_color = { 110, 120, 150, },
					ground_color = { 80, 90, 130, },
				},
				{
					index = 2,
					diffuse_color = { 160, 160, 180 },
					gloss = 16.0,
					sky_color = { 90, 90, 120, },
					ground_color = { 75, 70, 90, },
				},
				{
					index = 3,
					diffuse_color = { 180, 180, 180 },
					gloss = 16.0,
					sky_color = { 120, 110, 130, },
					ground_color = { 60, 60, 100, },
				},
				{
					index = 4,
					diffuse_color = {  203, 194, 167 },
					gloss = 16.0,
					sky_color = { 120, 140, 180, },
					ground_color = { 130, 130, 40 },
				},
				{
					index = 5,
					diffuse_color = { 80, 80, 90 },
					gloss = 16.0,
					sky_color = { 90, 90, 100, },
					ground_color = { 50, 40, 50, },
				},
				{
					index = 6,
					diffuse_color = { 90, 90, 70 },
					gloss = 16.0,
					sky_color = { 60, 70, 80, },
					ground_color = { 80, 80, 60, },
				},
				{
					index = 7,
					diffuse_color = { 255, 255, 255 },
					gloss = 32.0,
					sky_color = { 255, 255, 255, },
					ground_color = { 255, 255, 255, },
				},
				{
					index = 8,
					diffuse_color = { 170, 150, 190 },
					gloss = 16.0,
					sky_color = { 120, 120, 150, },
					ground_color = { 70, 60, 80, },
				},
				{
					index = 9,
					diffuse_color = { 108, 134, 135 },
					gloss = 16.0,
					sky_color = { 70, 100, 110, },
					ground_color = { 57, 81, 90, },
				},
				{
					index = 10,
					diffuse_color = { 155, 162, 162 },
					gloss = 16.0,
					sky_color = { 80, 130, 140, },
					ground_color = { 100, 124, 134, },
				},
				{
					index = 11,
					diffuse_color = {  200, 190, 160 },
					gloss = 16.0,
					sky_color = { 120, 120, 130, },
					ground_color = { 110, 110, 40 },
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
		 -- far = 1500.0 * METER,
		 -- near = 0.35 * METER,
		 -- clip0 = 25000.0 * METER,
		 -- clip1 = 450.0 * METER,
		 -- clip2 = 350.0 * METER,
		 -- clip3 = 250.0 * METER,
		 -- clip4 = 150.0 * METER,
		 -- clip5 = 50.0 * METER,
		 
		 -- この変数は(仮)
		 anim_range = 1000 * METER,
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
		 end_z = 2000.0 * METER,
		 color = { 0, 0, 20 },
	  },
   },

   -- レンズフレア
   {
	  name = "CLensFlareManager",
	  params = {
		 source_light = { -2570.0, 726.0, -2670.0 },
	  },
   },

   -- 影色
   {
	  name = "CShadowManager",
	  params = {
		 color = { 0, 0, 10 },
		 alpha = 120,
	  },
   }, 
}
