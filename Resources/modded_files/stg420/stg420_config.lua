---------------------------------------------------------------
-- @file	stg420_config.lua
-- @author	Miura Yoshitaka <Miura_Yoshitaka@sega.co.jp>
-- @brief	stg420 の設定ファイル
-- @data	2010/6/26 更新
---------------------------------------------------------------

METER = 10.0

---------------------------------------------------------------

   -- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
   dead_line = -150.0 * METER

   -- カメラ設定.
   camera = {

   near = 0.1 * METER,
   far = 1500.0 * METER,
   fov = 60,
   }

   -- リザルト位置
   result_pos = { 0, 0, -3000 }

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
			-- 点光源パラメータ
			llight_frustum_far = 5000.0,
			llight_anim_speed_scale = 0.5,

			-- 環境光
			ambient_color = { 150, 170, 170 },
			
			-- 平行光色、半球ライト色
			lfield_params = {
				{
					index = 1,
					diffuse_color = { 170, 180, 180 },
					gloss = 16.0,
					sky_color = { 110, 120, 130, },
					ground_color = { 70, 80, 70, },
				},
				{
					index = 2,
					diffuse_color = { 60, 70, 50 },
					gloss = 16.0,
					sky_color = { 40, 60, 50, },
					ground_color = { 105, 115, 100, },
				},
				{
					index = 3,
					diffuse_color = { 240, 225, 225 },
					gloss = 16.0,
					sky_color = { 230, 210, 210, },
					ground_color = { 110, 90, 90, },
				},
				{
					index = 4,
					diffuse_color = { 100, 60, 50 },
					gloss = 16.0,
					sky_color = { 50, 50, 30, },
					ground_color = { 130, 90, 80, },
				},
				{
					index = 5,
					diffuse_color = { 95, 85, 80 },
					gloss = 16.0,
					sky_color = { 50, 40, 40, },
					ground_color = { 35, 30, 30, },
				},
				{
					index = 6,
					diffuse_color = { 145, 130, 130 },
					gloss = 32.0,
					sky_color = { 115, 100, 100, },
					ground_color = { 85, 70, 70, },
				},
				{
					index = 7,
					diffuse_color = { 170, 180, 180 },
					gloss = 16.0,
					sky_color = { 110, 120, 130, },
					ground_color = { 70, 80, 70, },
				},
				{
					index = 8,
					diffuse_color = { 255, 255, 255 },
					gloss = 32.0,
					sky_color = { 255, 255, 255, },
					ground_color = { 255, 255, 255, },
				},
			},
		},
	},

   {
	-- 地形
	  name = "CTerrainManager",
	  params = {
		 yfollow = true,
		 yoffset = -100.0 * METER,
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
		 start_z = 10.0 * METER,
		 end_z = 500.0 * METER,
		 color = { 10, 70, 140 },
	  },
   },

   -- レンズフレア
   {
	  name = "CLensFlareManager",
	  params = {
		 source_light = { -6000.0, 5000.0, 9000.0 },
	  },
   },

	-- 草
	{
		name = "CGrassManager",
		params = {
			use_grass = true,
			max_bundle = 550,
			max_modified = 20,
			color_base = { 255, 255, 255 },
			color_scale = { 30, 50, 60 },
			shadow_color = { 50, 80, 100 },
			wavedir_scale = 1,
			wavespeed_scale = 0.5,
			wavedistort_scale =0.4,
			use_lod = true,
			lod1_distance = 1000.0,
			lod2_distance = 2800.0,
			mesh_distance = 100000.0,
			disp_distance = 100000.0,
			fade_range = 4000.0,
		},
	},
}
