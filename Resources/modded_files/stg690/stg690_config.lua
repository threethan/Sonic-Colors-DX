---------------------------------------------------------------
-- @file	stg690_config.lua
-- @author	Miura Yoshitaka <Miura_Yoshitaka@sega.co.jp>
-- @brief	stg690 の設定ファイル
-- @data	2010/6/10
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -50.0 * METER

-- カメラ設定.
camera = {

   near = 0.1 * METER,
   far = 1700.0 * METER,
   fov = 60,
}

-- サービスのリスト.
services = {

	-- グレア
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.15,
		 brightpass = 2.95,
	  },
   },

	-- ライト
	{
		name = "CLightManager",
		params = {
			-- 環境光
			ambient_color = { 130, 90, 120 },
			
			-- 平行光色、半球ライト色
			lfield_params = {
				{
					index = 1,
					diffuse_color = { 170, 150, 190 },
					gloss = 16.0,
					sky_color = { 140, 120, 150, },
					ground_color = { 100, 80, 100, },
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
		 start_z = 100.0 * METER,
		 end_z = 1300.0 * METER,
		 color = { 16, 10, 35 },
	  },
   },

   -- レンズフレア
   {
	  name = "CLensFlareManager",
	  params = {
		 source_light = { -3670.0, -3100.0, -13680.0 },
	  },
   },

   -- 影色
   {
	  name = "CShadowManager",
	  params = {
		 color = { 10, 0, 10 },
		 alpha = 90,
	  },
   }, 
}
