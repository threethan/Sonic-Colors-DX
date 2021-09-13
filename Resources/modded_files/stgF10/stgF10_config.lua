---------------------------------------------------------------
-- @file	stgF10_config.lua
-- @author	Miura Yoshitaka <Miura_Yoshitaka@sega.co.jp>
-- @brief	stgF10 の設定ファイル 2010/04/03
---------------------------------------------------------------

METER = 10.0

---------------------------------------------------------------

 -- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -500.0 * METER

 -- カメラ設定.
camera = {

   near = 0.1 * METER,
   far = 2700.0 * METER,
   fov = 60,
}

 -- サービスのリスト.
services = {

 -- グレア
   {
	  name = "CGlareManager",
	  params = {
		 ev = 0.87,
		 brightpass = 2.00,
	  },
   },

 -- 地形
   {
	  name = "CTerrainManager",
	  params = {
		 yfollow = true,
		 yoffset = 0.0 * METER,
	  },
   },

 -- ライト
	{
		name = "CLightManager",
		params = {
			-- 環境光
			ambient_color = { 120, 120, 120 },
			
			-- 地形ライト
			terrain_light = 1,
			
			-- オブジェクトデフォルトライト
			object_light = 1,
			
			-- 平行光色、半球ライト色
			lfield_params = {
				{
					index = 1,
					diffuse_color = { 150, 190, 200 },
					gloss = 16.0,
					sky_color = { 170, 200, 230, },
					ground_color = { 50, 70, 80, },
				},
				{
					index = 2,
					diffuse_color = { 70, 90, 85 },
					gloss = 16.0,
					sky_color = { 255, 255, 255, },
					ground_color = { 255, 255, 255, },
				},

			},

			-- 点光源パラメータ
			llight_frustum_far = 5000.0,
			llight_anim_speed_scale = 0.5,
		},
	},

 -- フォグ
   {
	  name = "CFogManager",
	  params = {
		 type = "linear",
		 start_z = 18.0 * METER,
		 end_z = 2700.0 * METER,
		 color = { 0, 90, 180 },
	  },
   },

 -- パス
   {
	  name = "CPathManager",
	  params = {
		 debug_collision = false,
	  },
   },

}
