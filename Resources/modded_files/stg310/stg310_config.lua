---------------------------------------------------------------
-- @file	stg310_config.lua
-- @author	Miura Yoshitaka <Miura_Yoshitaka@sega.co.jp>
-- @brief	stg310 の設定ファイル
-- @data	2010/2/16
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -260.0 * METER

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
					diffuse_color = { 170, 150, 190 },
					gloss = 16.0,
					sky_color = { 120, 120, 150, },
					ground_color = { 70, 60, 80, },
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
					diffuse_color = { 190, 190, 220 },
					gloss = 16.0,
					sky_color = { 150, 150, 180, },
					ground_color = { 90, 90, 100, },
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
					diffuse_color = { 190, 170, 210 },
					gloss = 16.0,
					sky_color = { 80, 80, 100, },
					ground_color = { 70, 60, 80, },
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
					diffuse_color = { 190, 170, 210 },
					gloss = 16.0,
					sky_color = { 100, 100, 130, },
					ground_color = { 40, 30, 50, },
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
		 anim_range = 1000 * METER,
		 -- ワープホールの為に、天球の描画順を変更する ukai
		 sky_opa_draw_first = true,
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
		 source_light = { -6000.0, -4500.0, 6500.0 },
	  },
   },

   -- 影色
   {
	  name = "CShadowManager",
	  params = {
		 color = { 0, 0, 10 },
		 alpha = 90,
	  },
   }, 
}
