---------------------------------------------------------------
-- @file	stg790_config.lua
-- @author	
-- @brief	stg790 の設定ファイル
-- @data	2010/3/2
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -100.0 * METER

-- カメラ設定.
camera = {

   near = 0.1 * METER,
   far = 50000.0 * METER,
   fov = 60,
}

-- サービスのリスト.
services = {

	-- グレア
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.05,
		 brightpass = 2.98,
	  },
   },

	-- ライト
	{
		name = "CLightManager",
		params = {
			-- 環境光
			ambient_color = { 170, 170, 170 },
			
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

			},
		},
	},

   {
	-- 地形
	  name = "CTerrainManager",
	  params = {
		 yfollow = true,
		 yoffset = 0.0 * METER,
		 far = 50000.0 * METER,
		 -- near = 0.35 * METER,
		 -- clip0 = 5000.0 * METER,
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
		 start_z = 0.0 * METER,
		 end_z = 1500.0 * METER,
		 color = { 0, 0, 0 },
	  },
   },

   -- 影色
   {
	  name = "CShadowManager",
	  params = {
		 color = { 0, 10, 40 },
		 alpha = 140,
	  },
   }, 

}
